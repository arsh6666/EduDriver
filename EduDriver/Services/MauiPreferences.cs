using Volo.Abp.DependencyInjection;
using IPreferences = Rootfly.Mobile.Core.Storage.Preferences.IPreferences;

namespace EduDriver.Services;

public class MauiPreferences : IPreferences, ISingletonDependency
{
    public T Get<T>(string key, T defaultValue = default!)
    {
        if (typeof(T) == typeof(string))
            return (T)(object)Microsoft.Maui.Storage.Preferences.Default.Get(key, (string)(object)defaultValue!);

        if (typeof(T) == typeof(int))
            return (T)(object)Microsoft.Maui.Storage.Preferences.Default.Get(key, (int)(object)defaultValue!);

        if (typeof(T) == typeof(bool))
            return (T)(object)Microsoft.Maui.Storage.Preferences.Default.Get(key, (bool)(object)defaultValue!);

        if (typeof(T) == typeof(double))
            return (T)(object)Microsoft.Maui.Storage.Preferences.Default.Get(key, (double)(object)defaultValue!);

        return defaultValue;
    }

    public void Set<T>(string key, T value)
    {
        switch (value)
        {
            case string s:
                Microsoft.Maui.Storage.Preferences.Default.Set(key, s);
                break;
            case int i:
                Microsoft.Maui.Storage.Preferences.Default.Set(key, i);
                break;
            case bool b:
                Microsoft.Maui.Storage.Preferences.Default.Set(key, b);
                break;
            case double d:
                Microsoft.Maui.Storage.Preferences.Default.Set(key, d);
                break;
        }
    }

    public void Remove(string key) => Microsoft.Maui.Storage.Preferences.Default.Remove(key);

    public bool ContainsKey(string key) => Microsoft.Maui.Storage.Preferences.Default.ContainsKey(key);

    public void Clear() => Microsoft.Maui.Storage.Preferences.Default.Clear();
}
