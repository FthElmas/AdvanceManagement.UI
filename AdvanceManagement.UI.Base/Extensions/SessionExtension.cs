using System.Text.Json;

namespace AdvanceManagement.UI.Base.Extensions
{
    public static class SessionExtension
    {
        public static void SetSession<T>(this ISession session, string key, T value)
        {
            session.SetString(key, JsonSerializer.Serialize(value));
        }

        public static T? GetSession<T>(this ISession session, string key)
        {
            var value = session.GetString(key);
            return value == null ? default : JsonSerializer.Deserialize<T>(value);
        }

        public static void RemoveSession(this ISession session, string key)
        {
            session.Remove(key);
        }
    }
}
