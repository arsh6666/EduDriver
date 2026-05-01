; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [452 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1356 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 400
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 373
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x018d2cc5e2de2b95, ; 4: lib_Microsoft.AspNetCore.SignalR.Common.dll.so => 203
	i64 u0x02123411c4e01926, ; 5: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 361
	i64 u0x022e81ea9c46e03a, ; 6: lib_CommunityToolkit.Maui.Core.dll.so => 185
	i64 u0x022f31be406de945, ; 7: Microsoft.Extensions.Options.ConfigurationExtensions => 242
	i64 u0x0267a23d1d16b660, ; 8: Nito.AsyncEx.Context.dll => 258
	i64 u0x0284512fad379f7e, ; 9: System.Runtime.Handles => 107
	i64 u0x02a4c5a44384f885, ; 10: Microsoft.Extensions.Caching.Memory => 208
	i64 u0x02abedc11addc1ed, ; 11: lib_Mono.Android.Runtime.dll.so => 174
	i64 u0x02f55bf70672f5c8, ; 12: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 13: lib_Xamarin.AndroidX.AppCompat.dll.so => 314
	i64 u0x03621c804933a890, ; 14: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 15: SQLitePCLRaw.provider.e_sqlite3.dll => 273
	i64 u0x0399610510a38a38, ; 16: lib_System.Private.DataContractSerialization.dll.so => 88
	i64 u0x043032f1d071fae0, ; 17: ru/Microsoft.Maui.Controls.resources => 428
	i64 u0x044440a55165631e, ; 18: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 406
	i64 u0x046eb1581a80c6b0, ; 19: vi/Microsoft.Maui.Controls.resources => 434
	i64 u0x0470607fd33c32db, ; 20: Microsoft.IdentityModel.Abstractions.dll => 248
	i64 u0x047408741db2431a, ; 21: Xamarin.AndroidX.DynamicAnimation => 334
	i64 u0x0517ef04e06e9f76, ; 22: System.Net.Primitives => 72
	i64 u0x051a3be159e4ef99, ; 23: Xamarin.GooglePlayServices.Tasks => 393
	i64 u0x0565d18c6da3de38, ; 24: Xamarin.AndroidX.RecyclerView => 365
	i64 u0x0581db89237110e9, ; 25: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 26: Microsoft.Maui.dll => 255
	i64 u0x05a1c25e78e22d87, ; 27: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 104
	i64 u0x06076b5d2b581f08, ; 28: zh-HK/Microsoft.Maui.Controls.resources => 435
	i64 u0x06388ffe9f6c161a, ; 29: System.Xml.Linq.dll => 159
	i64 u0x06559068237be8c3, ; 30: Microsoft.Extensions.Http.Resilience.dll => 233
	i64 u0x06600c4c124cb358, ; 31: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 32: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 339
	i64 u0x0680a433c781bb3d, ; 33: Xamarin.AndroidX.Collection.Jvm => 321
	i64 u0x0690533f9fc14683, ; 34: lib_Microsoft.AspNetCore.Components.dll.so => 192
	i64 u0x069fff96ec92a91d, ; 35: System.Xml.XPath.dll => 164
	i64 u0x070b0847e18dab68, ; 36: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 336
	i64 u0x0739448d84d3b016, ; 37: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 377
	i64 u0x07469f2eecce9e85, ; 38: mscorlib.dll => 170
	i64 u0x07c57877c7ba78ad, ; 39: ru/Microsoft.Maui.Controls.resources.dll => 428
	i64 u0x07dcdc7460a0c5e4, ; 40: System.Collections.NonGeneric => 10
	i64 u0x080269a5cc9b13c0, ; 41: lib_Castle.Core.AsyncInterceptor.dll.so => 183
	i64 u0x08122e52765333c8, ; 42: lib_Microsoft.Extensions.Logging.Debug.dll.so => 239
	i64 u0x083f998a16f79f6e, ; 43: Volo.Abp.Mapperly.dll => 293
	i64 u0x088610fc2509f69e, ; 44: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 378
	i64 u0x08a7c865576bbde7, ; 45: System.Reflection.Primitives => 98
	i64 u0x08c9d051a4a817e5, ; 46: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 332
	i64 u0x08f3c9788ee2153c, ; 47: Xamarin.AndroidX.DrawerLayout => 333
	i64 u0x09138715c92dba90, ; 48: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 49: lib_Microsoft.Extensions.Options.dll.so => 241
	i64 u0x092266563089ae3e, ; 50: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x098b50f911ccea8d, ; 51: lib_Xamarin.GooglePlayServices.Basement.dll.so => 391
	i64 u0x09b1feb9d4fd1a34, ; 52: Volo.Abp.Threading.dll => 300
	i64 u0x09d144a7e214d457, ; 53: System.Security.Cryptography => 129
	i64 u0x09e2b9f743db21a8, ; 54: lib_System.Reflection.Metadata.dll.so => 97
	i64 u0x0a805f95d98f597b, ; 55: lib_Microsoft.Extensions.Caching.Abstractions.dll.so => 207
	i64 u0x0abb3e2b271edc45, ; 56: System.Threading.Channels.dll => 143
	i64 u0x0aca550a44e4e174, ; 57: lib_Volo.Abp.ObjectExtending.dll.so => 296
	i64 u0x0b06b1feab070143, ; 58: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 59: sk/Microsoft.Maui.Controls.resources => 429
	i64 u0x0b6aff547b84fbe9, ; 60: Xamarin.KotlinX.Serialization.Core.Jvm => 403
	i64 u0x0b74b547d9e0e85d, ; 61: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 204
	i64 u0x0be2e1f8ce4064ed, ; 62: Xamarin.AndroidX.ViewPager => 380
	i64 u0x0c279376b1ae96ae, ; 63: lib_System.CodeDom.dll.so => 274
	i64 u0x0c3ca6cc978e2aae, ; 64: pt-BR/Microsoft.Maui.Controls.resources => 425
	i64 u0x0c40fb640856401f, ; 65: lib_Riok.Mapperly.Abstractions.dll.so => 265
	i64 u0x0c59ad9fbbd43abe, ; 66: Mono.Android => 175
	i64 u0x0c65741e86371ee3, ; 67: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 308
	i64 u0x0c74af560004e816, ; 68: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c768594302ef043, ; 69: Volo.Abp.Settings.dll => 299
	i64 u0x0c7790f60165fc06, ; 70: lib_Microsoft.Maui.Essentials.dll.so => 256
	i64 u0x0c83c82812e96127, ; 71: lib_System.Net.Mail.dll.so => 68
	i64 u0x0cce4bce83380b7f, ; 72: Xamarin.AndroidX.Security.SecurityCrypto => 370
	i64 u0x0d0aceef39cc9d3d, ; 73: Volo.Abp.Auditing.Contracts.dll => 282
	i64 u0x0d13cd7cce4284e4, ; 74: System.Security.SecureString => 132
	i64 u0x0d3b5ab8b2766190, ; 75: lib_Microsoft.Bcl.AsyncInterfaces.dll.so => 205
	i64 u0x0d63f4f73521c24f, ; 76: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 369
	i64 u0x0da13792b76f89bf, ; 77: lib_Microsoft.Extensions.Configuration.UserSecrets.dll.so => 217
	i64 u0x0de7e41a5302b5c0, ; 78: lib_Volo.Abp.MultiTenancy.Abstractions.dll.so => 295
	i64 u0x0e04e702012f8463, ; 79: Xamarin.AndroidX.Emoji2 => 335
	i64 u0x0e14e73a54dda68e, ; 80: lib_System.Net.NameResolution.dll.so => 69
	i64 u0x0eae9eda7720a8db, ; 81: lib_Sentry.dll.so => 266
	i64 u0x0f37dd7a62ae99af, ; 82: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 322
	i64 u0x0f5e7abaa7cf470a, ; 83: System.Net.HttpListener => 67
	i64 u0x1001f97bbe242e64, ; 84: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102861e4055f511a, ; 85: Microsoft.Bcl.AsyncInterfaces.dll => 205
	i64 u0x102a31b45304b1da, ; 86: Xamarin.AndroidX.CustomView => 331
	i64 u0x1065c4cb554c3d75, ; 87: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 88: System.IO.Compression.Brotli => 43
	i64 u0x1140109eb2e77ceb, ; 89: Microsoft.Extensions.ObjectPool.dll => 240
	i64 u0x114443cdcf2091f1, ; 90: System.Security.Cryptography.Primitives => 127
	i64 u0x11a603952763e1d4, ; 91: System.Net.Mail => 68
	i64 u0x11a70d0e1009fb11, ; 92: System.Net.WebSockets.dll => 83
	i64 u0x11d2116dcde4ac64, ; 93: Rootfly.Mobile.Core.Diagnostics.dll => 440
	i64 u0x11e184db0c82f3b4, ; 94: JetBrains.Annotations.dll => 189
	i64 u0x11f26371eee0d3c1, ; 95: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 350
	i64 u0x12128b3f59302d47, ; 96: lib_System.Xml.Serialization.dll.so => 161
	i64 u0x123639456fb056da, ; 97: System.Reflection.Emit.Lightweight.dll => 94
	i64 u0x124f38a5d8cb5fb8, ; 98: K4os.Compression.LZ4.dll => 190
	i64 u0x12521e9764603eaa, ; 99: lib_System.Resources.Reader.dll.so => 101
	i64 u0x125b7f94acb989db, ; 100: Xamarin.AndroidX.RecyclerView.dll => 365
	i64 u0x12d3b63863d4ab0b, ; 101: lib_System.Threading.Overlapped.dll.so => 144
	i64 u0x134eab1061c395ee, ; 102: System.Transactions => 154
	i64 u0x138567fa954faa55, ; 103: Xamarin.AndroidX.Browser => 318
	i64 u0x139dca7a3cd0a777, ; 104: Microsoft.Extensions.Telemetry => 245
	i64 u0x13a01de0cbc3f06c, ; 105: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 412
	i64 u0x13beedefb0e28a45, ; 106: lib_System.Xml.XmlDocument.dll.so => 165
	i64 u0x13f1e5e209e91af4, ; 107: lib_Java.Interop.dll.so => 172
	i64 u0x13f1e880c25d96d1, ; 108: he/Microsoft.Maui.Controls.resources => 413
	i64 u0x143d8ea60a6a4011, ; 109: Microsoft.Extensions.DependencyInjection.Abstractions => 219
	i64 u0x1497051b917530bd, ; 110: lib_System.Net.WebSockets.dll.so => 83
	i64 u0x14d612a531c79c05, ; 111: Xamarin.JSpecify.dll => 395
	i64 u0x14e68447938213b7, ; 112: Xamarin.AndroidX.Collection.Ktx.dll => 322
	i64 u0x15089560460fb845, ; 113: Microsoft.AspNetCore.SignalR.Client.Core => 202
	i64 u0x152a448bd1e745a7, ; 114: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 115: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x159cc6c81072f00e, ; 116: lib_System.Diagnostics.EventLog.dll.so => 275
	i64 u0x15bdc156ed462f2f, ; 117: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 118: System.Resources.Writer.dll => 103
	i64 u0x162d0b0c19aa2681, ; 119: lib_Rootfly.Mobile.Core.Notifications.dll.so => 444
	i64 u0x16bf2a22df043a09, ; 120: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 121: System.Security.Cryptography.Algorithms => 122
	i64 u0x16eeae54c7ebcc08, ; 122: System.Reflection.dll => 100
	i64 u0x17125c9a85b4929f, ; 123: lib_netstandard.dll.so => 171
	i64 u0x1716866f7416792e, ; 124: lib_System.Security.AccessControl.dll.so => 120
	i64 u0x174f71c46216e44a, ; 125: Xamarin.KotlinX.Coroutines.Core => 400
	i64 u0x1752c12f1e1fc00c, ; 126: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 127: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 416
	i64 u0x17f9358913beb16a, ; 128: System.Text.Encodings.Web => 139
	i64 u0x1805f780a2be57b5, ; 129: Polly.Core.dll => 262
	i64 u0x1809fb23f29ba44a, ; 130: lib_System.Reflection.TypeExtensions.dll.so => 99
	i64 u0x18402a709e357f3b, ; 131: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 403
	i64 u0x18a9befae51bb361, ; 132: System.Net.WebClient => 79
	i64 u0x18f0ce884e87d89a, ; 133: nb/Microsoft.Maui.Controls.resources.dll => 422
	i64 u0x1960eea18caf055c, ; 134: lib_Volo.Abp.Localization.Abstractions.dll.so => 292
	i64 u0x19777fba3c41b398, ; 135: Xamarin.AndroidX.Startup.StartupRuntime.dll => 372
	i64 u0x19a4c090f14ebb66, ; 136: System.Security.Claims => 121
	i64 u0x19b2b16b97bf1a31, ; 137: lib_Microsoft.Extensions.Telemetry.dll.so => 245
	i64 u0x1a79c407d262ad4b, ; 138: Rootfly.Mobile.Core.Notifications.dll => 444
	i64 u0x1a91866a319e9259, ; 139: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 140: lib_System.dll.so => 168
	i64 u0x1aad60783ffa3e5b, ; 141: lib-th-Microsoft.Maui.Controls.resources.dll.so => 431
	i64 u0x1aea8f1c3b282172, ; 142: lib_System.Net.Ping.dll.so => 71
	i64 u0x1b4b7a1d0d265fa2, ; 143: Xamarin.Android.Glide.DiskLruCache => 307
	i64 u0x1b8700ce6e547c0b, ; 144: lib_Microsoft.AspNetCore.Components.Forms.dll.so => 193
	i64 u0x1bbdb16cfa73e785, ; 145: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 351
	i64 u0x1bc766e07b2b4241, ; 146: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 366
	i64 u0x1c292b1598348d77, ; 147: Microsoft.Extensions.Diagnostics.dll => 221
	i64 u0x1c5217a9e4973753, ; 148: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 228
	i64 u0x1c753b5ff15bce1b, ; 149: Mono.Android.Runtime.dll => 174
	i64 u0x1cd47467799d8250, ; 150: System.Threading.Tasks.dll => 148
	i64 u0x1d23eafdc6dc346c, ; 151: System.Globalization.Calendars.dll => 40
	i64 u0x1da4110562816681, ; 152: Xamarin.AndroidX.Security.SecurityCrypto.dll => 370
	i64 u0x1db6820994506bf5, ; 153: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 154: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 155: Xamarin.AndroidX.Navigation.UI => 363
	i64 u0x1e71143913d56c10, ; 156: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 420
	i64 u0x1e712b28397656df, ; 157: Rootfly.Mobile.Core.Offline.dll => 445
	i64 u0x1e7c31185e2fb266, ; 158: lib_System.Threading.Tasks.Parallel.dll.so => 147
	i64 u0x1e865fa1feb4791f, ; 159: System.Threading.RateLimiting => 279
	i64 u0x1ed8fcce5e9b50a0, ; 160: Microsoft.Extensions.Options.dll => 241
	i64 u0x1f055d15d807e1b2, ; 161: System.Xml.XmlSerializer => 166
	i64 u0x1f1ed22c1085f044, ; 162: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 163: lib_System.Numerics.dll.so => 86
	i64 u0x1f6fc92d7360be95, ; 164: Sentry.Android.AssemblyReader.dll => 267
	i64 u0x1f750bb5421397de, ; 165: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 374
	i64 u0x20237ea48006d7a8, ; 166: lib_System.Net.WebClient.dll.so => 79
	i64 u0x204b5c2f41a3c4c8, ; 167: Volo.Abp.EventBus.Abstractions => 287
	i64 u0x209375905fcc1bad, ; 168: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 169: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x210c5bb16b7260a2, ; 170: lib_Microsoft.Extensions.Validation.dll.so => 247
	i64 u0x2110167c128cba15, ; 171: System.Globalization => 42
	i64 u0x21419508838f7547, ; 172: System.Runtime.CompilerServices.VisualC => 105
	i64 u0x2174319c0d835bc9, ; 173: System.Runtime => 119
	i64 u0x2198e5bc8b7153fa, ; 174: Xamarin.AndroidX.Annotation.Experimental.dll => 312
	i64 u0x219ea1b751a4dee4, ; 175: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 176: System.Reflection.Emit.ILGeneration => 93
	i64 u0x220fd4f2e7c48170, ; 177: th/Microsoft.Maui.Controls.resources => 431
	i64 u0x224538d85ed15a82, ; 178: System.IO.Pipes => 56
	i64 u0x22608bc1b263d361, ; 179: lib_JetBrains.Annotations.dll.so => 189
	i64 u0x22908438c6bed1af, ; 180: lib_System.Threading.Timer.dll.so => 151
	i64 u0x2347c268e3e4e536, ; 181: Xamarin.GooglePlayServices.Basement.dll => 391
	i64 u0x234b2420fe4b9bdc, ; 182: lib_K4os.Compression.LZ4.dll.so => 190
	i64 u0x237af33c23ae63ff, ; 183: lib_Volo.Abp.Auditing.Contracts.dll.so => 282
	i64 u0x237be844f1f812c7, ; 184: System.Threading.Thread.dll => 149
	i64 u0x23852b3bdc9f7096, ; 185: System.Resources.ResourceManager => 102
	i64 u0x23986dd7e5d4fc01, ; 186: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 187: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 188: Xamarin.AndroidX.Core.dll => 327
	i64 u0x240d7c4e408ddba4, ; 189: lib_Volo.Abp.EventBus.Abstractions.dll.so => 287
	i64 u0x24441218506eabcc, ; 190: lib_Sentry.Bindings.Android.dll.so => 268
	i64 u0x247619fe4413f8bf, ; 191: System.Runtime.Serialization.Primitives.dll => 116
	i64 u0x24de8d301281575e, ; 192: Xamarin.Android.Glide => 305
	i64 u0x252073cc3caa62c2, ; 193: fr/Microsoft.Maui.Controls.resources.dll => 412
	i64 u0x256b8d41255f01b1, ; 194: Xamarin.Google.Crypto.Tink.Android => 387
	i64 u0x25a0a7eff76ea08e, ; 195: SQLitePCLRaw.batteries_v2.dll => 270
	i64 u0x25afa542817e1749, ; 196: Volo.Abp.Threading => 300
	i64 u0x25e8c31a04b2e379, ; 197: Volo.Abp.Json.Abstractions.dll => 289
	i64 u0x2662c629b96b0b30, ; 198: lib_Xamarin.Kotlin.StdLib.dll.so => 396
	i64 u0x268c1439f13bcc29, ; 199: lib_Microsoft.Extensions.Primitives.dll.so => 243
	i64 u0x268f3997e8235f24, ; 200: Autofac => 179
	i64 u0x26a670e154a9c54b, ; 201: System.Reflection.Extensions.dll => 96
	i64 u0x26d077d9678fe34f, ; 202: System.IO.dll => 58
	i64 u0x270a44600c921861, ; 203: System.IdentityModel.Tokens.Jwt => 276
	i64 u0x273f3515de5faf0d, ; 204: id/Microsoft.Maui.Controls.resources.dll => 417
	i64 u0x2742545f9094896d, ; 205: hr/Microsoft.Maui.Controls.resources => 415
	i64 u0x27458c1163a5ce22, ; 206: Microsoft.Extensions.Validation => 247
	i64 u0x274d85d83ad40513, ; 207: lib_Xamarin.AndroidX.Window.WindowCore.dll.so => 383
	i64 u0x2759af78ab94d39b, ; 208: System.Net.WebSockets => 83
	i64 u0x27b2b16f3e9de038, ; 209: Xamarin.Google.Crypto.Tink.Android.dll => 387
	i64 u0x27b410442fad6cf1, ; 210: Java.Interop.dll => 172
	i64 u0x27b97e0d52c3034a, ; 211: System.Diagnostics.Debug => 26
	i64 u0x27eb21c6eb99d774, ; 212: Xamarin.Kotlin.StdLib.Jdk8.dll => 398
	i64 u0x2801845a2c71fbfb, ; 213: System.Net.Primitives.dll => 72
	i64 u0x286835e259162700, ; 214: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 364
	i64 u0x28e52865585a1ebe, ; 215: Microsoft.Extensions.Diagnostics.Abstractions.dll => 222
	i64 u0x2949f3617a02c6b2, ; 216: Xamarin.AndroidX.ExifInterface => 337
	i64 u0x29aeab763a527e52, ; 217: lib_Xamarin.AndroidX.Navigation.Common.Android.dll.so => 359
	i64 u0x29d46668a29fc332, ; 218: lib_Volo.Abp.Threading.dll.so => 300
	i64 u0x2a128783efe70ba0, ; 219: uk/Microsoft.Maui.Controls.resources.dll => 433
	i64 u0x2a3b095612184159, ; 220: lib_System.Net.NetworkInformation.dll.so => 70
	i64 u0x2a6507a5ffabdf28, ; 221: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 222: fi/Microsoft.Maui.Controls.resources => 411
	i64 u0x2ad5d6b13b7a3e04, ; 223: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 224: System.Text.RegularExpressions.dll => 141
	i64 u0x2af615542f04da50, ; 225: System.IdentityModel.Tokens.Jwt.dll => 276
	i64 u0x2afc1c4f898552ee, ; 226: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 227: zh-Hant/Microsoft.Maui.Controls.resources.dll => 437
	i64 u0x2b4d4904cebfa4e9, ; 228: Microsoft.Extensions.FileSystemGlobbing => 229
	i64 u0x2b6989d78cba9a15, ; 229: Xamarin.AndroidX.Concurrent.Futures.dll => 323
	i64 u0x2bcd84fd6d4013e3, ; 230: Castle.Core.AsyncInterceptor.dll => 183
	i64 u0x2bfa01d43fd981a2, ; 231: Volo.Abp.Castle.Core.dll => 284
	i64 u0x2c52b6785191227e, ; 232: lib_Microsoft.Extensions.Logging.Configuration.dll.so => 238
	i64 u0x2c80d670a60b7dfc, ; 233: Controls.UserDialogs.Maui.dll => 187
	i64 u0x2c8bd14bb93a7d82, ; 234: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 424
	i64 u0x2cb5e258898ad27b, ; 235: Volo.Abp.Security.dll => 298
	i64 u0x2cbd9262ca785540, ; 236: lib_System.Text.Encoding.CodePages.dll.so => 136
	i64 u0x2cc9e1fed6257257, ; 237: lib_System.Reflection.Emit.Lightweight.dll.so => 94
	i64 u0x2cd723e9fe623c7c, ; 238: lib_System.Private.Xml.Linq.dll.so => 90
	i64 u0x2d169d318a968379, ; 239: System.Threading.dll => 152
	i64 u0x2d20145f27cfc1d2, ; 240: Xamarin.AndroidX.Window.WindowCore.Jvm.dll => 384
	i64 u0x2d47774b7d993f59, ; 241: sv/Microsoft.Maui.Controls.resources.dll => 430
	i64 u0x2d5ffcae1ad0aaca, ; 242: System.Data.dll => 24
	i64 u0x2d6a2c836888461f, ; 243: Rootfly.Mobile.Core.dll => 441
	i64 u0x2db915caf23548d2, ; 244: System.Text.Json.dll => 140
	i64 u0x2dcaa0bb15a4117a, ; 245: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e2ced2c3c6a1edc, ; 246: lib_System.Threading.AccessControl.dll.so => 142
	i64 u0x2e5a40c319acb800, ; 247: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 248: el/Microsoft.Maui.Controls.resources.dll => 409
	i64 u0x2e7c9658c7fb7927, ; 249: Microsoft.Extensions.Features.dll => 224
	i64 u0x2e8ff3fae87a8245, ; 250: lib_Microsoft.JSInterop.dll.so => 252
	i64 u0x2f02f94df3200fe5, ; 251: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 252: System.Xml.ReaderWriter => 160
	i64 u0x2f5911d9ba814e4e, ; 253: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 254: lib_System.Xml.dll.so => 167
	i64 u0x2feb4d2fcda05cfd, ; 255: Microsoft.Extensions.Caching.Abstractions.dll => 207
	i64 u0x2ff49de6a71764a1, ; 256: lib_Microsoft.Extensions.Http.dll.so => 231
	i64 u0x309ee9eeec09a71e, ; 257: lib_Xamarin.AndroidX.Fragment.dll.so => 338
	i64 u0x309f2bedefa9a318, ; 258: Microsoft.IdentityModel.Abstractions => 248
	i64 u0x30c6dda129408828, ; 259: System.IO.IsolatedStorage => 52
	i64 u0x310d9651ec86c411, ; 260: Microsoft.Extensions.FileProviders.Embedded => 227
	i64 u0x31195fef5d8fb552, ; 261: _Microsoft.Android.Resource.Designer.dll => 451
	i64 u0x312c8ed623cbfc8d, ; 262: Xamarin.AndroidX.Window.dll => 382
	i64 u0x31496b779ed0663d, ; 263: lib_System.Reflection.DispatchProxy.dll.so => 92
	i64 u0x31962e0f7c634c16, ; 264: Polly.Core => 262
	i64 u0x32243413e774362a, ; 265: Xamarin.AndroidX.CardView.dll => 319
	i64 u0x3235427f8d12dae1, ; 266: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x32890fccebc3f247, ; 267: lib_Volo.Abp.Settings.dll.so => 299
	i64 u0x329753a17a517811, ; 268: fr/Microsoft.Maui.Controls.resources => 412
	i64 u0x32aa989ff07a84ff, ; 269: lib_System.Xml.ReaderWriter.dll.so => 160
	i64 u0x32b975ac62e778ea, ; 270: lib_AndHUD.dll.so => 178
	i64 u0x33642d5508314e46, ; 271: Microsoft.Extensions.FileSystemGlobbing.dll => 229
	i64 u0x33829542f112d59b, ; 272: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 273: lib-es-Microsoft.Maui.Controls.resources.dll.so => 410
	i64 u0x34195152277d4fb2, ; 274: Rootfly.Mobile.Core.WhiteLabel => 450
	i64 u0x341abc357fbb4ebf, ; 275: lib_System.Net.Sockets.dll.so => 78
	i64 u0x34448b530f2aaf5c, ; 276: Microsoft.Extensions.Telemetry.Abstractions.dll => 246
	i64 u0x346a212343615ac5, ; 277: lib_System.Linq.AsyncEnumerable.dll.so => 59
	i64 u0x3496c1e2dcaf5ecc, ; 278: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34bd01fd4be06ee3, ; 279: lib_Microsoft.Extensions.FileProviders.Composite.dll.so => 226
	i64 u0x34dfd74fe2afcf37, ; 280: Microsoft.Maui => 255
	i64 u0x34e292762d9615df, ; 281: cs/Microsoft.Maui.Controls.resources.dll => 406
	i64 u0x3508234247f48404, ; 282: Microsoft.Maui.Controls => 253
	i64 u0x353590da528c9d22, ; 283: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 284: lib_Xamarin.AndroidX.ViewPager2.dll.so => 381
	i64 u0x355282fc1c909694, ; 285: Microsoft.Extensions.Configuration => 210
	i64 u0x3552fc5d578f0fbf, ; 286: Xamarin.AndroidX.Arch.Core.Common => 316
	i64 u0x355c649948d55d97, ; 287: lib_System.Runtime.Intrinsics.dll.so => 111
	i64 u0x3591257c603a2f38, ; 288: Volo.Abp.Autofac => 283
	i64 u0x35ea9d1c6834bc8c, ; 289: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 354
	i64 u0x361cc0d903bf66d4, ; 290: Rootfly.Mobile.Core.Networking.dll => 443
	i64 u0x3628ab68db23a01a, ; 291: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 292: lib_System.Runtime.Extensions.dll.so => 106
	i64 u0x36740f1a8ecdc6c4, ; 293: System.Numerics => 86
	i64 u0x36b2b50fdf589ae2, ; 294: System.Reflection.Emit.Lightweight => 94
	i64 u0x36cada77dc79928b, ; 295: System.IO.MemoryMappedFiles => 53
	i64 u0x36db0dd9a0c9e54f, ; 296: Nito.AsyncEx.Tasks => 259
	i64 u0x373de6858079801d, ; 297: lib_Microsoft.Extensions.DependencyInjection.AutoActivation.dll.so => 220
	i64 u0x374ef46b06791af6, ; 298: System.Reflection.Primitives.dll => 98
	i64 u0x376bf93e521a5417, ; 299: lib_Xamarin.Jetbrains.Annotations.dll.so => 394
	i64 u0x37bc29f3183003b6, ; 300: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 301: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 302: System.Runtime.CompilerServices.Unsafe => 104
	i64 u0x385c17636bb6fe6e, ; 303: Xamarin.AndroidX.CustomView.dll => 331
	i64 u0x38869c811d74050e, ; 304: System.Net.NameResolution.dll => 69
	i64 u0x3889cbdca0f2c57c, ; 305: Xamarin.GooglePlayServices.Location.dll => 392
	i64 u0x3895eb81029bc055, ; 306: Autofac.Extras.DynamicProxy.dll => 181
	i64 u0x393c226616977fdb, ; 307: lib_Xamarin.AndroidX.ViewPager.dll.so => 380
	i64 u0x394e061a63ff3683, ; 308: Microsoft.Extensions.DependencyInjection.AutoActivation => 220
	i64 u0x395e37c3334cf82a, ; 309: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 405
	i64 u0x39945592708d0b03, ; 310: Rootfly.Mobile.Core.Diagnostics => 440
	i64 u0x39b53e0f70068885, ; 311: Volo.Abp.Json.SystemTextJson.dll => 290
	i64 u0x39c3107c28752af1, ; 312: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 225
	i64 u0x3ab5859054645f72, ; 313: System.Security.Cryptography.Primitives.dll => 127
	i64 u0x3ab6994d4f7c6693, ; 314: Volo.Abp.Json.SystemTextJson => 290
	i64 u0x3ad75090c3fac0e9, ; 315: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 366
	i64 u0x3ae44ac43a1fbdbb, ; 316: System.Runtime.Serialization => 118
	i64 u0x3b860f9932505633, ; 317: lib_System.Text.Encoding.Extensions.dll.so => 137
	i64 u0x3be6248c2bc7dc8c, ; 318: Microsoft.JSInterop.dll => 252
	i64 u0x3be99b43dd39dd37, ; 319: Xamarin.AndroidX.SavedState.SavedState.Android => 368
	i64 u0x3bea9ebe8c027c01, ; 320: lib_Microsoft.IdentityModel.Tokens.dll.so => 251
	i64 u0x3c3aafb6b3a00bf6, ; 321: lib_System.Security.Cryptography.X509Certificates.dll.so => 128
	i64 u0x3c4049146b59aa90, ; 322: System.Runtime.InteropServices.JavaScript => 108
	i64 u0x3c7c495f58ac5ee9, ; 323: Xamarin.Kotlin.StdLib => 396
	i64 u0x3c7e5ed3d5db71bb, ; 324: System.Security => 133
	i64 u0x3cd9d281d402eb9b, ; 325: Xamarin.AndroidX.Browser.dll => 318
	i64 u0x3d1c50cc001a991e, ; 326: Xamarin.Google.Guava.ListenableFuture.dll => 389
	i64 u0x3d1f54d6b217cd0f, ; 327: Microsoft.Extensions.Configuration.UserSecrets => 217
	i64 u0x3d2b1913edfc08d7, ; 328: lib_System.Threading.ThreadPool.dll.so => 150
	i64 u0x3d3cfcb304bef018, ; 329: Autofac.dll => 179
	i64 u0x3d46f0b995082740, ; 330: System.Xml.Linq => 159
	i64 u0x3d8a8f400514a790, ; 331: Xamarin.AndroidX.Fragment.Ktx.dll => 339
	i64 u0x3d9c2a242b040a50, ; 332: lib_Xamarin.AndroidX.Core.dll.so => 327
	i64 u0x3da7781d6333a8fe, ; 333: SQLitePCLRaw.batteries_v2 => 270
	i64 u0x3db495de2204755c, ; 334: Microsoft.Extensions.Configuration.FileExtensions => 215
	i64 u0x3dbb6b9f5ab90fa7, ; 335: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 334
	i64 u0x3e4e3f1ce21cc343, ; 336: lib_Microsoft.Extensions.AmbientMetadata.Application.dll.so => 206
	i64 u0x3e5441657549b213, ; 337: Xamarin.AndroidX.ResourceInspection.Annotation => 366
	i64 u0x3e57d4d195c53c2e, ; 338: System.Reflection.TypeExtensions => 99
	i64 u0x3e616ab4ed1f3f15, ; 339: lib_System.Data.dll.so => 24
	i64 u0x3e7f8912b96e5065, ; 340: Microsoft.AspNetCore.Components.WebView.dll => 195
	i64 u0x3eb671f65f076fb8, ; 341: Xamarin.AndroidX.Lifecycle.Common.Java8 => 342
	i64 u0x3f1d226e6e06db7e, ; 342: Xamarin.AndroidX.SlidingPaneLayout.dll => 371
	i64 u0x3f510adf788828dd, ; 343: System.Threading.Tasks.Extensions => 146
	i64 u0x3f6f5914291cdcf7, ; 344: Microsoft.Extensions.Hosting.Abstractions => 230
	i64 u0x3fa60fc66ed7bd38, ; 345: Rootfly.Mobile.Core.Upload.dll => 449
	i64 u0x407a10bb4bf95829, ; 346: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 358
	i64 u0x40c98b6bd77346d4, ; 347: Microsoft.VisualBasic.dll => 3
	i64 u0x410bc7eaa41813a5, ; 348: lib_TimeZoneConverter.dll.so => 280
	i64 u0x41833cf766d27d96, ; 349: mscorlib => 170
	i64 u0x41cab042be111c34, ; 350: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 315
	i64 u0x41f93add55d80a27, ; 351: lib_Microsoft.Extensions.Localization.dll.so => 234
	i64 u0x423a9ecc4d905a88, ; 352: lib_System.Resources.ResourceManager.dll.so => 102
	i64 u0x423bf51ae7def810, ; 353: System.Xml.XPath => 164
	i64 u0x42462ff15ddba223, ; 354: System.Resources.Reader.dll => 101
	i64 u0x426597ce23d65da4, ; 355: lib_Xamarin.AndroidX.Lifecycle.Common.Java8.dll.so => 342
	i64 u0x4291015ff4e5ef71, ; 356: Xamarin.AndroidX.Core.ViewTree.dll => 329
	i64 u0x42a31b86e6ccc3f0, ; 357: System.Diagnostics.Contracts => 25
	i64 u0x42d3cd7add035099, ; 358: System.Management.dll => 278
	i64 u0x430e95b891249788, ; 359: lib_System.Reflection.Emit.dll.so => 95
	i64 u0x43375950ec7c1b6a, ; 360: netstandard.dll => 171
	i64 u0x434c4e1d9284cdae, ; 361: Mono.Android.dll => 175
	i64 u0x43505013578652a0, ; 362: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 310
	i64 u0x437d06c381ed575a, ; 363: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 364: pl/Microsoft.Maui.Controls.resources.dll => 424
	i64 u0x43c077442b230f64, ; 365: Xamarin.AndroidX.Tracing.Tracing.Android => 375
	i64 u0x43e8ca5bc927ff37, ; 366: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 336
	i64 u0x440872139f7eac18, ; 367: lib_Microsoft.Extensions.Http.Diagnostics.dll.so => 232
	i64 u0x448bd33429269b19, ; 368: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 369: lib_System.Runtime.Serialization.Primitives.dll.so => 116
	i64 u0x44eea1b69ed76d7d, ; 370: lib_Controls.UserDialogs.Maui.dll.so => 187
	i64 u0x4515080865a951a5, ; 371: Xamarin.Kotlin.StdLib.dll => 396
	i64 u0x4545802489b736b9, ; 372: Xamarin.AndroidX.Fragment.Ktx => 339
	i64 u0x454b4d1e66bb783c, ; 373: Xamarin.AndroidX.Lifecycle.Process => 347
	i64 u0x458d2df79ac57c1d, ; 374: lib_System.IdentityModel.Tokens.Jwt.dll.so => 276
	i64 u0x4590579c5e446c7c, ; 375: Microsoft.Extensions.Http.Diagnostics.dll => 232
	i64 u0x45c40276a42e283e, ; 376: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 377: System.AppContext.dll => 6
	i64 u0x46a4213bc97fe5ae, ; 378: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 428
	i64 u0x47358bd471172e1d, ; 379: lib_System.Xml.Linq.dll.so => 159
	i64 u0x475a3a9589ad2963, ; 380: Controls.UserDialogs.Maui => 187
	i64 u0x47daf4e1afbada10, ; 381: pt/Microsoft.Maui.Controls.resources => 426
	i64 u0x47fff9cbcc3bc169, ; 382: lib_Rootfly.Mobile.Core.Diagnostics.dll.so => 440
	i64 u0x480c0a47dd42dd81, ; 383: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x487e79df74b9bc2e, ; 384: lib_Volo.Abp.Validation.Abstractions.dll.so => 303
	i64 u0x48a6d2fa2eb5d049, ; 385: Microsoft.AspNetCore.SignalR.Protocols.Json => 204
	i64 u0x49e952f19a4e2022, ; 386: System.ObjectModel => 87
	i64 u0x49f61f655a6a21de, ; 387: Microsoft.Extensions.Localization.Abstractions.dll => 235
	i64 u0x49f9e6948a8131e4, ; 388: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 379
	i64 u0x4a0b4d28cc5945ae, ; 389: Microsoft.Extensions.Configuration.CommandLine => 213
	i64 u0x4a0fb8ec3e4cec9a, ; 390: Rootfly.Mobile.Core.UI => 448
	i64 u0x4a5667b2462a664b, ; 391: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 363
	i64 u0x4a7a18981dbd56bc, ; 392: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 393: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 346
	i64 u0x4b07a0ed0ab33ff4, ; 394: System.Runtime.Extensions.dll => 106
	i64 u0x4b576d47ac054f3c, ; 395: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 396: System.Text.Json => 140
	i64 u0x4c2029a97af23a8d, ; 397: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android => 356
	i64 u0x4c7755cf07ad2d5f, ; 398: System.Net.Http.Json.dll => 65
	i64 u0x4cc5f15266470798, ; 399: lib_Xamarin.AndroidX.Loader.dll.so => 357
	i64 u0x4cd889de78768c44, ; 400: Rootfly.Mobile.Core.Security => 446
	i64 u0x4cf6f67dc77aacd2, ; 401: System.Net.NetworkInformation.dll => 70
	i64 u0x4d2b686fb7c8f133, ; 402: lib_Volo.Abp.Auditing.dll.so => 281
	i64 u0x4d3183dd245425d4, ; 403: System.Net.WebSockets.Client.dll => 82
	i64 u0x4d479f968a05e504, ; 404: System.Linq.Expressions.dll => 60
	i64 u0x4d55a010ffc4faff, ; 405: System.Private.Xml => 91
	i64 u0x4d5cbe77561c5b2e, ; 406: System.Web.dll => 157
	i64 u0x4d77512dbd86ee4c, ; 407: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 316
	i64 u0x4d7793536e79c309, ; 408: System.ServiceProcess => 135
	i64 u0x4d95fccc1f67c7ca, ; 409: System.Runtime.Loader.dll => 112
	i64 u0x4db014bf0ff1c9c1, ; 410: System.Linq.AsyncEnumerable => 59
	i64 u0x4dcf44c3c9b076a2, ; 411: it/Microsoft.Maui.Controls.resources.dll => 418
	i64 u0x4dd9247f1d2c3235, ; 412: Xamarin.AndroidX.Loader.dll => 357
	i64 u0x4df510084e2a0bae, ; 413: Microsoft.JSInterop => 252
	i64 u0x4e2aeee78e2c4a87, ; 414: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 364
	i64 u0x4e32f00cb0937401, ; 415: Mono.Android.Runtime => 174
	i64 u0x4e39d45ce072e04b, ; 416: Microsoft.AspNetCore.SignalR.Common.dll => 203
	i64 u0x4e5eea4668ac2b18, ; 417: System.Text.Encoding.CodePages => 136
	i64 u0x4ebd0c4b82c5eefc, ; 418: lib_System.Threading.Channels.dll.so => 143
	i64 u0x4ee8eaa9c9c1151a, ; 419: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 420: ca/Microsoft.Maui.Controls.resources => 405
	i64 u0x4f79ca6774968e58, ; 421: lib_Volo.Abp.MultiTenancy.dll.so => 294
	i64 u0x4fd5f3ee53d0a4f0, ; 422: SQLitePCLRaw.lib.e_sqlite3.android => 272
	i64 u0x4fdc964ec1888e25, ; 423: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 212
	i64 u0x4ffd65baff757598, ; 424: Microsoft.IdentityModel.Tokens => 251
	i64 u0x503643e97176db84, ; 425: Sentry.Bindings.Android.dll => 268
	i64 u0x5037f0be3c28c7a3, ; 426: lib_Microsoft.Maui.Controls.dll.so => 253
	i64 u0x50c3a29b21050d45, ; 427: System.Linq.Parallel.dll => 61
	i64 u0x50e2cd3b199f0fd9, ; 428: Rootfly.Mobile.Core.Common.dll => 439
	i64 u0x5112ed116d87baf8, ; 429: CommunityToolkit.Mvvm => 186
	i64 u0x5116b21580ae6eb0, ; 430: Microsoft.Extensions.Configuration.Binder.dll => 212
	i64 u0x5131bbe80989093f, ; 431: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 353
	i64 u0x5153d8708592593a, ; 432: Microsoft.Extensions.Telemetry.dll => 245
	i64 u0x516145e3e31ffdf0, ; 433: Volo.Abp.Mapperly => 293
	i64 u0x516324a5050a7e3c, ; 434: System.Net.WebProxy => 81
	i64 u0x516d6f0b21a303de, ; 435: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 436: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 437: System.Resources.Reader => 101
	i64 u0x526bb15e3c386364, ; 438: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 350
	i64 u0x526ce79eb8e90527, ; 439: lib_System.Net.Primitives.dll.so => 72
	i64 u0x52829f00b4467c38, ; 440: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 441: Xamarin.AndroidX.Core => 327
	i64 u0x52ff996554dbf352, ; 442: Microsoft.Maui.Graphics => 257
	i64 u0x535f7e40e8fef8af, ; 443: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 429
	i64 u0x53978aac584c666e, ; 444: lib_System.Security.Cryptography.Cng.dll.so => 123
	i64 u0x53a96d5c86c9e194, ; 445: System.Net.NetworkInformation => 70
	i64 u0x53be1038a61e8d44, ; 446: System.Runtime.InteropServices.RuntimeInformation.dll => 109
	i64 u0x53c3014b9437e684, ; 447: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 435
	i64 u0x5435e6f049e9bc37, ; 448: System.Security.Claims.dll => 121
	i64 u0x54795225dd1587af, ; 449: lib_System.Runtime.dll.so => 119
	i64 u0x547a34f14e5f6210, ; 450: Xamarin.AndroidX.Lifecycle.Common.dll => 341
	i64 u0x54b851bc9b470503, ; 451: Xamarin.AndroidX.Navigation.Common.Android => 359
	i64 u0x556e8b63b660ab8b, ; 452: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 343
	i64 u0x5588627c9a108ec9, ; 453: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 454: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 455: lib_System.Security.Cryptography.OpenSsl.dll.so => 126
	i64 u0x56442b99bc64bb47, ; 456: System.Runtime.Serialization.Xml.dll => 117
	i64 u0x56529f069f5cd769, ; 457: Riok.Mapperly.Abstractions => 265
	i64 u0x56a8b26e1aeae27b, ; 458: System.Threading.Tasks.Dataflow => 145
	i64 u0x56f932d61e93c07f, ; 459: System.Globalization.Extensions => 41
	i64 u0x56ffe3442ac25a95, ; 460: lib_Polly.Extensions.dll.so => 263
	i64 u0x571c5cfbec5ae8e2, ; 461: System.Private.Uri => 89
	i64 u0x576499c9f52fea31, ; 462: Xamarin.AndroidX.Annotation => 311
	i64 u0x578cd35c91d7b347, ; 463: lib_SQLitePCLRaw.core.dll.so => 271
	i64 u0x579a06fed6eec900, ; 464: System.Private.CoreLib.dll => 177
	i64 u0x57adda3c951abb33, ; 465: Microsoft.Extensions.Hosting.Abstractions.dll => 230
	i64 u0x57c542c14049b66d, ; 466: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 467: System.Threading.Timer => 151
	i64 u0x584ac38e21d2fde1, ; 468: Microsoft.Extensions.Configuration.Binder => 212
	i64 u0x58601b2dda4a27b9, ; 469: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 419
	i64 u0x58688d9af496b168, ; 470: Microsoft.Extensions.DependencyInjection.dll => 218
	i64 u0x588c167a79db6bfb, ; 471: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 388
	i64 u0x5906028ae5151104, ; 472: Xamarin.AndroidX.Activity.Ktx => 310
	i64 u0x595a356d23e8da9a, ; 473: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59f9e60b9475085f, ; 474: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 312
	i64 u0x5a745f5101a75527, ; 475: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 476: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 326
	i64 u0x5a8f6699f4a1caa9, ; 477: lib_System.Threading.dll.so => 152
	i64 u0x5ae9cd33b15841bf, ; 478: System.ComponentModel => 18
	i64 u0x5b247cf480c75903, ; 479: Microsoft.AspNetCore.Http.Connections.Common.dll => 199
	i64 u0x5b2aa24da35388e1, ; 480: Rootfly.Mobile.Core.Networking => 443
	i64 u0x5b54391bdc6fcfe6, ; 481: System.Private.DataContractSerialization => 88
	i64 u0x5b5f0e240a06a2a2, ; 482: da/Microsoft.Maui.Controls.resources.dll => 407
	i64 u0x5b755276902c8414, ; 483: Xamarin.GooglePlayServices.Base => 390
	i64 u0x5b8109e8e14c5e3e, ; 484: System.Globalization.Extensions.dll => 41
	i64 u0x5ba54c080903cf2b, ; 485: Microsoft.Extensions.AmbientMetadata.Application.dll => 206
	i64 u0x5bddd04d72a9e350, ; 486: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 346
	i64 u0x5bdf16b09da116ab, ; 487: Xamarin.AndroidX.Collection => 320
	i64 u0x5bff6a70194300bd, ; 488: lib_Xamarin.Kotlin.StdLib.Jdk8.dll.so => 398
	i64 u0x5c019d5266093159, ; 489: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 351
	i64 u0x5c294d94f201783b, ; 490: lib_Microsoft.AspNetCore.Http.Connections.Client.dll.so => 198
	i64 u0x5c30a4a35f9cc8c4, ; 491: lib_System.Reflection.Extensions.dll.so => 96
	i64 u0x5c393624b8176517, ; 492: lib_Microsoft.Extensions.Logging.dll.so => 236
	i64 u0x5c47b4e7c2b71c62, ; 493: lib_Volo.Abp.Castle.Core.dll.so => 284
	i64 u0x5c53c29f5073b0c9, ; 494: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 495: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5cbf331cb0ae199b, ; 496: EduDriver.Shared => 438
	i64 u0x5d0a4a29b02d9d3c, ; 497: System.Net.WebHeaderCollection.dll => 80
	i64 u0x5d25ef991dd9a85c, ; 498: Microsoft.AspNetCore.Components.WebView.Maui.dll => 196
	i64 u0x5d40c9b15181641f, ; 499: lib_Xamarin.AndroidX.Emoji2.dll.so => 335
	i64 u0x5d6ca10d35e9485b, ; 500: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 323
	i64 u0x5d7ec76c1c703055, ; 501: System.Threading.Tasks.Parallel => 147
	i64 u0x5db0cbbd1028510e, ; 502: lib_System.Runtime.InteropServices.dll.so => 110
	i64 u0x5db30905d3e5013b, ; 503: Xamarin.AndroidX.Collection.Jvm.dll => 321
	i64 u0x5e36a22ffe8733a1, ; 504: lib_Volo.Abp.Json.Abstractions.dll.so => 289
	i64 u0x5e467bc8f09ad026, ; 505: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 506: System.Runtime.Handles.dll => 107
	i64 u0x5ea92fdb19ec8c4c, ; 507: System.Text.Encodings.Web.dll => 139
	i64 u0x5eb8046dd40e9ac3, ; 508: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 509: System.Security.Cryptography.Csp.dll => 124
	i64 u0x5ecafacf00002d4b, ; 510: Volo.Abp.MultiTenancy => 294
	i64 u0x5eee1376d94c7f5e, ; 511: System.Net.HttpListener.dll => 67
	i64 u0x5f0179b433ce31c8, ; 512: System.Linq.Dynamic.Core.dll => 277
	i64 u0x5f36ccf5c6a57e24, ; 513: System.Xml.ReaderWriter.dll => 160
	i64 u0x5f4294b9b63cb842, ; 514: System.Data.Common => 22
	i64 u0x5f60deee0ab7514c, ; 515: lib_Microsoft.Extensions.Resilience.dll.so => 244
	i64 u0x5f7399e166075632, ; 516: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 272
	i64 u0x5f9a2d823f664957, ; 517: lib-el-Microsoft.Maui.Controls.resources.dll.so => 409
	i64 u0x5fa6da9c3cd8142a, ; 518: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 402
	i64 u0x5fac98e0b37a5b9d, ; 519: System.Runtime.CompilerServices.Unsafe.dll => 104
	i64 u0x5fd02402d97cdaab, ; 520: lib_Microsoft.Extensions.ObjectPool.dll.so => 240
	i64 u0x60720c3d9ae66524, ; 521: Polly.Extensions.dll => 263
	i64 u0x609f4b7b63d802d4, ; 522: lib_Microsoft.Extensions.DependencyInjection.dll.so => 218
	i64 u0x60cd4e33d7e60134, ; 523: Xamarin.KotlinX.Coroutines.Core.Jvm => 401
	i64 u0x60f62d786afcf130, ; 524: System.Memory => 64
	i64 u0x6128989d92bc3d14, ; 525: Volo.Abp.Settings => 299
	i64 u0x61bb78c89f867353, ; 526: System.IO => 58
	i64 u0x61be8d1299194243, ; 527: Microsoft.Maui.Controls.Xaml => 254
	i64 u0x61d0121f70e2ddeb, ; 528: lib_Volo.Abp.Core.dll.so => 285
	i64 u0x61d2cba29557038f, ; 529: de/Microsoft.Maui.Controls.resources => 408
	i64 u0x61d88f399afb2f45, ; 530: lib_System.Runtime.Loader.dll.so => 112
	i64 u0x622eef6f9e59068d, ; 531: System.Private.CoreLib => 177
	i64 u0x639fb99a7bef11de, ; 532: Xamarin.AndroidX.Navigation.Runtime.Android.dll => 362
	i64 u0x63d5e3aa4ef9b931, ; 533: Xamarin.KotlinX.Coroutines.Android.dll => 399
	i64 u0x63f1f6883c1e23c2, ; 534: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 535: Xamarin.Google.Android.Material.dll => 385
	i64 u0x640e3b14dbd325c2, ; 536: System.Security.Cryptography.Algorithms.dll => 122
	i64 u0x6423d6382c9736a2, ; 537: lib_Microsoft.Extensions.Telemetry.Abstractions.dll.so => 246
	i64 u0x64587004560099b9, ; 538: System.Reflection => 100
	i64 u0x6475dcec04f1e59e, ; 539: Sentry.Bindings.Android => 268
	i64 u0x648c702d29861f51, ; 540: Volo.Abp.Security => 298
	i64 u0x648c8d81fc6f05b8, ; 541: Polly.Extensions => 263
	i64 u0x64b1529a438a3c45, ; 542: lib_System.Runtime.Handles.dll.so => 107
	i64 u0x64b61dd9da8a4d57, ; 543: System.Net.ServerSentEvents.dll => 76
	i64 u0x6565fba2cd8f235b, ; 544: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 354
	i64 u0x6583fc85d5471c16, ; 545: Volo.Abp.Localization.Abstractions.dll => 292
	i64 u0x658f524e4aba7dad, ; 546: CommunityToolkit.Maui.dll => 184
	i64 u0x65ecac39144dd3cc, ; 547: Microsoft.Maui.Controls.dll => 253
	i64 u0x65ece51227bfa724, ; 548: lib_System.Runtime.Numerics.dll.so => 113
	i64 u0x661722438787b57f, ; 549: Xamarin.AndroidX.Annotation.Jvm.dll => 313
	i64 u0x6679b2337ee6b22a, ; 550: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x667c66a03dd97d40, ; 551: System.Linq.AsyncEnumerable.dll => 59
	i64 u0x6692e924eade1b29, ; 552: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 553: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 353
	i64 u0x66d13304ce1a3efa, ; 554: Xamarin.AndroidX.CursorAdapter => 330
	i64 u0x66d6d6d889549963, ; 555: lib_Nito.AsyncEx.Tasks.dll.so => 259
	i64 u0x670eeabf01aaac92, ; 556: lib_Nito.Disposables.dll.so => 260
	i64 u0x672a10d319608935, ; 557: lib_Microsoft.AspNetCore.Http.Connections.Common.dll.so => 199
	i64 u0x674303f65d8fad6f, ; 558: lib_System.Net.Quic.dll.so => 73
	i64 u0x6756ca4cad62e9d6, ; 559: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 325
	i64 u0x67c0802770244408, ; 560: System.Windows.dll => 158
	i64 u0x68100b69286e27cd, ; 561: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68283a83dbfb24da, ; 562: Volo.Abp.Timing => 301
	i64 u0x68558ec653afa616, ; 563: lib-da-Microsoft.Maui.Controls.resources.dll.so => 407
	i64 u0x6857d56b8e8b4bb6, ; 564: lib_Microsoft.AspNetCore.Metadata.dll.so => 200
	i64 u0x6872ec7a2e36b1ac, ; 565: System.Drawing.Primitives.dll => 35
	i64 u0x68ae8a15594023a6, ; 566: Rootfly.Mobile.Core.WhiteLabel.dll => 450
	i64 u0x68fbbbe2eb455198, ; 567: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 568: he/Microsoft.Maui.Controls.resources.dll => 413
	i64 u0x699dffb2427a2d71, ; 569: SQLitePCLRaw.lib.e_sqlite3.android.dll => 272
	i64 u0x69c94e889f94ba08, ; 570: Rootfly.Mobile.Core.Offline => 445
	i64 u0x6a4d7577b2317255, ; 571: System.Runtime.InteropServices.dll => 110
	i64 u0x6ace3b74b15ee4a4, ; 572: nb/Microsoft.Maui.Controls.resources => 422
	i64 u0x6afcedb171067e2b, ; 573: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 574: Xamarin.Jetbrains.Annotations => 394
	i64 u0x6c46bd19605219e3, ; 575: Microsoft.Extensions.Localization => 234
	i64 u0x6ce874bff138ce2b, ; 576: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 352
	i64 u0x6d12bfaa99c72b1f, ; 577: lib_Microsoft.Maui.Graphics.dll.so => 257
	i64 u0x6d70755158ca866e, ; 578: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d783a0a38567826, ; 579: Microsoft.Extensions.Compliance.Abstractions.dll => 209
	i64 u0x6d79993361e10ef2, ; 580: Microsoft.Extensions.Primitives => 243
	i64 u0x6d7eeca99577fc8b, ; 581: lib_System.Net.WebProxy.dll.so => 81
	i64 u0x6d8515b19946b6a2, ; 582: System.Net.WebProxy.dll => 81
	i64 u0x6d86d56b84c8eb71, ; 583: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 330
	i64 u0x6d9bea6b3e895cf7, ; 584: Microsoft.Extensions.Primitives.dll => 243
	i64 u0x6e25a02c3833319a, ; 585: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 360
	i64 u0x6e79c6bd8627412a, ; 586: Xamarin.AndroidX.SavedState.SavedState.Ktx => 369
	i64 u0x6e838d9a2a6f6c9e, ; 587: lib_System.ValueTuple.dll.so => 155
	i64 u0x6e9965ce1095e60a, ; 588: lib_System.Core.dll.so => 21
	i64 u0x6ef6440e23b6a23e, ; 589: lib_Volo.Abp.Security.dll.so => 298
	i64 u0x6fd2265da78b93a4, ; 590: lib_Microsoft.Maui.dll.so => 255
	i64 u0x6fdfc7de82c33008, ; 591: cs/Microsoft.Maui.Controls.resources => 406
	i64 u0x6ffc4967cc47ba57, ; 592: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 593: System.IO.FileSystem.dll => 51
	i64 u0x70d67fb826a6921f, ; 594: Microsoft.Extensions.Validation.dll => 247
	i64 u0x70e99f48c05cb921, ; 595: tr/Microsoft.Maui.Controls.resources.dll => 432
	i64 u0x70fd3deda22442d2, ; 596: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 422
	i64 u0x71485e7ffdb4b958, ; 597: System.Reflection.Extensions => 96
	i64 u0x7162a2fce67a945f, ; 598: lib_Xamarin.Android.Glide.Annotations.dll.so => 306
	i64 u0x717530326f808838, ; 599: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 222
	i64 u0x71a495ea3761dde8, ; 600: lib-it-Microsoft.Maui.Controls.resources.dll.so => 418
	i64 u0x71ad672adbe48f35, ; 601: System.ComponentModel.Primitives.dll => 16
	i64 u0x71e1aff259128867, ; 602: Riok.Mapperly.Abstractions.dll => 265
	i64 u0x720f102581a4a5c8, ; 603: Xamarin.AndroidX.Core.ViewTree => 329
	i64 u0x7242820f67bc4ad6, ; 604: Microsoft.AspNetCore.SignalR.Common => 203
	i64 u0x725f5a9e82a45c81, ; 605: System.Security.Cryptography.Encoding => 125
	i64 u0x72b1fb4109e08d7b, ; 606: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 415
	i64 u0x72e0300099accce1, ; 607: System.Xml.XPath.XDocument => 163
	i64 u0x730bfb248998f67a, ; 608: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 609: Xamarin.Google.ErrorProne.Annotations.dll => 388
	i64 u0x7332de2306493c52, ; 610: Rootfly.Mobile.Core.Upload => 449
	i64 u0x734b76fdc0dc05bb, ; 611: lib_GoogleGson.dll.so => 188
	i64 u0x73a6be34e822f9d1, ; 612: lib_System.Runtime.Serialization.dll.so => 118
	i64 u0x73e4ce94e2eb6ffc, ; 613: lib_System.Memory.dll.so => 64
	i64 u0x743a1eccf080489a, ; 614: WindowsBase.dll => 169
	i64 u0x746cf89b511b4d40, ; 615: lib_Microsoft.Extensions.Diagnostics.dll.so => 221
	i64 u0x74fcb5b9d3ee6884, ; 616: Plugin.LocalNotification => 261
	i64 u0x755a91767330b3d4, ; 617: lib_Microsoft.Extensions.Configuration.dll.so => 210
	i64 u0x758463c93f0d589e, ; 618: lib_Microsoft.AspNetCore.Connections.Abstractions.dll.so => 197
	i64 u0x75c326eb821b85c4, ; 619: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 620: lib_Xamarin.AndroidX.SavedState.dll.so => 367
	i64 u0x76ca07b878f44da0, ; 621: System.Runtime.Numerics.dll => 113
	i64 u0x77036556d3002524, ; 622: lib_Volo.Abp.Timing.dll.so => 301
	i64 u0x771d5aa3fefff687, ; 623: Rootfly.Mobile.Core.Notifications => 444
	i64 u0x7736c8a96e51a061, ; 624: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 313
	i64 u0x778a805e625329ef, ; 625: System.Linq.Parallel => 61
	i64 u0x779f67ad3b8efbd5, ; 626: Microsoft.Extensions.Configuration.Json.dll => 216
	i64 u0x77d9074d8f33a303, ; 627: lib_System.Net.ServerSentEvents.dll.so => 76
	i64 u0x77f8a4acc2fdc449, ; 628: System.Security.Cryptography.Cng.dll => 123
	i64 u0x780bc73597a503a9, ; 629: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 421
	i64 u0x782c5d8eb99ff201, ; 630: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 631: th/Microsoft.Maui.Controls.resources.dll => 431
	i64 u0x78a1938b89c96721, ; 632: Microsoft.AspNetCore.Http.Connections.Common => 199
	i64 u0x78a45e51311409b6, ; 633: Xamarin.AndroidX.Fragment.dll => 338
	i64 u0x78ed4ab8f9d800a1, ; 634: Xamarin.AndroidX.Lifecycle.ViewModel => 352
	i64 u0x7a090e7cbb6c0ed1, ; 635: Xamarin.GooglePlayServices.Location => 392
	i64 u0x7a1d625e6816e40b, ; 636: Microsoft.Extensions.Diagnostics.ExceptionSummarization.dll => 223
	i64 u0x7a25bdb29108c6e7, ; 637: Microsoft.Extensions.Http => 231
	i64 u0x7a5207a7c82d30b4, ; 638: lib_Xamarin.JSpecify.dll.so => 395
	i64 u0x7a71889545dcdb00, ; 639: lib_Microsoft.AspNetCore.Components.WebView.dll.so => 195
	i64 u0x7a7e7eddf79c5d26, ; 640: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 352
	i64 u0x7a9a57d43b0845fa, ; 641: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 642: Xamarin.AndroidX.Collection.dll => 320
	i64 u0x7adb8da2ac89b647, ; 643: fi/Microsoft.Maui.Controls.resources.dll => 411
	i64 u0x7b13d9eaa944ade8, ; 644: Xamarin.AndroidX.DynamicAnimation.dll => 334
	i64 u0x7b4927e421291c41, ; 645: Microsoft.IdentityModel.JsonWebTokens.dll => 249
	i64 u0x7bef86a4335c4870, ; 646: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 647: sk/Microsoft.Maui.Controls.resources.dll => 429
	i64 u0x7c2a0bd1e0f988fc, ; 648: lib-de-Microsoft.Maui.Controls.resources.dll.so => 408
	i64 u0x7c41d387501568ba, ; 649: System.Net.WebClient.dll => 79
	i64 u0x7c482cd79bd24b13, ; 650: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 324
	i64 u0x7c4867f3cb880d2f, ; 651: Microsoft.AspNetCore.Metadata => 200
	i64 u0x7c60acf6404e96b6, ; 652: Xamarin.AndroidX.Navigation.Common.Android.dll => 359
	i64 u0x7c73ff9019480cfd, ; 653: Volo.Abp.ObjectExtending => 296
	i64 u0x7cb95ad2a929d044, ; 654: Xamarin.GooglePlayServices.Basement => 391
	i64 u0x7cc4edc5f3ae24fd, ; 655: Volo.Abp.MultiTenancy.dll => 294
	i64 u0x7cc637f941f716d0, ; 656: CommunityToolkit.Maui.Core => 185
	i64 u0x7cd2ec8eaf5241cd, ; 657: System.Security.dll => 133
	i64 u0x7cf9ae50dd350622, ; 658: Xamarin.Jetbrains.Annotations.dll => 394
	i64 u0x7d2f64af74e3e118, ; 659: Nito.Disposables => 260
	i64 u0x7d3e9aca0bc5c4d5, ; 660: lib_Volo.Abp.Json.SystemTextJson.dll.so => 290
	i64 u0x7d49c593eeb09ac9, ; 661: Microsoft.AspNetCore.SignalR.Client.dll => 201
	i64 u0x7d649b75d580bb42, ; 662: ms/Microsoft.Maui.Controls.resources.dll => 421
	i64 u0x7d8b5821548f89e7, ; 663: Microsoft.AspNetCore.Components.Forms => 193
	i64 u0x7d8ee2bdc8e3aad1, ; 664: System.Numerics.Vectors => 85
	i64 u0x7df5df8db8eaa6ac, ; 665: Microsoft.Extensions.Logging.Debug => 239
	i64 u0x7dfc3d6d9d8d7b70, ; 666: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 667: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 668: lib_System.Security.Claims.dll.so => 121
	i64 u0x7e4465b3f78ad8d0, ; 669: Xamarin.KotlinX.Serialization.Core.dll => 402
	i64 u0x7e571cad5915e6c3, ; 670: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 347
	i64 u0x7e68655318fdf315, ; 671: Volo.Abp.Auditing.dll => 281
	i64 u0x7e6ac99e4e8df72f, ; 672: System.IO.Hashing => 176
	i64 u0x7e6b1ca712437d7d, ; 673: Xamarin.AndroidX.Emoji2.ViewsHelper => 336
	i64 u0x7e946809d6008ef2, ; 674: lib_System.ObjectModel.dll.so => 87
	i64 u0x7ea0272c1b4a9635, ; 675: lib_Xamarin.Android.Glide.dll.so => 305
	i64 u0x7eb4f0dc47488736, ; 676: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 393
	i64 u0x7ecc13347c8fd849, ; 677: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 678: Xamarin.AndroidX.ViewPager.dll => 380
	i64 u0x7f9351cd44b1273f, ; 679: Microsoft.Extensions.Configuration.Abstractions => 211
	i64 u0x7fbd557c99b3ce6f, ; 680: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 345
	i64 u0x8076a9a44a2ca331, ; 681: System.Net.Quic => 73
	i64 u0x80da183a87731838, ; 682: System.Reflection.Metadata => 97
	i64 u0x80fa55b6d1b0be99, ; 683: SQLitePCLRaw.provider.e_sqlite3 => 273
	i64 u0x8101a73bd4533440, ; 684: Microsoft.AspNetCore.Components.Web => 194
	i64 u0x812c069d5cdecc17, ; 685: System.dll => 168
	i64 u0x81381be520a60adb, ; 686: Xamarin.AndroidX.Interpolator.dll => 340
	i64 u0x8148a1fb34fceb7c, ; 687: Microsoft.Extensions.Localization.Abstractions => 235
	i64 u0x81657cec2b31e8aa, ; 688: System.Net => 84
	i64 u0x81ab745f6c0f5ce6, ; 689: zh-Hant/Microsoft.Maui.Controls.resources => 437
	i64 u0x822aa49008112ebe, ; 690: Microsoft.Extensions.ObjectPool => 240
	i64 u0x8277f2be6b5ce05f, ; 691: Xamarin.AndroidX.AppCompat => 314
	i64 u0x828f06563b30bc50, ; 692: lib_Xamarin.AndroidX.CardView.dll.so => 319
	i64 u0x82b399cb01b531c4, ; 693: lib_System.Web.dll.so => 157
	i64 u0x82df8f5532a10c59, ; 694: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 695: lib_System.Transactions.dll.so => 154
	i64 u0x82f6403342e12049, ; 696: uk/Microsoft.Maui.Controls.resources => 433
	i64 u0x83144699b312ad81, ; 697: SQLite-net.dll => 269
	i64 u0x831585a9a3537881, ; 698: System.Threading.RateLimiting.dll => 279
	i64 u0x83a7afd2c49adc86, ; 699: lib_Microsoft.IdentityModel.Abstractions.dll.so => 248
	i64 u0x83c14ba66c8e2b8c, ; 700: zh-Hans/Microsoft.Maui.Controls.resources => 436
	i64 u0x83de69860da6cbdd, ; 701: Microsoft.Extensions.FileProviders.Composite => 226
	i64 u0x83e327e6b4d1cc03, ; 702: Microsoft.Extensions.DependencyInjection.AutoActivation.dll => 220
	i64 u0x844f584272ba20e7, ; 703: Microsoft.Extensions.Resilience => 244
	i64 u0x846ce984efea52c7, ; 704: System.Threading.Tasks.Parallel.dll => 147
	i64 u0x846f52335a832137, ; 705: Microsoft.Extensions.Features => 224
	i64 u0x84ae73148a4557d2, ; 706: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 707: System.Runtime.Serialization.Json.dll => 115
	i64 u0x84f2b807d0cd0bbf, ; 708: lib_System.Linq.Dynamic.Core.dll.so => 277
	i64 u0x850c5ba0b57ce8e7, ; 709: lib_Xamarin.AndroidX.Collection.dll.so => 320
	i64 u0x851d02edd334b044, ; 710: Xamarin.AndroidX.VectorDrawable => 377
	i64 u0x85c919db62150978, ; 711: Xamarin.AndroidX.Transition.dll => 376
	i64 u0x865ce1e6b8a3ec81, ; 712: lib_Volo.Abp.VirtualFileSystem.dll.so => 304
	i64 u0x8662aaeb94fef37f, ; 713: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 714: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 437
	i64 u0x86b3e00c36b84509, ; 715: Microsoft.Extensions.Configuration.dll => 210
	i64 u0x86b62cb077ec4fd7, ; 716: System.Runtime.Serialization.Xml => 117
	i64 u0x86e4283b22abe22c, ; 717: lib_Volo.Abp.Data.dll.so => 286
	i64 u0x8704193f462e892e, ; 718: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 229
	i64 u0x8706ffb12bf3f53d, ; 719: Xamarin.AndroidX.Annotation.Experimental => 312
	i64 u0x872a5b14c18d328c, ; 720: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 721: Xamarin.Android.Glide.Annotations.dll => 306
	i64 u0x87c69b87d9283884, ; 722: lib_System.Threading.Thread.dll.so => 149
	i64 u0x87f6569b25707834, ; 723: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 724: Microsoft.Maui.Essentials => 256
	i64 u0x887b1fa55f2a413e, ; 725: lib_Volo.Abp.Mapperly.dll.so => 293
	i64 u0x88926583efe7ee86, ; 726: Xamarin.AndroidX.Activity.Ktx.dll => 310
	i64 u0x8896926d1aa4c411, ; 727: EduDriver.Shared.dll => 438
	i64 u0x88a065b7cf8fd9ad, ; 728: Volo.Abp.Localization.dll => 291
	i64 u0x88ba6bc4f7762b03, ; 729: lib_System.Reflection.dll.so => 100
	i64 u0x88bda98e0cffb7a9, ; 730: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 401
	i64 u0x88f25006d736d0e9, ; 731: Volo.Abp.Core.dll => 285
	i64 u0x8930322c7bd8f768, ; 732: netstandard => 171
	i64 u0x897a606c9e39c75f, ; 733: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x898a5c6bc9e47ec1, ; 734: lib_Xamarin.AndroidX.SavedState.SavedState.Android.dll.so => 368
	i64 u0x89911a22005b92b7, ; 735: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 736: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 109
	i64 u0x89eacc5a9eb7ca50, ; 737: Volo.Abp.ObjectExtending.dll => 296
	i64 u0x8a19e3dc71b34b2c, ; 738: System.Reflection.TypeExtensions.dll => 99
	i64 u0x8a399a706fcbce4b, ; 739: Microsoft.Extensions.Caching.Abstractions => 207
	i64 u0x8ad229ea26432ee2, ; 740: Xamarin.AndroidX.Loader => 357
	i64 u0x8b42b55a5bb040b5, ; 741: lib_Microsoft.AspNetCore.SignalR.Protocols.Json.dll.so => 204
	i64 u0x8b4ff5d0fdd5faa1, ; 742: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 743: System.Security.Principal.Windows => 130
	i64 u0x8b8d01333a96d0b5, ; 744: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 745: lib-he-Microsoft.Maui.Controls.resources.dll.so => 413
	i64 u0x8c45bb9b7798c592, ; 746: EduDriver => 0
	i64 u0x8c575135aa1ccef4, ; 747: Microsoft.Extensions.FileProviders.Abstractions => 225
	i64 u0x8cb8f612b633affb, ; 748: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 369
	i64 u0x8cdfdb4ce85fb925, ; 749: lib_System.Security.Principal.Windows.dll.so => 130
	i64 u0x8cdfe7b8f4caa426, ; 750: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 751: Xamarin.AndroidX.CursorAdapter.dll => 330
	i64 u0x8d1375ac5bfa1c22, ; 752: lib_Rootfly.Mobile.Core.dll.so => 441
	i64 u0x8d52f7ea2796c531, ; 753: Xamarin.AndroidX.Emoji2.dll => 335
	i64 u0x8d7b8ab4b3310ead, ; 754: System.Threading => 152
	i64 u0x8da188285aadfe8e, ; 755: System.Collections.Concurrent => 8
	i64 u0x8e8f269ad1e1ff94, ; 756: lib_Xamarin.AndroidX.Tracing.Tracing.Android.dll.so => 375
	i64 u0x8ed3cdd722b4d782, ; 757: System.Diagnostics.EventLog => 275
	i64 u0x8ed807bfe9858dfc, ; 758: Xamarin.AndroidX.Navigation.Common => 358
	i64 u0x8ee08b8194a30f48, ; 759: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 414
	i64 u0x8ef7601039857a44, ; 760: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 427
	i64 u0x8ef9414937d93a0a, ; 761: SQLitePCLRaw.core.dll => 271
	i64 u0x8efbc0801a122264, ; 762: Xamarin.GooglePlayServices.Tasks.dll => 393
	i64 u0x8f32c6f611f6ffab, ; 763: pt/Microsoft.Maui.Controls.resources.dll => 426
	i64 u0x8f44b45eb046bbd1, ; 764: System.ServiceModel.Web.dll => 134
	i64 u0x8f51d2296e84161d, ; 765: lib_Volo.Abp.Localization.dll.so => 291
	i64 u0x8f8829d21c8985a4, ; 766: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 425
	i64 u0x8fbf5b0114c6dcef, ; 767: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 768: Xamarin.KotlinX.Serialization.Core => 402
	i64 u0x8fd27d934d7b3a55, ; 769: SQLitePCLRaw.core => 271
	i64 u0x90263f8448b8f572, ; 770: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 771: _Microsoft.Android.Resource.Designer => 451
	i64 u0x90393bd4865292f3, ; 772: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 773: System.Threading.Tasks.Extensions.dll => 146
	i64 u0x90634f86c5ebe2b5, ; 774: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 353
	i64 u0x906af91e5e9d06f6, ; 775: lib_Rootfly.Mobile.Core.WhiteLabel.dll.so => 450
	i64 u0x907b636704ad79ef, ; 776: lib_Microsoft.Maui.Controls.Xaml.dll.so => 254
	i64 u0x90ae2b5b8b652f2a, ; 777: lib_Microsoft.AspNetCore.SignalR.Client.Core.dll.so => 202
	i64 u0x90e9efbfd68593e0, ; 778: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 344
	i64 u0x91418dc638b29e68, ; 779: lib_Xamarin.AndroidX.CustomView.dll.so => 331
	i64 u0x914647982e998267, ; 780: Microsoft.Extensions.Configuration.Json => 216
	i64 u0x9157bd523cd7ed36, ; 781: lib_System.Text.Json.dll.so => 140
	i64 u0x91595856fb43e41a, ; 782: Volo.Abp.Auditing => 281
	i64 u0x91a74f07b30d37e2, ; 783: System.Linq.dll => 63
	i64 u0x91cb86ea3b17111d, ; 784: System.ServiceModel.Web => 134
	i64 u0x91fa41a87223399f, ; 785: ca/Microsoft.Maui.Controls.resources.dll => 405
	i64 u0x92054e486c0c7ea7, ; 786: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 787: lib_System.Xml.XPath.XDocument.dll.so => 163
	i64 u0x92b138fffca2b01e, ; 788: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 317
	i64 u0x92dfc2bfc6c6a888, ; 789: Xamarin.AndroidX.Lifecycle.LiveData => 344
	i64 u0x933da2c779423d68, ; 790: Xamarin.Android.Glide.Annotations => 306
	i64 u0x9388aad9b7ae40ce, ; 791: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 341
	i64 u0x93cfa73ab28d6e35, ; 792: ms/Microsoft.Maui.Controls.resources => 421
	i64 u0x941c00d21e5c0679, ; 793: lib_Xamarin.AndroidX.Transition.dll.so => 376
	i64 u0x944077d8ca3c6580, ; 794: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 795: System.Xml => 167
	i64 u0x948d746a7702861f, ; 796: Microsoft.IdentityModel.Logging.dll => 250
	i64 u0x94bbeab0d4764588, ; 797: System.IO.Hashing.dll => 176
	i64 u0x94c8990839c4bdb1, ; 798: lib_Xamarin.AndroidX.Interpolator.dll.so => 340
	i64 u0x9513edb9b5b8790f, ; 799: Nito.AsyncEx.Tasks.dll => 259
	i64 u0x9564283c37ed59a9, ; 800: lib_Microsoft.IdentityModel.Logging.dll.so => 250
	i64 u0x9591a5f595a82f47, ; 801: Castle.Core.dll => 182
	i64 u0x960d03856f1a8ac4, ; 802: lib_Volo.Abp.Json.dll.so => 288
	i64 u0x967fc325e09bfa8c, ; 803: es/Microsoft.Maui.Controls.resources => 410
	i64 u0x9686161486d34b81, ; 804: lib_Xamarin.AndroidX.ExifInterface.dll.so => 337
	i64 u0x968755433ef1873e, ; 805: JetBrains.Annotations => 189
	i64 u0x9732d8dbddea3d9a, ; 806: id/Microsoft.Maui.Controls.resources => 417
	i64 u0x978be80e5210d31b, ; 807: Microsoft.Maui.Graphics.dll => 257
	i64 u0x979ab54025cc1c7f, ; 808: lib_Xamarin.GooglePlayServices.Base.dll.so => 390
	i64 u0x97b8c771ea3e4220, ; 809: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 810: System.Collections.Concurrent.dll => 8
	i64 u0x97f8c2b20053a98f, ; 811: lib_Autofac.Extensions.DependencyInjection.dll.so => 180
	i64 u0x984184e3c70d4419, ; 812: GoogleGson => 188
	i64 u0x9843944103683dd3, ; 813: Xamarin.AndroidX.Core.Core.Ktx => 328
	i64 u0x98b05cc81e6f333c, ; 814: Xamarin.AndroidX.SavedState.SavedState.Android.dll => 368
	i64 u0x98d720cc4597562c, ; 815: System.Security.Cryptography.OpenSsl => 126
	i64 u0x991802c07dabd18c, ; 816: TimeZoneConverter.dll => 280
	i64 u0x991d510397f92d9d, ; 817: System.Linq.Expressions => 60
	i64 u0x996ceeb8a3da3d67, ; 818: System.Threading.Overlapped.dll => 144
	i64 u0x999cb19e1a04ffd3, ; 819: CommunityToolkit.Mvvm.dll => 186
	i64 u0x99a00ca5270c6878, ; 820: Xamarin.AndroidX.Navigation.Runtime => 361
	i64 u0x99cdc6d1f2d3a72f, ; 821: ko/Microsoft.Maui.Controls.resources.dll => 420
	i64 u0x99d3ea8d66a77824, ; 822: Autofac.Extensions.DependencyInjection => 180
	i64 u0x99eaae5fbb125a88, ; 823: Castle.Core.AsyncInterceptor => 183
	i64 u0x9a01b1da98b6ee10, ; 824: Xamarin.AndroidX.Lifecycle.Runtime.dll => 348
	i64 u0x9a0c2ede951b3871, ; 825: lib_Polly.RateLimiting.dll.so => 264
	i64 u0x9a5ccc274fd6e6ee, ; 826: Jsr305Binding.dll => 386
	i64 u0x9acebc7866f6bc5d, ; 827: Microsoft.Extensions.Telemetry.Abstractions => 246
	i64 u0x9ae6940b11c02876, ; 828: lib_Xamarin.AndroidX.Window.dll.so => 382
	i64 u0x9af29f5b320d6e5e, ; 829: lib_Volo.Abp.Uow.dll.so => 302
	i64 u0x9b025d24cb4455df, ; 830: Rootfly.Mobile.Core.Security.dll => 446
	i64 u0x9b211a749105beac, ; 831: System.Transactions.Local => 153
	i64 u0x9b529ee49a4bf6dc, ; 832: Volo.Abp.Json.dll => 288
	i64 u0x9b8734714671022d, ; 833: System.Threading.Tasks.Dataflow.dll => 145
	i64 u0x9bc6aea27fbf034f, ; 834: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 400
	i64 u0x9c244ac7cda32d26, ; 835: System.Security.Cryptography.X509Certificates.dll => 128
	i64 u0x9c465f280cf43733, ; 836: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 399
	i64 u0x9c8f6872beab6408, ; 837: System.Xml.XPath.XDocument.dll => 163
	i64 u0x9ce01cf91101ae23, ; 838: System.Xml.XmlDocument => 165
	i64 u0x9d128180c81d7ce6, ; 839: Xamarin.AndroidX.CustomView.PoolingContainer => 332
	i64 u0x9d5dbcf5a48583fe, ; 840: lib_Xamarin.AndroidX.Activity.dll.so => 309
	i64 u0x9d74dee1a7725f34, ; 841: Microsoft.Extensions.Configuration.Abstractions.dll => 211
	i64 u0x9dd0e195825d65c6, ; 842: lib_Xamarin.AndroidX.Navigation.Runtime.Android.dll.so => 362
	i64 u0x9ddbd3e8208e1dea, ; 843: Rootfly.Mobile.Core.Common => 439
	i64 u0x9e4534b6adaf6e84, ; 844: nl/Microsoft.Maui.Controls.resources => 423
	i64 u0x9e4b95dec42769f7, ; 845: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 846: Xamarin.AndroidX.Navigation.Common.dll => 358
	i64 u0x9ef542cf1f78c506, ; 847: Xamarin.AndroidX.Lifecycle.LiveData.Core => 345
	i64 u0x9f04dfa06f509914, ; 848: lib_Nito.AsyncEx.Context.dll.so => 258
	i64 u0x9fbb2961ca18e5c2, ; 849: Microsoft.Extensions.FileProviders.Physical.dll => 228
	i64 u0x9fc2184212c417ad, ; 850: Plugin.LocalNotification.dll => 261
	i64 u0xa00832eb975f56a8, ; 851: lib_System.Net.dll.so => 84
	i64 u0xa05475503f80b7d9, ; 852: Microsoft.AspNetCore.Connections.Abstractions => 197
	i64 u0xa0ad78236b7b267f, ; 853: Xamarin.AndroidX.Window => 382
	i64 u0xa0d8259f4cc284ec, ; 854: lib_System.Security.Cryptography.dll.so => 129
	i64 u0xa0e17ca50c77a225, ; 855: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 387
	i64 u0xa0ff9b3e34d92f11, ; 856: lib_System.Resources.Writer.dll.so => 103
	i64 u0xa12fbfb4da97d9f3, ; 857: System.Threading.Timer.dll => 151
	i64 u0xa1440773ee9d341e, ; 858: Xamarin.Google.Android.Material => 385
	i64 u0xa18c39c44cdc3465, ; 859: Xamarin.AndroidX.Window.WindowCore => 383
	i64 u0xa1a269041503c365, ; 860: AndHUD => 178
	i64 u0xa1b9d7c27f47219f, ; 861: Xamarin.AndroidX.Navigation.UI.dll => 363
	i64 u0xa2572680829d2c7c, ; 862: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 863: System.Xml.XmlDocument.dll => 165
	i64 u0xa304f6fe69082fc4, ; 864: TimeZoneConverter => 280
	i64 u0xa308401900e5bed3, ; 865: lib_mscorlib.dll.so => 170
	i64 u0xa395572e7da6c99d, ; 866: lib_System.Security.dll.so => 133
	i64 u0xa3977f940928b42d, ; 867: Volo.Abp.Json => 288
	i64 u0xa3b8104115a36bf6, ; 868: lib_Microsoft.Extensions.FileProviders.Embedded.dll.so => 227
	i64 u0xa3e683f24b43af6f, ; 869: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 870: Xamarin.AndroidX.VectorDrawable.Animated => 378
	i64 u0xa46aa1eaa214539b, ; 871: ko/Microsoft.Maui.Controls.resources => 420
	i64 u0xa4a372eecb9e4df0, ; 872: Microsoft.Extensions.Diagnostics => 221
	i64 u0xa4d20d2ff0563d26, ; 873: lib_CommunityToolkit.Mvvm.dll.so => 186
	i64 u0xa4e62983cf1e3674, ; 874: Microsoft.AspNetCore.Components.Forms.dll => 193
	i64 u0xa4edc8f2ceae241a, ; 875: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 876: System.Runtime.Serialization.Formatters.dll => 114
	i64 u0xa54b74df83dce92b, ; 877: System.Reflection.DispatchProxy => 92
	i64 u0xa5b7152421ed6d98, ; 878: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 879: lib_System.Linq.Parallel.dll.so => 61
	i64 u0xa5ce5c755bde8cb8, ; 880: lib_System.Security.Cryptography.Csp.dll.so => 124
	i64 u0xa5e2b94df18aef53, ; 881: Volo.Abp.VirtualFileSystem.dll => 304
	i64 u0xa5e599d1e0524750, ; 882: System.Numerics.Vectors.dll => 85
	i64 u0xa5f1ba49b85dd355, ; 883: System.Security.Cryptography.dll => 129
	i64 u0xa61975a5a37873ea, ; 884: lib_System.Xml.XmlSerializer.dll.so => 166
	i64 u0xa6593e21584384d2, ; 885: lib_Jsr305Binding.dll.so => 386
	i64 u0xa66cbee0130865f7, ; 886: lib_WindowsBase.dll.so => 169
	i64 u0xa67dbee13e1df9ca, ; 887: Xamarin.AndroidX.SavedState.dll => 367
	i64 u0xa684b098dd27b296, ; 888: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 370
	i64 u0xa68a420042bb9b1f, ; 889: Xamarin.AndroidX.DrawerLayout.dll => 333
	i64 u0xa6d26156d1cacc7c, ; 890: Xamarin.Android.Glide.dll => 305
	i64 u0xa75386b5cb9595aa, ; 891: Xamarin.AndroidX.Lifecycle.Runtime.Android => 349
	i64 u0xa763fbb98df8d9fb, ; 892: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 893: Xamarin.AndroidX.Lifecycle.Common.Jvm => 343
	i64 u0xa7c31b56b4dc7b33, ; 894: hu/Microsoft.Maui.Controls.resources => 416
	i64 u0xa7eab29ed44b4e7a, ; 895: Mono.Android.Export => 173
	i64 u0xa8195217cbf017b7, ; 896: Microsoft.VisualBasic.Core => 2
	i64 u0xa82fd211eef00a5b, ; 897: Microsoft.Extensions.FileProviders.Physical => 228
	i64 u0xa843f6095f0d247d, ; 898: Xamarin.GooglePlayServices.Base.dll => 390
	i64 u0xa859a95830f367ff, ; 899: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 354
	i64 u0xa8b52f21e0dbe690, ; 900: System.Runtime.Serialization.dll => 118
	i64 u0xa8e6320dd07580ef, ; 901: lib_Microsoft.IdentityModel.JsonWebTokens.dll.so => 249
	i64 u0xa8ee4ed7de2efaee, ; 902: Xamarin.AndroidX.Annotation.dll => 311
	i64 u0xa95590e7c57438a4, ; 903: System.Configuration => 19
	i64 u0xa964304b5631e28a, ; 904: CommunityToolkit.Maui.Core.dll => 185
	i64 u0xaa2219c8e3449ff5, ; 905: Microsoft.Extensions.Logging.Abstractions => 237
	i64 u0xaa443ac34067eeef, ; 906: System.Private.Xml.dll => 91
	i64 u0xaa52de307ef5d1dd, ; 907: System.Net.Http => 66
	i64 u0xaa9a7b0214a5cc5c, ; 908: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 909: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 219
	i64 u0xaaf84bb3f052a265, ; 910: el/Microsoft.Maui.Controls.resources => 409
	i64 u0xab1236b06a017951, ; 911: Volo.Abp.Uow.dll => 302
	i64 u0xab69b0edcd920853, ; 912: Microsoft.Extensions.Resilience.dll => 244
	i64 u0xab8723de4a35df3b, ; 913: Polly.RateLimiting => 264
	i64 u0xab9af77b5b67a0b8, ; 914: Xamarin.AndroidX.ConstraintLayout.Core => 325
	i64 u0xab9c1b2687d86b0b, ; 915: lib_System.Linq.Expressions.dll.so => 60
	i64 u0xac03339b985f4d59, ; 916: Microsoft.AspNetCore.SignalR.Client.Core.dll => 202
	i64 u0xac2af3fa195a15ce, ; 917: System.Runtime.Numerics => 113
	i64 u0xac5376a2a538dc10, ; 918: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 345
	i64 u0xac5acae88f60357e, ; 919: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 920: System.Security.Principal.Windows.dll => 130
	i64 u0xac98d31068e24591, ; 921: System.Xml.XDocument => 162
	i64 u0xacbdde7a5dea08dd, ; 922: Autofac.Extras.DynamicProxy => 181
	i64 u0xacd46e002c3ccb97, ; 923: ro/Microsoft.Maui.Controls.resources => 427
	i64 u0xacdd9e4180d56dda, ; 924: Xamarin.AndroidX.Concurrent.Futures => 323
	i64 u0xacf42eea7ef9cd12, ; 925: System.Threading.Channels => 143
	i64 u0xad89c07347f1bad6, ; 926: nl/Microsoft.Maui.Controls.resources.dll => 423
	i64 u0xadbb53caf78a79d2, ; 927: System.Web.HttpUtility => 156
	i64 u0xadc90ab061a9e6e4, ; 928: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 929: Xamarin.AndroidX.Collection.Ktx => 322
	i64 u0xadd8eda2edf396ad, ; 930: Xamarin.Android.Glide.GifDecoder => 308
	i64 u0xadf4cf30debbeb9a, ; 931: System.Net.ServicePoint.dll => 77
	i64 u0xadf511667bef3595, ; 932: System.Net.Security => 75
	i64 u0xae0aaa94fdcfce0f, ; 933: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 934: Java.Interop => 172
	i64 u0xae53579c90db1107, ; 935: System.ObjectModel.dll => 87
	i64 u0xae7ea18c61eef394, ; 936: SQLite-net => 269
	i64 u0xaf732d0b2193b8f5, ; 937: System.Security.Cryptography.OpenSsl.dll => 126
	i64 u0xafdb94dbccd9d11c, ; 938: Xamarin.AndroidX.Lifecycle.LiveData.dll => 344
	i64 u0xafe29f45095518e7, ; 939: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 355
	i64 u0xafe8e4d1ae2a2c43, ; 940: lib_Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so => 214
	i64 u0xb03ae931fb25607e, ; 941: Xamarin.AndroidX.ConstraintLayout => 324
	i64 u0xb05cc42cd94c6d9d, ; 942: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 430
	i64 u0xb0ac21bec8f428c5, ; 943: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 351
	i64 u0xb0bb43dc52ea59f9, ; 944: System.Diagnostics.Tracing.dll => 34
	i64 u0xb0da4f247d851d1e, ; 945: Rootfly.Mobile.Core.Media => 442
	i64 u0xb11e5d920e20945d, ; 946: Castle.Core => 182
	i64 u0xb1ccbf6243328d1c, ; 947: Microsoft.AspNetCore.Components => 192
	i64 u0xb1dd05401aa8ee63, ; 948: System.Security.AccessControl => 120
	i64 u0xb220631954820169, ; 949: System.Text.RegularExpressions => 141
	i64 u0xb22f4a05cbfa8df7, ; 950: Volo.Abp.Json.Abstractions => 289
	i64 u0xb2376e1dbf8b4ed7, ; 951: System.Security.Cryptography.Csp => 124
	i64 u0xb2a1959fe95c5402, ; 952: lib_System.Runtime.InteropServices.JavaScript.dll.so => 108
	i64 u0xb2a3f67f3bf29fce, ; 953: da/Microsoft.Maui.Controls.resources => 407
	i64 u0xb2cf460a3e9deec2, ; 954: lib_Rootfly.Mobile.Core.Media.dll.so => 442
	i64 u0xb3874072ee0ecf8c, ; 955: Xamarin.AndroidX.VectorDrawable.Animated.dll => 378
	i64 u0xb3cb775a0c91a0e1, ; 956: Polly.RateLimiting.dll => 264
	i64 u0xb3f0a0fcda8d3ebc, ; 957: Xamarin.AndroidX.CardView => 319
	i64 u0xb46be1aa6d4fff93, ; 958: hi/Microsoft.Maui.Controls.resources => 414
	i64 u0xb477491be13109d8, ; 959: ar/Microsoft.Maui.Controls.resources => 404
	i64 u0xb4bd7015ecee9d86, ; 960: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 961: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 962: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb54092076b15e062, ; 963: System.Threading.AccessControl => 142
	i64 u0xb5c38bf497a4cfe2, ; 964: lib_System.Threading.Tasks.dll.so => 148
	i64 u0xb5c7fcdafbc67ee4, ; 965: Microsoft.Extensions.Logging.Abstractions.dll => 237
	i64 u0xb5e2ea1bb00704d6, ; 966: Xamarin.Kotlin.StdLib.Jdk7.dll => 397
	i64 u0xb5ea31d5244c6626, ; 967: System.Threading.ThreadPool.dll => 150
	i64 u0xb67a83d7dd3cc0b1, ; 968: lib_Rootfly.Mobile.Core.Offline.dll.so => 445
	i64 u0xb6a1f1984b027e98, ; 969: Microsoft.Extensions.Http.Diagnostics => 232
	i64 u0xb7212c4683a94afe, ; 970: System.Drawing.Primitives => 35
	i64 u0xb7a59cef15babdf7, ; 971: System.Linq.Dynamic.Core => 277
	i64 u0xb7b7753d1f319409, ; 972: sv/Microsoft.Maui.Controls.resources => 430
	i64 u0xb81a2c6e0aee50fe, ; 973: lib_System.Private.CoreLib.dll.so => 177
	i64 u0xb872c26142d22aa9, ; 974: Microsoft.Extensions.Http.dll => 231
	i64 u0xb898d1802c1a108c, ; 975: lib_System.Management.dll.so => 278
	i64 u0xb8c60af47c08d4da, ; 976: System.Net.ServicePoint => 77
	i64 u0xb8e68d20aad91196, ; 977: lib_System.Xml.XPath.dll.so => 164
	i64 u0xb8ec61c4e13217ad, ; 978: Volo.Abp.ObjectMapping => 297
	i64 u0xb9185c33a1643eed, ; 979: Microsoft.CSharp.dll => 1
	i64 u0xb960d6b2200ba320, ; 980: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll => 356
	i64 u0xb98238703aa6ec67, ; 981: Volo.Abp.MultiTenancy.Abstractions => 295
	i64 u0xb9b8001adf4ed7cc, ; 982: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 371
	i64 u0xb9cc1395d59416a0, ; 983: lib_Autofac.dll.so => 179
	i64 u0xb9f64d3b230def68, ; 984: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 426
	i64 u0xb9fc3c8a556e3691, ; 985: ja/Microsoft.Maui.Controls.resources => 419
	i64 u0xba4670aa94a2b3c6, ; 986: lib_System.Xml.XDocument.dll.so => 162
	i64 u0xba48785529705af9, ; 987: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 988: lib_System.Windows.dll.so => 158
	i64 u0xbadbc0a44214b54e, ; 989: K4os.Compression.LZ4 => 190
	i64 u0xbaf762c4825c14e9, ; 990: Microsoft.AspNetCore.Components.WebView => 195
	i64 u0xbb272a43608ae0e8, ; 991: Microsoft.Extensions.Configuration.EnvironmentVariables => 214
	i64 u0xbb286883bc35db36, ; 992: System.Transactions.dll => 154
	i64 u0xbb65706fde942ce3, ; 993: System.Net.Sockets => 78
	i64 u0xbb6690a4b58a1849, ; 994: Microsoft.Extensions.Http.Resilience => 233
	i64 u0xbb89364b940b437b, ; 995: Volo.Abp.Auditing.Contracts => 282
	i64 u0xbba28979413cad9e, ; 996: lib_System.Runtime.CompilerServices.VisualC.dll.so => 105
	i64 u0xbbd180354b67271a, ; 997: System.Runtime.Serialization.Formatters => 114
	i64 u0xbc22a245dab70cb4, ; 998: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 273
	i64 u0xbc260cdba33291a3, ; 999: Xamarin.AndroidX.Arch.Core.Common.dll => 316
	i64 u0xbc3c4e8dffea9d4e, ; 1000: Microsoft.AspNetCore.Metadata.dll => 200
	i64 u0xbcd36316d29f27b4, ; 1001: lib_Microsoft.AspNetCore.Authorization.dll.so => 191
	i64 u0xbd0e2c0d55246576, ; 1002: System.Net.Http.dll => 66
	i64 u0xbd3fbd85b9e1cb29, ; 1003: lib_System.Net.HttpListener.dll.so => 67
	i64 u0xbd437a2cdb333d0d, ; 1004: Xamarin.AndroidX.ViewPager2 => 381
	i64 u0xbd4f572d2bd0a789, ; 1005: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 1006: lib_Xamarin.AndroidX.Browser.dll.so => 318
	i64 u0xbd877b14d0b56392, ; 1007: System.Runtime.Intrinsics.dll => 111
	i64 u0xbd8c1c42391a3b4d, ; 1008: Volo.Abp.Validation.Abstractions.dll => 303
	i64 u0xbe04c77645f06233, ; 1009: Microsoft.Extensions.Logging.Configuration => 238
	i64 u0xbe65a49036345cf4, ; 1010: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 1011: Xamarin.AndroidX.AppCompat.AppCompatResources => 315
	i64 u0xbef9919db45b4ca7, ; 1012: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 1013: lib_Xamarin.AndroidX.Annotation.dll.so => 311
	i64 u0xbfc1e1fb3095f2b3, ; 1014: lib_System.Net.Http.Json.dll.so => 65
	i64 u0xc040a4ab55817f58, ; 1015: ar/Microsoft.Maui.Controls.resources.dll => 404
	i64 u0xc07cadab29efeba0, ; 1016: Xamarin.AndroidX.Core.Core.Ktx.dll => 328
	i64 u0xc0a084644b51e835, ; 1017: Sentry => 266
	i64 u0xc0d928351ab5ca77, ; 1018: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 1019: System.Runtime.Intrinsics => 111
	i64 u0xc111030af54d7191, ; 1020: System.Resources.Writer => 103
	i64 u0xc12b8b3afa48329c, ; 1021: lib_System.Linq.dll.so => 63
	i64 u0xc183ca0b74453aa9, ; 1022: lib_System.Threading.Tasks.Dataflow.dll.so => 145
	i64 u0xc1ebdc7e6a943450, ; 1023: Microsoft.AspNetCore.Authorization.dll => 191
	i64 u0xc1ff9ae3cdb6e1e6, ; 1024: Xamarin.AndroidX.Activity.dll => 309
	i64 u0xc26c064effb1dea9, ; 1025: System.Buffers.dll => 7
	i64 u0xc278de356ad8a9e3, ; 1026: Microsoft.IdentityModel.Logging => 250
	i64 u0xc27a0dbe1ae51104, ; 1027: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 214
	i64 u0xc28c50f32f81cc73, ; 1028: ja/Microsoft.Maui.Controls.resources.dll => 419
	i64 u0xc2902f6cf5452577, ; 1029: lib_Mono.Android.Export.dll.so => 173
	i64 u0xc2a3bca55b573141, ; 1030: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 1031: Xamarin.AndroidX.ViewPager2.dll => 381
	i64 u0xc30b52815b58ac2c, ; 1032: lib_System.Runtime.Serialization.Xml.dll.so => 117
	i64 u0xc31c88bf4add3c33, ; 1033: lib_EduDriver.dll.so => 0
	i64 u0xc36d7d89c652f455, ; 1034: System.Threading.Overlapped => 144
	i64 u0xc396b285e59e5493, ; 1035: GoogleGson.dll => 188
	i64 u0xc3bca08653fb668d, ; 1036: lib_Microsoft.Extensions.Http.Resilience.dll.so => 233
	i64 u0xc3c86c1e5e12f03d, ; 1037: WindowsBase => 169
	i64 u0xc3eb856ce6d314a4, ; 1038: Autofac.Extensions.DependencyInjection.dll => 180
	i64 u0xc421b61fd853169d, ; 1039: lib_System.Net.WebSockets.Client.dll.so => 82
	i64 u0xc463e077917aa21d, ; 1040: System.Runtime.Serialization.Json => 115
	i64 u0xc4d3858ed4d08512, ; 1041: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 355
	i64 u0xc4d69851fe06342f, ; 1042: lib_Microsoft.Extensions.Caching.Memory.dll.so => 208
	i64 u0xc4f2d57c50beb816, ; 1043: lib_Microsoft.Extensions.Features.dll.so => 224
	i64 u0xc50fded0ded1418c, ; 1044: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 1045: lib_System.Net.Requests.dll.so => 74
	i64 u0xc5293b19e4dc230e, ; 1046: Xamarin.AndroidX.Navigation.Fragment => 360
	i64 u0xc5325b2fcb37446f, ; 1047: lib_System.Private.Xml.dll.so => 91
	i64 u0xc535cb9a21385d9b, ; 1048: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 307
	i64 u0xc58384e40ebf5e2b, ; 1049: Volo.Abp.MultiTenancy.Abstractions.dll => 295
	i64 u0xc5a0f4b95a699af7, ; 1050: lib_System.Private.Uri.dll.so => 89
	i64 u0xc5cdcd5b6277579e, ; 1051: lib_System.Security.Cryptography.Algorithms.dll.so => 122
	i64 u0xc5de3dcae13c325f, ; 1052: Microsoft.AspNetCore.SignalR.Client => 201
	i64 u0xc5ec286825cb0bf4, ; 1053: Xamarin.AndroidX.Tracing.Tracing => 374
	i64 u0xc659b586d4c229e2, ; 1054: Microsoft.Extensions.Configuration.FileExtensions.dll => 215
	i64 u0xc6706bc8aa7fe265, ; 1055: Xamarin.AndroidX.Annotation.Jvm => 313
	i64 u0xc6e79a75cd76e97f, ; 1056: Volo.Abp.Data => 286
	i64 u0xc74d70d4aa96cef3, ; 1057: Xamarin.AndroidX.Navigation.Runtime.Android => 362
	i64 u0xc7c01e7d7c93a110, ; 1058: System.Text.Encoding.Extensions.dll => 137
	i64 u0xc7ce851898a4548e, ; 1059: lib_System.Web.HttpUtility.dll.so => 156
	i64 u0xc809d4089d2556b2, ; 1060: System.Runtime.InteropServices.JavaScript.dll => 108
	i64 u0xc858a28d9ee5a6c5, ; 1061: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 1062: System.Reflection.DispatchProxy.dll => 92
	i64 u0xc9c62c8f354ac568, ; 1063: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xc9e54b32fc19baf3, ; 1064: lib_CommunityToolkit.Maui.dll.so => 184
	i64 u0xca3110fea81c8916, ; 1065: Microsoft.AspNetCore.Components.Web.dll => 194
	i64 u0xca32340d8d54dcd5, ; 1066: Microsoft.Extensions.Caching.Memory.dll => 208
	i64 u0xca3a723e7342c5b6, ; 1067: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 432
	i64 u0xca5801070d9fccfb, ; 1068: System.Text.Encoding => 138
	i64 u0xca65687bf12f1958, ; 1069: lib_Rootfly.Mobile.Core.Networking.dll.so => 443
	i64 u0xcab3493c70141c2d, ; 1070: pl/Microsoft.Maui.Controls.resources => 424
	i64 u0xcab42f35c3013077, ; 1071: Sentry.dll => 266
	i64 u0xcacfddc9f7c6de76, ; 1072: ro/Microsoft.Maui.Controls.resources.dll => 427
	i64 u0xcadbc92899a777f0, ; 1073: Xamarin.AndroidX.Startup.StartupRuntime => 372
	i64 u0xcba1cb79f45292b5, ; 1074: Xamarin.Android.Glide.GifDecoder.dll => 308
	i64 u0xcbb5f80c7293e696, ; 1075: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 1076: lib__Microsoft.Android.Resource.Designer.dll.so => 451
	i64 u0xcbf8c1d4c780610e, ; 1077: lib_Polly.Core.dll.so => 262
	i64 u0xcc15da1e07bbd994, ; 1078: Xamarin.AndroidX.SlidingPaneLayout => 371
	i64 u0xcc182c3afdc374d6, ; 1079: Microsoft.Bcl.AsyncInterfaces => 205
	i64 u0xcc2876b32ef2794c, ; 1080: lib_System.Text.RegularExpressions.dll.so => 141
	i64 u0xcc5c3bb714c4561e, ; 1081: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 401
	i64 u0xcc76886e09b88260, ; 1082: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 403
	i64 u0xcc9fa2923aa1c9ef, ; 1083: System.Diagnostics.Contracts.dll => 25
	i64 u0xccae9bb73e2326bd, ; 1084: lib_System.IO.Hashing.dll.so => 176
	i64 u0xccaf109bd0566afb, ; 1085: lib_Rootfly.Mobile.Core.Common.dll.so => 439
	i64 u0xcce5f0b382db16b7, ; 1086: Microsoft.AspNetCore.Http.Connections.Client => 198
	i64 u0xccf25c4b634ccd3a, ; 1087: zh-Hans/Microsoft.Maui.Controls.resources.dll => 436
	i64 u0xcd10a42808629144, ; 1088: System.Net.Requests => 74
	i64 u0xcd7fa3f96e8ceaaa, ; 1089: Xamarin.AndroidX.Lifecycle.Common.Java8.dll => 342
	i64 u0xcdca1b920e9f53ba, ; 1090: Xamarin.AndroidX.Interpolator => 340
	i64 u0xcdd0c48b6937b21c, ; 1091: Xamarin.AndroidX.SwipeRefreshLayout => 373
	i64 u0xce944bf896870a6c, ; 1092: Nito.AsyncEx.Context => 258
	i64 u0xcef12ebf0f8cfd38, ; 1093: lib_Microsoft.Extensions.Compliance.Abstractions.dll.so => 209
	i64 u0xcf23d8093f3ceadf, ; 1094: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf3a9996a625b6e2, ; 1095: Microsoft.Extensions.Logging.Configuration.dll => 238
	i64 u0xcf5ff6b6b2c4c382, ; 1096: System.Net.Mail.dll => 68
	i64 u0xcf8fc898f98b0d34, ; 1097: System.Private.Xml.Linq => 90
	i64 u0xd04b5f59ed596e31, ; 1098: System.Reflection.Metadata.dll => 97
	i64 u0xd063299fcfc0c93f, ; 1099: lib_System.Runtime.Serialization.Json.dll.so => 115
	i64 u0xd0de8a113e976700, ; 1100: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 1101: System.Runtime.Extensions => 106
	i64 u0xd1194e1d8a8de83c, ; 1102: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 343
	i64 u0xd126a1e54fbbca30, ; 1103: lib_Rootfly.Mobile.Core.Storage.dll.so => 447
	i64 u0xd12beacdfc14f696, ; 1104: System.Dynamic.Runtime => 37
	i64 u0xd16fd7fb9bbcd43e, ; 1105: Microsoft.Extensions.Diagnostics.Abstractions => 222
	i64 u0xd198e7ce1b6a8344, ; 1106: System.Net.Quic.dll => 73
	i64 u0xd2505d8abeed6983, ; 1107: lib_Microsoft.AspNetCore.Components.Web.dll.so => 194
	i64 u0xd3144156a3727ebe, ; 1108: Xamarin.Google.Guava.ListenableFuture => 389
	i64 u0xd333d0af9e423810, ; 1109: System.Runtime.InteropServices => 110
	i64 u0xd33a415cb4278969, ; 1110: System.Security.Cryptography.Encoding.dll => 125
	i64 u0xd3426d966bb704f5, ; 1111: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 315
	i64 u0xd3651b6fc3125825, ; 1112: System.Private.Uri.dll => 89
	i64 u0xd373685349b1fe8b, ; 1113: Microsoft.Extensions.Logging.dll => 236
	i64 u0xd3801faafafb7698, ; 1114: System.Private.DataContractSerialization.dll => 88
	i64 u0xd3a31d176ff16206, ; 1115: Microsoft.Extensions.AmbientMetadata.Application => 206
	i64 u0xd3e4c8d6a2d5d470, ; 1116: it/Microsoft.Maui.Controls.resources => 418
	i64 u0xd3edcc1f25459a50, ; 1117: System.Reflection.Emit => 95
	i64 u0xd3fcd093baced313, ; 1118: Nito.Disposables.dll => 260
	i64 u0xd41068a87116da7d, ; 1119: Volo.Abp.Data.dll => 286
	i64 u0xd45ca7e6eb54b9d2, ; 1120: Volo.Abp.Uow => 302
	i64 u0xd4645626dffec99d, ; 1121: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 219
	i64 u0xd46b4a8758d1f3ee, ; 1122: Microsoft.Extensions.FileProviders.Composite.dll => 226
	i64 u0xd4fa0abb79079ea9, ; 1123: System.Security.Principal.dll => 131
	i64 u0xd52f53c4b3d62e11, ; 1124: Microsoft.AspNetCore.Connections.Abstractions.dll => 197
	i64 u0xd53e713e94e4fcbe, ; 1125: lib_Rootfly.Mobile.Core.Security.dll.so => 446
	i64 u0xd5507e11a2b2839f, ; 1126: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 355
	i64 u0xd5d04bef8478ea19, ; 1127: Xamarin.AndroidX.Tracing.Tracing.dll => 374
	i64 u0xd60815f26a12e140, ; 1128: Microsoft.Extensions.Logging.Debug.dll => 239
	i64 u0xd6694f8359737e4e, ; 1129: Xamarin.AndroidX.SavedState => 367
	i64 u0xd6949e129339eae5, ; 1130: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 328
	i64 u0xd6d21782156bc35b, ; 1131: Xamarin.AndroidX.SwipeRefreshLayout.dll => 373
	i64 u0xd6de019f6af72435, ; 1132: Xamarin.AndroidX.ConstraintLayout.Core.dll => 325
	i64 u0xd70956d1e6deefb9, ; 1133: Jsr305Binding => 386
	i64 u0xd72329819cbbbc44, ; 1134: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 211
	i64 u0xd72c760af136e863, ; 1135: System.Xml.XmlSerializer.dll => 166
	i64 u0xd753f071e44c2a03, ; 1136: lib_System.Security.SecureString.dll.so => 132
	i64 u0xd7b3764ada9d341d, ; 1137: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 237
	i64 u0xd7f0088bc5ad71f2, ; 1138: Xamarin.AndroidX.VersionedParcelable => 379
	i64 u0xd8113d9a7e8ad136, ; 1139: System.CodeDom => 274
	i64 u0xd824ef6ab33f8f7a, ; 1140: Xamarin.AndroidX.Window.WindowCore.dll => 383
	i64 u0xd8fb25e28ae30a12, ; 1141: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 364
	i64 u0xda1dfa4c534a9251, ; 1142: Microsoft.Extensions.DependencyInjection => 218
	i64 u0xdad05a11827959a3, ; 1143: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 1144: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 1145: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 434
	i64 u0xdb58816721c02a59, ; 1146: lib_System.Reflection.Emit.ILGeneration.dll.so => 93
	i64 u0xdbeda89f832aa805, ; 1147: vi/Microsoft.Maui.Controls.resources.dll => 434
	i64 u0xdbf2a779fbc3ac31, ; 1148: System.Transactions.Local.dll => 153
	i64 u0xdbf9607a441b4505, ; 1149: System.Linq => 63
	i64 u0xdbfc90157a0de9b0, ; 1150: lib_System.Text.Encoding.dll.so => 138
	i64 u0xdc75032002d1a212, ; 1151: lib_System.Transactions.Local.dll.so => 153
	i64 u0xdca8be7403f92d4f, ; 1152: lib_System.Linq.Queryable.dll.so => 62
	i64 u0xdce2c53525640bf3, ; 1153: Microsoft.Extensions.Logging => 236
	i64 u0xdd2b722d78ef5f43, ; 1154: System.Runtime.dll => 119
	i64 u0xdd5a226be5fd17ac, ; 1155: Volo.Abp.VirtualFileSystem => 304
	i64 u0xdd67031857c72f96, ; 1156: lib_System.Text.Encodings.Web.dll.so => 139
	i64 u0xdd70765ad6162057, ; 1157: Xamarin.JSpecify => 395
	i64 u0xdd92e229ad292030, ; 1158: System.Numerics.dll => 86
	i64 u0xddc3a4bf31d61ee0, ; 1159: EduDriver.dll => 0
	i64 u0xdde30e6b77aa6f6c, ; 1160: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 436
	i64 u0xde110ae80fa7c2e2, ; 1161: System.Xml.XDocument.dll => 162
	i64 u0xde327cd8af0a2cbc, ; 1162: lib_Microsoft.Extensions.Configuration.CommandLine.dll.so => 213
	i64 u0xde4726fcdf63a198, ; 1163: Xamarin.AndroidX.Transition => 376
	i64 u0xde572c2b2fb32f93, ; 1164: lib_System.Threading.Tasks.Extensions.dll.so => 146
	i64 u0xde8769ebda7d8647, ; 1165: hr/Microsoft.Maui.Controls.resources.dll => 415
	i64 u0xdee075f3477ef6be, ; 1166: Xamarin.AndroidX.ExifInterface.dll => 337
	i64 u0xdf3b81f65864db44, ; 1167: Microsoft.Extensions.Configuration.UserSecrets.dll => 217
	i64 u0xdf4b773de8fb1540, ; 1168: System.Net.dll => 84
	i64 u0xdf9c7682560a9629, ; 1169: System.Net.ServerSentEvents => 76
	i64 u0xdfa254ebb4346068, ; 1170: System.Net.Ping => 71
	i64 u0xdff9d24d97a12659, ; 1171: Volo.Abp.Localization => 291
	i64 u0xe0142572c095a480, ; 1172: Xamarin.AndroidX.AppCompat.dll => 314
	i64 u0xe021eaa401792a05, ; 1173: System.Text.Encoding.dll => 138
	i64 u0xe02f89350ec78051, ; 1174: Xamarin.AndroidX.CoordinatorLayout.dll => 326
	i64 u0xe02ff568f8e5f275, ; 1175: Microsoft.AspNetCore.Http.Connections.Client.dll => 198
	i64 u0xe0496b9d65ef5474, ; 1176: Xamarin.Android.Glide.DiskLruCache.dll => 307
	i64 u0xe0720930de5a20d0, ; 1177: lib_Volo.Abp.ObjectMapping.dll.so => 297
	i64 u0xe10b760bb1462e7a, ; 1178: lib_System.Security.Cryptography.Primitives.dll.so => 127
	i64 u0xe121cb89b44dea8f, ; 1179: lib_Rootfly.Mobile.Core.Upload.dll.so => 449
	i64 u0xe12fda9bffc0ecdd, ; 1180: Volo.Abp.Timing.dll => 301
	i64 u0xe192a588d4410686, ; 1181: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1182: System.Runtime.Loader => 112
	i64 u0xe1a77eb8831f7741, ; 1183: System.Security.SecureString.dll => 132
	i64 u0xe1b52f9f816c70ef, ; 1184: System.Private.Xml.Linq.dll => 90
	i64 u0xe1d23f7f2e51bed4, ; 1185: AndHUD.dll => 178
	i64 u0xe1e199c8ab02e356, ; 1186: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1187: System.Net.Security.dll => 75
	i64 u0xe209e681b0ca32e5, ; 1188: Rootfly.Mobile.Core.Storage => 447
	i64 u0xe2252a80fe853de4, ; 1189: lib_System.Security.Principal.dll.so => 131
	i64 u0xe22fa4c9c645db62, ; 1190: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe24095a7afddaab3, ; 1191: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 230
	i64 u0xe2420585aeceb728, ; 1192: System.Net.Requests.dll => 74
	i64 u0xe26692647e6bcb62, ; 1193: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 350
	i64 u0xe27532f50ce5b0b1, ; 1194: Microsoft.Extensions.Localization.dll => 234
	i64 u0xe29b73bc11392966, ; 1195: lib-id-Microsoft.Maui.Controls.resources.dll.so => 417
	i64 u0xe2ad448dee50fbdf, ; 1196: System.Xml.Serialization => 161
	i64 u0xe2d920f978f5d85c, ; 1197: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1198: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe31089e70e4e84ee, ; 1199: Microsoft.AspNetCore.Components.WebView.Maui => 196
	i64 u0xe332bacb3eb4a806, ; 1200: Mono.Android.Export.dll => 173
	i64 u0xe3811d68d4fe8463, ; 1201: pt-BR/Microsoft.Maui.Controls.resources.dll => 425
	i64 u0xe384d3b0c0576fd4, ; 1202: Rootfly.Mobile.Core.Storage.dll => 447
	i64 u0xe3a586956771a0ed, ; 1203: lib_SQLite-net.dll.so => 269
	i64 u0xe3b7cbae5ad66c75, ; 1204: lib_System.Security.Cryptography.Encoding.dll.so => 125
	i64 u0xe4292b48f3224d5b, ; 1205: lib_Xamarin.AndroidX.Core.ViewTree.dll.so => 329
	i64 u0xe4507486c308efd4, ; 1206: lib_Xamarin.GooglePlayServices.Location.dll.so => 392
	i64 u0xe494f7ced4ecd10a, ; 1207: hu/Microsoft.Maui.Controls.resources.dll => 416
	i64 u0xe4a9b1e40d1e8917, ; 1208: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 411
	i64 u0xe4f74a0b5bf9703f, ; 1209: System.Runtime.Serialization.Primitives => 116
	i64 u0xe5434e8a119ceb69, ; 1210: lib_Mono.Android.dll.so => 175
	i64 u0xe55703b9ce5c038a, ; 1211: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1212: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 1213: System.Xml.dll => 167
	i64 u0xe7bea09c4900a191, ; 1214: Xamarin.AndroidX.VectorDrawable.dll => 377
	i64 u0xe7e03cc18dcdeb49, ; 1215: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1216: lib_System.Configuration.dll.so => 19
	i64 u0xe8128e5cefbad116, ; 1217: Volo.Abp.Core => 285
	i64 u0xe8397cf3948e7cb7, ; 1218: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 242
	i64 u0xe83ddbccfc6aff3f, ; 1219: Xamarin.Kotlin.StdLib.Jdk7 => 397
	i64 u0xe86b0df4ba9e5db8, ; 1220: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 349
	i64 u0xe896622fe0902957, ; 1221: System.Reflection.Emit.dll => 95
	i64 u0xe89a2a9ef110899b, ; 1222: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1223: Microsoft.Win32.Registry => 5
	i64 u0xe9688159e8cff91e, ; 1224: Volo.Abp.Castle.Core => 284
	i64 u0xe9772100456fb4b4, ; 1225: Microsoft.AspNetCore.Components.dll => 192
	i64 u0xe98163eb702ae5c5, ; 1226: Xamarin.AndroidX.Arch.Core.Runtime => 317
	i64 u0xe994f23ba4c143e5, ; 1227: Xamarin.KotlinX.Coroutines.Android => 399
	i64 u0xe9b9c8c0458fd92a, ; 1228: System.Windows => 158
	i64 u0xe9d166d87a7f2bdb, ; 1229: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 372
	i64 u0xe9e113a80e670257, ; 1230: lib_Sentry.Android.AssemblyReader.dll.so => 267
	i64 u0xea154e342c6ac70f, ; 1231: Microsoft.Extensions.FileProviders.Embedded.dll => 227
	i64 u0xea5a4efc2ad81d1b, ; 1232: Xamarin.Google.ErrorProne.Annotations => 388
	i64 u0xead9843fd0c406aa, ; 1233: lib_Castle.Core.dll.so => 182
	i64 u0xeaf8e9970fc2fe69, ; 1234: System.Management => 278
	i64 u0xeb2313fe9d65b785, ; 1235: Xamarin.AndroidX.ConstraintLayout.dll => 324
	i64 u0xec8abb68d340aac6, ; 1236: Microsoft.AspNetCore.Authorization => 191
	i64 u0xec9f25d696181567, ; 1237: lib_Volo.Abp.Autofac.dll.so => 283
	i64 u0xed19c616b3fcb7eb, ; 1238: Xamarin.AndroidX.VersionedParcelable.dll => 379
	i64 u0xed61d1ce21d3c1ce, ; 1239: lib_Rootfly.Mobile.Core.UI.dll.so => 448
	i64 u0xed6ef763c6fb395f, ; 1240: System.Diagnostics.EventLog.dll => 275
	i64 u0xedc4817167106c23, ; 1241: System.Net.Sockets.dll => 78
	i64 u0xedc632067fb20ff3, ; 1242: System.Memory.dll => 64
	i64 u0xedc8e4ca71a02a8b, ; 1243: Xamarin.AndroidX.Navigation.Runtime.dll => 361
	i64 u0xee25c2570ce19192, ; 1244: lib_Microsoft.Extensions.Localization.Abstractions.dll.so => 235
	i64 u0xee81f5b3f1c4f83b, ; 1245: System.Threading.ThreadPool => 150
	i64 u0xeeb7ebb80150501b, ; 1246: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 321
	i64 u0xeefc635595ef57f0, ; 1247: System.Security.Cryptography.Cng => 123
	i64 u0xef03b1b5a04e9709, ; 1248: System.Text.Encoding.CodePages.dll => 136
	i64 u0xef5bcbe61622ee5f, ; 1249: Xamarin.AndroidX.Tracing.Tracing.Android.dll => 375
	i64 u0xef602c523fe2e87a, ; 1250: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 389
	i64 u0xef72742e1bcca27a, ; 1251: Microsoft.Maui.Essentials.dll => 256
	i64 u0xefd1e0c4e5c9b371, ; 1252: System.Resources.ResourceManager.dll => 102
	i64 u0xefe8f8d5ed3c72ea, ; 1253: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1254: Xamarin.AndroidX.Activity => 309
	i64 u0xeff59cbde4363ec3, ; 1255: System.Threading.AccessControl.dll => 142
	i64 u0xf008bcd238ede2c8, ; 1256: System.CodeDom.dll => 274
	i64 u0xf00c29406ea45e19, ; 1257: es/Microsoft.Maui.Controls.resources.dll => 410
	i64 u0xf038bf84c0c27e83, ; 1258: lib_Microsoft.AspNetCore.SignalR.Client.dll.so => 201
	i64 u0xf09e47b6ae914f6e, ; 1259: System.Net.NameResolution => 69
	i64 u0xf0ac2b489fed2e35, ; 1260: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1261: lib_System.Net.ServicePoint.dll.so => 77
	i64 u0xf0c16dff90fbf5d6, ; 1262: Xamarin.AndroidX.Window.WindowCore.Jvm => 384
	i64 u0xf0de2537ee19c6ca, ; 1263: lib_System.Net.WebHeaderCollection.dll.so => 80
	i64 u0xf1138779fa181c68, ; 1264: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 348
	i64 u0xf11b621fc87b983f, ; 1265: Microsoft.Maui.Controls.Xaml.dll => 254
	i64 u0xf130384c7f0915c6, ; 1266: Rootfly.Mobile.Core.UI.dll => 448
	i64 u0xf1420dc2594163b8, ; 1267: Sentry.Android.AssemblyReader => 267
	i64 u0xf161f4f3c3b7e62c, ; 1268: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1269: System.ValueTuple => 155
	i64 u0xf1c4b4005493d871, ; 1270: System.Formats.Asn1.dll => 38
	i64 u0xf1cf537f8857477f, ; 1271: Microsoft.Extensions.Compliance.Abstractions => 209
	i64 u0xf22514cfad2d598b, ; 1272: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android.dll.so => 356
	i64 u0xf238bd79489d3a96, ; 1273: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 423
	i64 u0xf2a69492c6bd46b0, ; 1274: lib_Xamarin.Kotlin.StdLib.Jdk7.dll.so => 397
	i64 u0xf2ddcf610633301b, ; 1275: lib_Autofac.Extras.DynamicProxy.dll.so => 181
	i64 u0xf2feea356ba760af, ; 1276: Xamarin.AndroidX.Arch.Core.Runtime.dll => 317
	i64 u0xf300e085f8acd238, ; 1277: lib_System.ServiceProcess.dll.so => 135
	i64 u0xf34e52b26e7e059d, ; 1278: System.Runtime.CompilerServices.VisualC.dll => 105
	i64 u0xf37221fda4ef8830, ; 1279: lib_Xamarin.Google.Android.Material.dll.so => 385
	i64 u0xf3729cfe7e8a8cc9, ; 1280: Microsoft.Extensions.Diagnostics.ExceptionSummarization => 223
	i64 u0xf3ad9b8fb3eefd12, ; 1281: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3caa4fa646c92a8, ; 1282: lib_System.Threading.RateLimiting.dll.so => 279
	i64 u0xf3ddfe05336abf29, ; 1283: System => 168
	i64 u0xf408654b2a135055, ; 1284: System.Reflection.Emit.ILGeneration.dll => 93
	i64 u0xf4103170a1de5bd0, ; 1285: System.Linq.Queryable.dll => 62
	i64 u0xf42d20c23173d77c, ; 1286: lib_System.ServiceModel.Web.dll.so => 134
	i64 u0xf4c1dd70a5496a17, ; 1287: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1288: System.ServiceProcess.dll => 135
	i64 u0xf4eeeaa566e9b970, ; 1289: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 332
	i64 u0xf518f63ead11fcd1, ; 1290: System.Threading.Tasks => 148
	i64 u0xf5fc7602fe27b333, ; 1291: System.Net.WebHeaderCollection => 80
	i64 u0xf6077741019d7428, ; 1292: Xamarin.AndroidX.CoordinatorLayout => 326
	i64 u0xf61ade9836ad4692, ; 1293: Microsoft.IdentityModel.Tokens.dll => 251
	i64 u0xf6742cbf457c450b, ; 1294: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 349
	i64 u0xf6c0e7d55a7a4e4f, ; 1295: Microsoft.IdentityModel.JsonWebTokens => 249
	i64 u0xf6de7fa3776f8927, ; 1296: lib_Microsoft.Extensions.Configuration.Json.dll.so => 216
	i64 u0xf6e8de2aebcbb422, ; 1297: lib_Xamarin.AndroidX.Window.WindowCore.Jvm.dll.so => 384
	i64 u0xf6e9ed5983c08f64, ; 1298: Microsoft.Extensions.Configuration.CommandLine.dll => 213
	i64 u0xf6f893f692f8cb43, ; 1299: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 242
	i64 u0xf70c0a7bf8ccf5af, ; 1300: System.Web => 157
	i64 u0xf747f81cbbea3ecc, ; 1301: Rootfly.Mobile.Core.Media.dll => 442
	i64 u0xf76d733b293d0317, ; 1302: Volo.Abp.Autofac.dll => 283
	i64 u0xf77b20923f07c667, ; 1303: de/Microsoft.Maui.Controls.resources.dll => 408
	i64 u0xf7e2cac4c45067b3, ; 1304: lib_System.Numerics.Vectors.dll.so => 85
	i64 u0xf7e74930e0e3d214, ; 1305: zh-HK/Microsoft.Maui.Controls.resources.dll => 435
	i64 u0xf84773b5c81e3cef, ; 1306: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 433
	i64 u0xf8aac5ea82de1348, ; 1307: System.Linq.Queryable => 62
	i64 u0xf8b77539b362d3ba, ; 1308: lib_System.Reflection.Primitives.dll.so => 98
	i64 u0xf8e045dc345b2ea3, ; 1309: lib_Xamarin.AndroidX.RecyclerView.dll.so => 365
	i64 u0xf915dc29808193a1, ; 1310: System.Web.HttpUtility.dll => 156
	i64 u0xf96a462269c2227d, ; 1311: Volo.Abp.Localization.Abstractions => 292
	i64 u0xf96c777a2a0686f4, ; 1312: hi/Microsoft.Maui.Controls.resources.dll => 414
	i64 u0xf9be54c8bcf8ff3b, ; 1313: System.Security.AccessControl.dll => 120
	i64 u0xf9eec5bb3a6aedc6, ; 1314: Microsoft.Extensions.Options => 241
	i64 u0xfa0e82300e67f913, ; 1315: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1316: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1317: lib_System.Net.Security.dll.so => 75
	i64 u0xfa504dfa0f097d72, ; 1318: Microsoft.Extensions.FileProviders.Abstractions.dll => 225
	i64 u0xfa5ed7226d978949, ; 1319: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 404
	i64 u0xfa645d91e9fc4cba, ; 1320: System.Threading.Thread => 149
	i64 u0xfad4d2c770e827f9, ; 1321: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb022853d73b7fa5, ; 1322: lib_SQLitePCLRaw.batteries_v2.dll.so => 270
	i64 u0xfb06dd2338e6f7c4, ; 1323: System.Net.Ping.dll => 71
	i64 u0xfb087abe5365e3b7, ; 1324: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb12398ea167c2d9, ; 1325: lib_Microsoft.Extensions.Diagnostics.ExceptionSummarization.dll.so => 223
	i64 u0xfb1fcf63a1051a6e, ; 1326: Volo.Abp.ObjectMapping.dll => 297
	i64 u0xfb3cb754cb2d9fc0, ; 1327: lib_Plugin.LocalNotification.dll.so => 261
	i64 u0xfb846e949baff5ea, ; 1328: System.Xml.Serialization.dll => 161
	i64 u0xfbad3e4ce4b98145, ; 1329: System.Security.Cryptography.X509Certificates => 128
	i64 u0xfbf0a31c9fc34bc4, ; 1330: lib_System.Net.Http.dll.so => 66
	i64 u0xfc6b7527cc280b3f, ; 1331: lib_System.Runtime.Serialization.Formatters.dll.so => 114
	i64 u0xfc719aec26adf9d9, ; 1332: Xamarin.AndroidX.Navigation.Fragment.dll => 360
	i64 u0xfc82690c2fe2735c, ; 1333: Xamarin.AndroidX.Lifecycle.Process.dll => 347
	i64 u0xfc93fc307d279893, ; 1334: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1335: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 1336: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 333
	i64 u0xfd2e866c678cac90, ; 1337: lib_Microsoft.AspNetCore.Components.WebView.Maui.dll.so => 196
	i64 u0xfd46203333fcaf75, ; 1338: Volo.Abp.Validation.Abstractions => 303
	i64 u0xfd49b3c1a76e2748, ; 1339: System.Runtime.InteropServices.RuntimeInformation => 109
	i64 u0xfd536c702f64dc47, ; 1340: System.Text.Encoding.Extensions => 137
	i64 u0xfd583f7657b6a1cb, ; 1341: Xamarin.AndroidX.Fragment => 338
	i64 u0xfd8dd91a2c26bd5d, ; 1342: Xamarin.AndroidX.Lifecycle.Runtime => 348
	i64 u0xfda36abccf05cf5c, ; 1343: System.Net.WebSockets.Client => 82
	i64 u0xfdbe4710aa9beeff, ; 1344: CommunityToolkit.Maui => 184
	i64 u0xfddbe9695626a7f5, ; 1345: Xamarin.AndroidX.Lifecycle.Common => 341
	i64 u0xfddea26ca8659c2e, ; 1346: Volo.Abp.EventBus.Abstractions.dll => 287
	i64 u0xfe907581c20f01c6, ; 1347: Rootfly.Mobile.Core => 441
	i64 u0xfe9856c3af9365ab, ; 1348: lib_Microsoft.Extensions.Configuration.FileExtensions.dll.so => 215
	i64 u0xfeae9952cf03b8cb, ; 1349: tr/Microsoft.Maui.Controls.resources => 432
	i64 u0xfeb545b5b50e0433, ; 1350: lib_EduDriver.Shared.dll.so => 438
	i64 u0xfebe1950717515f9, ; 1351: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 346
	i64 u0xff270a55858bac8d, ; 1352: System.Security.Principal => 131
	i64 u0xff9b54613e0d2cc8, ; 1353: System.Net.Http.Json => 65
	i64 u0xffb5607c2db1b7e8, ; 1354: Xamarin.Kotlin.StdLib.Jdk8 => 398
	i64 u0xffdb7a971be4ec73 ; 1355: System.ValueTuple.dll => 155
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1356 x i32] [
	i32 42, i32 400, i32 373, i32 13, i32 203, i32 361, i32 185, i32 242,
	i32 258, i32 107, i32 208, i32 174, i32 48, i32 314, i32 7, i32 273,
	i32 88, i32 428, i32 406, i32 434, i32 248, i32 334, i32 72, i32 393,
	i32 365, i32 12, i32 255, i32 104, i32 435, i32 159, i32 233, i32 19,
	i32 339, i32 321, i32 192, i32 164, i32 336, i32 377, i32 170, i32 428,
	i32 10, i32 183, i32 239, i32 293, i32 378, i32 98, i32 332, i32 333,
	i32 13, i32 241, i32 10, i32 391, i32 300, i32 129, i32 97, i32 207,
	i32 143, i32 296, i32 39, i32 429, i32 403, i32 204, i32 380, i32 274,
	i32 425, i32 265, i32 175, i32 308, i32 5, i32 299, i32 256, i32 68,
	i32 370, i32 282, i32 132, i32 205, i32 369, i32 217, i32 295, i32 335,
	i32 69, i32 266, i32 322, i32 67, i32 57, i32 205, i32 331, i32 52,
	i32 43, i32 240, i32 127, i32 68, i32 83, i32 440, i32 189, i32 350,
	i32 161, i32 94, i32 190, i32 101, i32 365, i32 144, i32 154, i32 318,
	i32 245, i32 412, i32 165, i32 172, i32 413, i32 219, i32 83, i32 395,
	i32 322, i32 202, i32 4, i32 5, i32 275, i32 51, i32 103, i32 444,
	i32 56, i32 122, i32 100, i32 171, i32 120, i32 400, i32 21, i32 416,
	i32 139, i32 262, i32 99, i32 403, i32 79, i32 422, i32 292, i32 372,
	i32 121, i32 245, i32 444, i32 8, i32 168, i32 431, i32 71, i32 307,
	i32 193, i32 351, i32 366, i32 221, i32 228, i32 174, i32 148, i32 40,
	i32 370, i32 47, i32 30, i32 363, i32 420, i32 445, i32 147, i32 279,
	i32 241, i32 166, i32 28, i32 86, i32 267, i32 374, i32 79, i32 287,
	i32 43, i32 29, i32 247, i32 42, i32 105, i32 119, i32 312, i32 45,
	i32 93, i32 431, i32 56, i32 189, i32 151, i32 391, i32 190, i32 282,
	i32 149, i32 102, i32 49, i32 20, i32 327, i32 287, i32 268, i32 116,
	i32 305, i32 412, i32 387, i32 270, i32 300, i32 289, i32 396, i32 243,
	i32 179, i32 96, i32 58, i32 276, i32 417, i32 415, i32 247, i32 383,
	i32 83, i32 387, i32 172, i32 26, i32 398, i32 72, i32 364, i32 222,
	i32 337, i32 359, i32 300, i32 433, i32 70, i32 33, i32 411, i32 14,
	i32 141, i32 276, i32 38, i32 437, i32 229, i32 323, i32 183, i32 284,
	i32 238, i32 187, i32 424, i32 298, i32 136, i32 94, i32 90, i32 152,
	i32 384, i32 430, i32 24, i32 441, i32 140, i32 57, i32 142, i32 51,
	i32 409, i32 224, i32 252, i32 29, i32 160, i32 34, i32 167, i32 207,
	i32 231, i32 338, i32 248, i32 52, i32 227, i32 451, i32 382, i32 92,
	i32 262, i32 319, i32 35, i32 299, i32 412, i32 160, i32 178, i32 229,
	i32 9, i32 410, i32 450, i32 78, i32 246, i32 59, i32 55, i32 226,
	i32 255, i32 406, i32 253, i32 13, i32 381, i32 210, i32 316, i32 111,
	i32 283, i32 354, i32 443, i32 32, i32 106, i32 86, i32 94, i32 53,
	i32 259, i32 220, i32 98, i32 394, i32 58, i32 9, i32 104, i32 331,
	i32 69, i32 392, i32 181, i32 380, i32 220, i32 405, i32 440, i32 290,
	i32 225, i32 127, i32 290, i32 366, i32 118, i32 137, i32 252, i32 368,
	i32 251, i32 128, i32 108, i32 396, i32 133, i32 318, i32 389, i32 217,
	i32 150, i32 179, i32 159, i32 339, i32 327, i32 270, i32 215, i32 334,
	i32 206, i32 366, i32 99, i32 24, i32 195, i32 342, i32 371, i32 146,
	i32 230, i32 449, i32 358, i32 3, i32 280, i32 170, i32 315, i32 234,
	i32 102, i32 164, i32 101, i32 342, i32 329, i32 25, i32 278, i32 95,
	i32 171, i32 175, i32 310, i32 3, i32 424, i32 375, i32 336, i32 232,
	i32 1, i32 116, i32 187, i32 396, i32 339, i32 347, i32 276, i32 232,
	i32 33, i32 6, i32 428, i32 159, i32 187, i32 426, i32 440, i32 53,
	i32 303, i32 204, i32 87, i32 235, i32 379, i32 213, i32 448, i32 363,
	i32 44, i32 346, i32 106, i32 47, i32 140, i32 356, i32 65, i32 357,
	i32 446, i32 70, i32 281, i32 82, i32 60, i32 91, i32 157, i32 316,
	i32 135, i32 112, i32 59, i32 418, i32 357, i32 252, i32 364, i32 174,
	i32 203, i32 136, i32 143, i32 40, i32 405, i32 294, i32 272, i32 212,
	i32 251, i32 268, i32 253, i32 61, i32 439, i32 186, i32 212, i32 353,
	i32 245, i32 293, i32 81, i32 25, i32 36, i32 101, i32 350, i32 72,
	i32 22, i32 327, i32 257, i32 429, i32 123, i32 70, i32 109, i32 435,
	i32 121, i32 119, i32 341, i32 359, i32 343, i32 11, i32 2, i32 126,
	i32 117, i32 265, i32 145, i32 41, i32 263, i32 89, i32 311, i32 271,
	i32 177, i32 230, i32 27, i32 151, i32 212, i32 419, i32 218, i32 388,
	i32 310, i32 1, i32 312, i32 44, i32 326, i32 152, i32 18, i32 199,
	i32 443, i32 88, i32 407, i32 390, i32 41, i32 206, i32 346, i32 320,
	i32 398, i32 351, i32 198, i32 96, i32 236, i32 284, i32 28, i32 41,
	i32 438, i32 80, i32 196, i32 335, i32 323, i32 147, i32 110, i32 321,
	i32 289, i32 11, i32 107, i32 139, i32 16, i32 124, i32 294, i32 67,
	i32 277, i32 160, i32 22, i32 244, i32 272, i32 409, i32 402, i32 104,
	i32 240, i32 263, i32 218, i32 401, i32 64, i32 299, i32 58, i32 254,
	i32 285, i32 408, i32 112, i32 177, i32 362, i32 399, i32 9, i32 385,
	i32 122, i32 246, i32 100, i32 268, i32 298, i32 263, i32 107, i32 76,
	i32 354, i32 292, i32 184, i32 253, i32 113, i32 313, i32 49, i32 59,
	i32 20, i32 353, i32 330, i32 259, i32 260, i32 199, i32 73, i32 325,
	i32 158, i32 39, i32 301, i32 407, i32 200, i32 35, i32 450, i32 38,
	i32 413, i32 272, i32 445, i32 110, i32 422, i32 21, i32 394, i32 234,
	i32 352, i32 257, i32 15, i32 209, i32 243, i32 81, i32 81, i32 330,
	i32 243, i32 360, i32 369, i32 155, i32 21, i32 298, i32 255, i32 406,
	i32 50, i32 51, i32 247, i32 432, i32 422, i32 96, i32 306, i32 222,
	i32 418, i32 16, i32 265, i32 329, i32 203, i32 125, i32 415, i32 163,
	i32 45, i32 388, i32 449, i32 188, i32 118, i32 64, i32 169, i32 221,
	i32 261, i32 210, i32 197, i32 14, i32 367, i32 113, i32 301, i32 444,
	i32 313, i32 61, i32 216, i32 76, i32 123, i32 421, i32 2, i32 431,
	i32 199, i32 338, i32 352, i32 392, i32 223, i32 231, i32 395, i32 195,
	i32 352, i32 6, i32 320, i32 411, i32 334, i32 249, i32 17, i32 429,
	i32 408, i32 79, i32 324, i32 200, i32 359, i32 296, i32 391, i32 294,
	i32 185, i32 133, i32 394, i32 260, i32 290, i32 201, i32 421, i32 193,
	i32 85, i32 239, i32 12, i32 34, i32 121, i32 402, i32 347, i32 281,
	i32 176, i32 336, i32 87, i32 305, i32 393, i32 18, i32 380, i32 211,
	i32 345, i32 73, i32 97, i32 273, i32 194, i32 168, i32 340, i32 235,
	i32 84, i32 437, i32 240, i32 314, i32 319, i32 157, i32 36, i32 154,
	i32 433, i32 269, i32 279, i32 248, i32 436, i32 226, i32 220, i32 244,
	i32 147, i32 224, i32 56, i32 115, i32 277, i32 320, i32 377, i32 376,
	i32 304, i32 37, i32 437, i32 210, i32 117, i32 286, i32 229, i32 312,
	i32 14, i32 306, i32 149, i32 43, i32 256, i32 293, i32 310, i32 438,
	i32 291, i32 100, i32 401, i32 285, i32 171, i32 16, i32 368, i32 48,
	i32 109, i32 296, i32 99, i32 207, i32 357, i32 204, i32 27, i32 130,
	i32 29, i32 413, i32 0, i32 225, i32 369, i32 130, i32 44, i32 330,
	i32 441, i32 335, i32 152, i32 8, i32 375, i32 275, i32 358, i32 414,
	i32 427, i32 271, i32 393, i32 426, i32 134, i32 291, i32 425, i32 42,
	i32 402, i32 271, i32 33, i32 451, i32 46, i32 146, i32 353, i32 450,
	i32 254, i32 202, i32 344, i32 331, i32 216, i32 140, i32 281, i32 63,
	i32 134, i32 405, i32 48, i32 163, i32 317, i32 344, i32 306, i32 341,
	i32 421, i32 376, i32 46, i32 167, i32 250, i32 176, i32 340, i32 259,
	i32 250, i32 182, i32 288, i32 410, i32 337, i32 189, i32 417, i32 257,
	i32 390, i32 18, i32 8, i32 180, i32 188, i32 328, i32 368, i32 126,
	i32 280, i32 60, i32 144, i32 186, i32 361, i32 420, i32 180, i32 183,
	i32 348, i32 264, i32 386, i32 246, i32 382, i32 302, i32 446, i32 153,
	i32 288, i32 145, i32 400, i32 128, i32 399, i32 163, i32 165, i32 332,
	i32 309, i32 211, i32 362, i32 439, i32 423, i32 26, i32 358, i32 345,
	i32 258, i32 228, i32 261, i32 84, i32 197, i32 382, i32 129, i32 387,
	i32 103, i32 151, i32 385, i32 383, i32 178, i32 363, i32 54, i32 165,
	i32 280, i32 170, i32 133, i32 288, i32 227, i32 37, i32 378, i32 420,
	i32 221, i32 186, i32 193, i32 22, i32 114, i32 92, i32 50, i32 61,
	i32 124, i32 304, i32 85, i32 129, i32 166, i32 386, i32 169, i32 367,
	i32 370, i32 333, i32 305, i32 349, i32 4, i32 343, i32 416, i32 173,
	i32 2, i32 228, i32 390, i32 354, i32 118, i32 249, i32 311, i32 19,
	i32 185, i32 237, i32 91, i32 66, i32 30, i32 219, i32 409, i32 302,
	i32 244, i32 264, i32 325, i32 60, i32 202, i32 113, i32 345, i32 32,
	i32 130, i32 162, i32 181, i32 427, i32 323, i32 143, i32 423, i32 156,
	i32 17, i32 322, i32 308, i32 77, i32 75, i32 15, i32 172, i32 87,
	i32 269, i32 126, i32 344, i32 355, i32 214, i32 324, i32 430, i32 351,
	i32 34, i32 442, i32 182, i32 192, i32 120, i32 141, i32 289, i32 124,
	i32 108, i32 407, i32 442, i32 378, i32 264, i32 319, i32 414, i32 404,
	i32 54, i32 47, i32 28, i32 142, i32 148, i32 237, i32 397, i32 150,
	i32 445, i32 232, i32 35, i32 277, i32 430, i32 177, i32 231, i32 278,
	i32 77, i32 164, i32 297, i32 1, i32 356, i32 295, i32 371, i32 179,
	i32 426, i32 419, i32 162, i32 12, i32 158, i32 190, i32 195, i32 214,
	i32 154, i32 78, i32 233, i32 282, i32 105, i32 114, i32 273, i32 316,
	i32 200, i32 191, i32 66, i32 67, i32 381, i32 45, i32 318, i32 111,
	i32 303, i32 238, i32 7, i32 315, i32 55, i32 311, i32 65, i32 404,
	i32 328, i32 266, i32 20, i32 111, i32 103, i32 63, i32 145, i32 191,
	i32 309, i32 7, i32 250, i32 214, i32 419, i32 173, i32 50, i32 381,
	i32 117, i32 0, i32 144, i32 188, i32 233, i32 169, i32 180, i32 82,
	i32 115, i32 355, i32 208, i32 224, i32 17, i32 74, i32 360, i32 91,
	i32 307, i32 295, i32 89, i32 122, i32 201, i32 374, i32 215, i32 313,
	i32 286, i32 362, i32 137, i32 156, i32 108, i32 11, i32 92, i32 31,
	i32 184, i32 194, i32 208, i32 432, i32 138, i32 443, i32 424, i32 266,
	i32 427, i32 372, i32 308, i32 40, i32 451, i32 262, i32 371, i32 205,
	i32 141, i32 401, i32 403, i32 25, i32 176, i32 439, i32 198, i32 436,
	i32 74, i32 342, i32 340, i32 373, i32 258, i32 209, i32 27, i32 238,
	i32 68, i32 90, i32 97, i32 115, i32 31, i32 106, i32 343, i32 447,
	i32 37, i32 222, i32 73, i32 194, i32 389, i32 110, i32 125, i32 315,
	i32 89, i32 236, i32 88, i32 206, i32 418, i32 95, i32 260, i32 286,
	i32 302, i32 219, i32 226, i32 131, i32 197, i32 446, i32 355, i32 374,
	i32 239, i32 367, i32 328, i32 373, i32 325, i32 386, i32 211, i32 166,
	i32 132, i32 237, i32 379, i32 274, i32 383, i32 364, i32 218, i32 10,
	i32 49, i32 434, i32 93, i32 434, i32 153, i32 63, i32 138, i32 153,
	i32 62, i32 236, i32 119, i32 304, i32 139, i32 395, i32 86, i32 0,
	i32 436, i32 162, i32 213, i32 376, i32 146, i32 415, i32 337, i32 217,
	i32 84, i32 76, i32 71, i32 291, i32 314, i32 138, i32 326, i32 198,
	i32 307, i32 297, i32 127, i32 449, i32 301, i32 54, i32 112, i32 132,
	i32 90, i32 178, i32 23, i32 75, i32 447, i32 131, i32 31, i32 230,
	i32 74, i32 350, i32 234, i32 417, i32 161, i32 23, i32 4, i32 196,
	i32 173, i32 425, i32 447, i32 269, i32 125, i32 329, i32 392, i32 416,
	i32 411, i32 116, i32 175, i32 32, i32 3, i32 167, i32 377, i32 30,
	i32 19, i32 285, i32 242, i32 397, i32 349, i32 95, i32 36, i32 5,
	i32 284, i32 192, i32 317, i32 399, i32 158, i32 372, i32 267, i32 227,
	i32 388, i32 182, i32 278, i32 324, i32 191, i32 283, i32 379, i32 448,
	i32 275, i32 78, i32 64, i32 361, i32 235, i32 150, i32 321, i32 123,
	i32 136, i32 375, i32 389, i32 256, i32 102, i32 39, i32 309, i32 142,
	i32 274, i32 410, i32 201, i32 69, i32 26, i32 77, i32 384, i32 80,
	i32 348, i32 254, i32 448, i32 267, i32 24, i32 155, i32 38, i32 209,
	i32 356, i32 423, i32 397, i32 181, i32 317, i32 135, i32 105, i32 385,
	i32 223, i32 57, i32 279, i32 168, i32 93, i32 62, i32 134, i32 46,
	i32 135, i32 332, i32 148, i32 80, i32 326, i32 251, i32 349, i32 249,
	i32 216, i32 384, i32 213, i32 242, i32 157, i32 442, i32 283, i32 408,
	i32 85, i32 435, i32 433, i32 62, i32 98, i32 365, i32 156, i32 292,
	i32 414, i32 120, i32 241, i32 6, i32 15, i32 75, i32 225, i32 404,
	i32 149, i32 52, i32 270, i32 71, i32 23, i32 223, i32 297, i32 261,
	i32 161, i32 128, i32 66, i32 114, i32 360, i32 347, i32 55, i32 53,
	i32 333, i32 196, i32 303, i32 109, i32 137, i32 338, i32 348, i32 82,
	i32 184, i32 341, i32 287, i32 441, i32 215, i32 432, i32 438, i32 346,
	i32 131, i32 65, i32 398, i32 155
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.mm.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.mm.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ e1d3646df9cb50b2a0924f5b67fa78f9750ae489"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
