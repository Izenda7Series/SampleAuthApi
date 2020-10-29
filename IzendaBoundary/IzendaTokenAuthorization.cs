using Microsoft.Extensions.Configuration;
using SampleAuthAPI.IzendaBoundary.Models;
using System;
using System.IO;

namespace SampleAuthAPI.IzendaBoundary
{
    public class IzendaTokenAuthorization
    {
        #region Constants
        private const string KEY = "THISISKEY1234567"; //must be at least 16 characters long (128 bits) 
     
        private readonly static string IzendaAdminUserName = "IzendaAdmin@system.com";
        #endregion

        #region Methods
        /// <summary>
        /// Generate token from UserInfo. Userinfo will be encrypted before sending to Izenda.
        /// </summary>
        public static string GetToken(UserInfo user)
        {
            // remove tenant property when sending token to Izenda, if Tenant is System.
            if (user.TenantUniqueName == "System")
                user.TenantUniqueName = null;

            var serializedObject = Newtonsoft.Json.JsonConvert.SerializeObject(user);
            var token = StringCipher.Encrypt(serializedObject, KEY);

            return token;
        }

        /// <summary>
        /// Get User info from token. Token, which recieved from Izenda, will be decrypted to get user info.
        /// </summary>
        public static UserInfo GetUserInfo(string token)
        {
            var serializedObject = StringCipher.Decrypt(token, KEY);
            var user = Newtonsoft.Json.JsonConvert.DeserializeObject<UserInfo>(serializedObject);
            return user;
        }

        /// <summary>
        /// Get the token for IzendaAdmin user, to communicate with Izenda to process when user has not been logged in.
        /// </summary>
        public static string GetIzendaAdminToken() => GetToken(new UserInfo { UserName = IzendaAdminUserName });

        public static UserInfo DecryptIzendaAuthenticationMessage(string encryptedMessage)
        {
            IConfigurationRoot configuration = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();

            string rsaPrivateKey = "MIICWwIBAAKBgQCN5V2itI9eeTS4+muEq9tEdrpR4Zzxd/78xCDdZJUxzN8BwShbZX92JEdq2Wt4DBWiHXX5ZLEpOJnN0YtXhyDgWOQEyc+FzR1bVn1WByfiZqPm1xjhL4J6TSEcLtwm3AEDXRKGEj2wivif1Mhr/3PE0tNKI3osyLh/fQXpUkgM8QIDAQABAoGAFVLBCfjZTKipOB0FuEe9KSIwaKqfU5glPOXaTHrXgsbXQmO9BVMQ3veftdpbcIxcWeLUfjhX+SpUzp2tM2eOlH4MkD87361vCTId8IcOahEQ6wpSgIM7+c3l1ibUenzJ9+cgnD6RF3aMadUcE5gJ7xYhgAdMXIcJZh1CIEfplNMCQQDjIyP1C5SFt1njb8t+tZjBw/M7BIE6I3X/blfuVl/T3ulJjIbyCdSOsuVchJ8XwAwrumhOHPlAk/V0chAlzJhvAkEAn+1LQUlRqz+EuifKh6RjNZ8oxhWgeA4pfa3g5JQ/bZnm/vZEZQnW7Q5kA4duVizMFNc+YGu5Ln30NtBzrhCgnwJAcDVT9iKaZNSHW4xHA3nC1TZwWp+HF6mdCWsBlYSmIozkwqjhoYCpuTU3idUaoykE2jVkgfJeUEDH6ZbP01yXkQJAGE4P6dQivUvh+AikFwk8qqGNqM0Qni5Iz/jk/Ngq65VALe9vZYuhRlWxjXe/pQkZ2vD7Ydv9QLuTqeD0M7gDMQJAHQ8mQO+ouXYqZ9/1AA1rlUuEpZTpZ2n9ZJ4UgfTjTLcVhzuZ1lKmrd3JngMCkz4hOMzd1wcASMbT1KOHF5hwlw==";
//            string rsaPrivateKey = Configuration["Jwt:Key"];
//configuration.GetValue<string>("AppSettings:Settings:rsaPrivateKey");
            var cipher = new System.Security.Cryptography.RSACryptoServiceProvider();

            //Decrypt using RSA private key in PEM format.
            var rsaParam = ConvertPemToXmlFormat(rsaPrivateKey);
            cipher.ImportParameters(rsaParam);
            //End

            var resultBytes = Convert.FromBase64String(encryptedMessage);
            var decryptedBytes = cipher.Decrypt(resultBytes, false);
            var decryptedData = System.Text.Encoding.UTF8.GetString(decryptedBytes);

            var result = Newtonsoft.Json.JsonConvert.DeserializeObject<UserInfo>(decryptedData);

            return result;
        }

        //Support to convert RSA key from PEM to XML, currently RSACryptoServiceProvider only support XML format.
        private static System.Security.Cryptography.RSAParameters ConvertPemToXmlFormat(string privateKey)
        {
            var privateKeyBits = Convert.FromBase64String(privateKey);

            var rsaParams = new System.Security.Cryptography.RSAParameters();

            using (var binr = new BinaryReader(new MemoryStream(privateKeyBits)))
            {
                byte bt = 0;
                ushort twobytes = 0;
                twobytes = binr.ReadUInt16();
                if (twobytes == 0x8130)
                    binr.ReadByte();
                else if (twobytes == 0x8230)
                    binr.ReadInt16();
                else
                    throw new Exception("Unexpected value read binr.ReadUInt16()");

                twobytes = binr.ReadUInt16();
                if (twobytes != 0x0102)
                    throw new Exception("Unexpected version");

                bt = binr.ReadByte();
                if (bt != 0x00)
                    throw new Exception("Unexpected value read binr.ReadByte()");

                rsaParams.Modulus = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.Exponent = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.D = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.P = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.Q = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.DP = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.DQ = binr.ReadBytes(GetIntegerSize(binr));
                rsaParams.InverseQ = binr.ReadBytes(GetIntegerSize(binr));
            }

            return rsaParams;
        }

        private static int GetIntegerSize(BinaryReader binr)
        {
            byte bt = 0;
            byte lowbyte = 0x00;
            byte highbyte = 0x00;
            int count = 0;
            bt = binr.ReadByte();
            if (bt != 0x02)
                return 0;
            bt = binr.ReadByte();

            if (bt == 0x81)
                count = binr.ReadByte();
            else
                if (bt == 0x82)
            {
                highbyte = binr.ReadByte();
                lowbyte = binr.ReadByte();
                byte[] modint = { lowbyte, highbyte, 0x00, 0x00 };
                count = BitConverter.ToInt32(modint, 0);
            }
            else
            {
                count = bt;
            }

            while (binr.ReadByte() == 0x00)
            {
                count -= 1;
            }
            binr.BaseStream.Seek(-1, SeekOrigin.Current);
            return count;
        } 
        #endregion
    }
}
