; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [242 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 65
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 94
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 13
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 89
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 79
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 79
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 46
	i32 166922606, ; 7: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 30
	i32 172012715, ; 8: FastAndroidCamera.dll => 0xa40b4ab => 4
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 44
	i32 219130465, ; 11: Xamarin.Android.Support.v4 => 0xd0faa61 => 35
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 114
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 60
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 120
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 108
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 49
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 64
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 58
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 36
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 23
	i32 334355562, ; 21: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 98
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 62
	i32 347068432, ; 23: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 17
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 22
	i32 389971796, ; 25: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 31
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 48
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 88
	i32 442565967, ; 28: System.Collections => 0x1a61054f => 112
	i32 450948140, ; 29: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 57
	i32 465846621, ; 30: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 31: System.dll => 0x1bff388e => 21
	i32 476646585, ; 32: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 58
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 69
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 115
	i32 514659665, ; 35: Xamarin.Android.Support.Compat => 0x1ead1551 => 30
	i32 526420162, ; 36: System.Transactions.dll => 0x1f6088c2 => 102
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 113
	i32 605376203, ; 38: System.IO.Compression.FileSystem => 0x24154ecb => 106
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 53
	i32 663517072, ; 40: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 85
	i32 666292255, ; 41: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 41
	i32 690569205, ; 42: System.Xml.Linq.dll => 0x29293ff5 => 28
	i32 692692150, ; 43: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 29
	i32 739892460, ; 44: MarstonEventsApp.dll => 0x2c19dcec => 7
	i32 748832960, ; 45: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 15
	i32 775507847, ; 46: System.IO.Compression => 0x2e394f87 => 105
	i32 809851609, ; 47: System.Drawing.Common.dll => 0x30455ad9 => 104
	i32 843511501, ; 48: Xamarin.AndroidX.Print => 0x3246f6cd => 76
	i32 865465478, ; 49: zxing.dll => 0x3395f486 => 95
	i32 877678880, ; 50: System.Globalization.dll => 0x34505120 => 120
	i32 882883187, ; 51: Xamarin.Android.Support.v4.dll => 0x349fba73 => 35
	i32 928116545, ; 52: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 94
	i32 954320159, ; 53: ZXing.Net.Mobile.Forms => 0x38e1c51f => 98
	i32 955402788, ; 54: Newtonsoft.Json => 0x38f24a24 => 13
	i32 958213972, ; 55: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 34
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 62
	i32 974778368, ; 57: FormsViewGroup.dll => 0x3a19f000 => 5
	i32 992768348, ; 58: System.Collections.dll => 0x3b2c715c => 112
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1028951442, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 8
	i32 1035644815, ; 61: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 40
	i32 1042160112, ; 62: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 91
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 66
	i32 1098259244, ; 64: System => 0x41761b2c => 21
	i32 1134191450, ; 65: ZXingNetMobile.dll => 0x439a635a => 100
	i32 1175144683, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 83
	i32 1178241025, ; 67: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1186231468, ; 68: Newtonsoft.Json.Bson.dll => 0x46b474ac => 12
	i32 1204270330, ; 69: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 41
	i32 1267360935, ; 70: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 84
	i32 1292207520, ; 71: SQLitePCLRaw.core.dll => 0x4d0585a0 => 16
	i32 1293217323, ; 72: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 55
	i32 1364015309, ; 73: System.IO => 0x514d38cd => 118
	i32 1365406463, ; 74: System.ServiceModel.Internals.dll => 0x516272ff => 109
	i32 1376866003, ; 75: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1392190200, ; 76: MarstonEventsApp => 0x52fb22f8 => 7
	i32 1395857551, ; 77: Xamarin.AndroidX.Media.dll => 0x5333188f => 70
	i32 1406073936, ; 78: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 50
	i32 1411638395, ; 79: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 25
	i32 1444270606, ; 80: XamarinApp.Android.dll => 0x5615d20e => 0
	i32 1445445088, ; 81: Xamarin.Android.Support.Fragment => 0x5627bde0 => 33
	i32 1457743152, ; 82: System.Runtime.Extensions.dll => 0x56e36530 => 113
	i32 1460219004, ; 83: Xamarin.Forms.Xaml => 0x57092c7c => 92
	i32 1462112819, ; 84: System.IO.Compression.dll => 0x57261233 => 105
	i32 1469204771, ; 85: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 39
	i32 1543031311, ; 86: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 119
	i32 1571005899, ; 87: zxing.portable => 0x5da3a5cb => 99
	i32 1574652163, ; 88: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 32
	i32 1582372066, ; 89: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 54
	i32 1592978981, ; 90: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 91: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 68
	i32 1624863272, ; 92: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 87
	i32 1636350590, ; 93: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 52
	i32 1639515021, ; 94: System.Net.Http.dll => 0x61b9038d => 2
	i32 1639986890, ; 95: System.Text.RegularExpressions => 0x61c036ca => 119
	i32 1657153582, ; 96: System.Runtime => 0x62c6282e => 26
	i32 1658241508, ; 97: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 81
	i32 1658251792, ; 98: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 93
	i32 1670060433, ; 99: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 49
	i32 1701541528, ; 100: System.Diagnostics.Debug.dll => 0x656b7698 => 114
	i32 1711441057, ; 101: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 17
	i32 1729485958, ; 102: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 45
	i32 1766324549, ; 103: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1776026572, ; 104: System.Core.dll => 0x69dc03cc => 20
	i32 1788241197, ; 105: Xamarin.AndroidX.Fragment => 0x6a96652d => 57
	i32 1808609942, ; 106: Xamarin.AndroidX.Loader => 0x6bcd3296 => 68
	i32 1813201214, ; 107: Xamarin.Google.Android.Material => 0x6c13413e => 93
	i32 1818569960, ; 108: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1867746548, ; 109: Xamarin.Essentials.dll => 0x6f538cf4 => 88
	i32 1878053835, ; 110: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 92
	i32 1885316902, ; 111: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 42
	i32 1904184254, ; 112: FastAndroidCamera => 0x717f8bbe => 4
	i32 1919157823, ; 113: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 71
	i32 2011961780, ; 114: System.Buffers.dll => 0x77ec19b4 => 19
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 66
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 63
	i32 2069514766, ; 117: Newtonsoft.Json.Bson => 0x7b5a4a0e => 12
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 26
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 24
	i32 2097448633, ; 120: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 59
	i32 2103459038, ; 121: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 18
	i32 2126786730, ; 122: Xamarin.Forms.Platform.Android => 0x7ec430aa => 90
	i32 2166116741, ; 123: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 32
	i32 2193016926, ; 124: System.ObjectModel.dll => 0x82b6c85e => 115
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 83
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 69
	i32 2249019907, ; 128: XamarinApp.Android => 0x860d5203 => 0
	i32 2256548716, ; 129: Xamarin.AndroidX.MultiDex => 0x8680336c => 71
	i32 2261435625, ; 130: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 61
	i32 2279755925, ; 131: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 77
	i32 2315684594, ; 132: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 37
	i32 2329204181, ; 133: zxing.portable.dll => 0x8ad4d5d5 => 99
	i32 2330457430, ; 134: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 31
	i32 2341995103, ; 135: ZXingNetMobile => 0x8b98025f => 100
	i32 2373288475, ; 136: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 33
	i32 2409053734, ; 137: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 75
	i32 2431243866, ; 138: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 96
	i32 2454642406, ; 139: System.Text.Encoding.dll => 0x924edee6 => 117
	i32 2465273461, ; 140: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 15
	i32 2465532216, ; 141: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 48
	i32 2471841756, ; 142: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 143: Java.Interop.dll => 0x93918882 => 6
	i32 2482213323, ; 144: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 97
	i32 2501346920, ; 145: System.Data.DataSetExtensions => 0x95178668 => 103
	i32 2505896520, ; 146: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 65
	i32 2581819634, ; 147: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 84
	i32 2620871830, ; 148: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 52
	i32 2624644809, ; 149: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 56
	i32 2633051222, ; 150: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 64
	i32 2693849962, ; 151: System.IO.dll => 0xa090e36a => 118
	i32 2701096212, ; 152: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 81
	i32 2715334215, ; 153: System.Threading.Tasks.dll => 0xa1d8b647 => 111
	i32 2732626843, ; 154: Xamarin.AndroidX.Activity => 0xa2e0939b => 36
	i32 2737747696, ; 155: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 39
	i32 2766581644, ; 156: Xamarin.Forms.Core => 0xa4e6af8c => 89
	i32 2778768386, ; 157: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 86
	i32 2810250172, ; 158: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 50
	i32 2819470561, ; 159: System.Xml.dll => 0xa80db4e1 => 27
	i32 2853208004, ; 160: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 86
	i32 2855708567, ; 161: Xamarin.AndroidX.Transition => 0xaa36a797 => 82
	i32 2903344695, ; 162: System.ComponentModel.Composition => 0xad0d8637 => 107
	i32 2905242038, ; 163: mscorlib.dll => 0xad2a79b6 => 11
	i32 2916838712, ; 164: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 87
	i32 2919462931, ; 165: System.Numerics.Vectors.dll => 0xae037813 => 24
	i32 2921128767, ; 166: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 38
	i32 2978675010, ; 167: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 55
	i32 3024354802, ; 168: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 60
	i32 3044182254, ; 169: FormsViewGroup => 0xb57288ee => 5
	i32 3057625584, ; 170: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 72
	i32 3075834255, ; 171: System.Threading.Tasks => 0xb755818f => 111
	i32 3092211740, ; 172: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 34
	i32 3111772706, ; 173: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 174: System.Data.dll => 0xbefef58f => 101
	i32 3211777861, ; 175: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 54
	i32 3215347189, ; 176: zxing => 0xbfa64df5 => 95
	i32 3220365878, ; 177: System.Threading => 0xbff2e236 => 116
	i32 3247949154, ; 178: Mono.Security => 0xc197c562 => 110
	i32 3258312781, ; 179: Xamarin.AndroidX.CardView => 0xc235e84d => 45
	i32 3267021929, ; 180: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 43
	i32 3286872994, ; 181: SQLite-net.dll => 0xc3e9b3a2 => 14
	i32 3299363146, ; 182: System.Text.Encoding => 0xc4a8494a => 117
	i32 3317135071, ; 183: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 53
	i32 3317144872, ; 184: System.Data => 0xc5b79d28 => 101
	i32 3340431453, ; 185: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 42
	i32 3346324047, ; 186: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3353484488, ; 187: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 59
	i32 3360279109, ; 188: SQLitePCLRaw.core => 0xc849ca45 => 16
	i32 3362522851, ; 189: Xamarin.AndroidX.Core => 0xc86c06e3 => 51
	i32 3366347497, ; 190: Java.Interop => 0xc8a662e9 => 6
	i32 3374999561, ; 191: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 77
	i32 3395150330, ; 192: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 25
	i32 3404865022, ; 193: System.ServiceModel.Internals => 0xcaf21dfe => 109
	i32 3428513518, ; 194: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 9
	i32 3429136800, ; 195: System.Xml => 0xcc6479a0 => 27
	i32 3430777524, ; 196: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 197: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 29
	i32 3441283291, ; 198: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 56
	i32 3476120550, ; 199: Mono.Android => 0xcf3163e6 => 10
	i32 3486566296, ; 200: System.Transactions => 0xcfd0c798 => 102
	i32 3493954962, ; 201: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 47
	i32 3501239056, ; 202: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 43
	i32 3509114376, ; 203: System.Xml.Linq => 0xd128d608 => 28
	i32 3536029504, ; 204: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 90
	i32 3567349600, ; 205: System.ComponentModel.Composition.dll => 0xd4a16f60 => 107
	i32 3618140916, ; 206: Xamarin.AndroidX.Preference => 0xd7a872f4 => 75
	i32 3627220390, ; 207: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 76
	i32 3632359727, ; 208: Xamarin.Forms.Platform => 0xd881692f => 91
	i32 3633644679, ; 209: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 38
	i32 3641597786, ; 210: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 63
	i32 3672681054, ; 211: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3676310014, ; 212: System.Web.Services.dll => 0xdb2009fe => 108
	i32 3682565725, ; 213: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 44
	i32 3684561358, ; 214: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 47
	i32 3689375977, ; 215: System.Drawing.Common => 0xdbe768e9 => 104
	i32 3718780102, ; 216: Xamarin.AndroidX.Annotation => 0xdda814c6 => 37
	i32 3724971120, ; 217: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 72
	i32 3754567612, ; 218: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 18
	i32 3758932259, ; 219: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 61
	i32 3786282454, ; 220: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 46
	i32 3822602673, ; 221: Xamarin.AndroidX.Media => 0xe3d849b1 => 70
	i32 3829621856, ; 222: System.Numerics.dll => 0xe4436460 => 23
	i32 3841636137, ; 223: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 8
	i32 3847036339, ; 224: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 97
	i32 3876362041, ; 225: SQLite-net => 0xe70c9739 => 14
	i32 3885922214, ; 226: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 82
	i32 3896760992, ; 227: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 51
	i32 3920810846, ; 228: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 106
	i32 3921031405, ; 229: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 85
	i32 3931092270, ; 230: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3945713374, ; 231: System.Data.DataSetExtensions.dll => 0xeb2ecede => 103
	i32 3955647286, ; 232: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 40
	i32 4025784931, ; 233: System.Memory => 0xeff49a63 => 22
	i32 4073602200, ; 234: System.Threading.dll => 0xf2ce3c98 => 116
	i32 4105002889, ; 235: Mono.Security.dll => 0xf4ad5f89 => 110
	i32 4126470640, ; 236: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 9
	i32 4151237749, ; 237: System.Core => 0xf76edc75 => 20
	i32 4182413190, ; 238: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 67
	i32 4186595366, ; 239: ZXing.Net.Mobile.Core => 0xf98a6026 => 96
	i32 4260525087, ; 240: System.Buffers => 0xfdf2741f => 19
	i32 4292120959 ; 241: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 67
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [242 x i32] [
	i32 65, i32 94, i32 13, i32 89, i32 79, i32 79, i32 46, i32 30, ; 0..7
	i32 4, i32 80, i32 44, i32 35, i32 114, i32 60, i32 120, i32 108, ; 8..15
	i32 49, i32 64, i32 58, i32 36, i32 23, i32 98, i32 62, i32 17, ; 16..23
	i32 22, i32 31, i32 48, i32 88, i32 112, i32 57, i32 11, i32 21, ; 24..31
	i32 58, i32 69, i32 115, i32 30, i32 102, i32 113, i32 106, i32 53, ; 32..39
	i32 85, i32 41, i32 28, i32 29, i32 7, i32 15, i32 105, i32 104, ; 40..47
	i32 76, i32 95, i32 120, i32 35, i32 94, i32 98, i32 13, i32 34, ; 48..55
	i32 62, i32 5, i32 112, i32 78, i32 8, i32 40, i32 91, i32 66, ; 56..63
	i32 21, i32 100, i32 83, i32 73, i32 12, i32 41, i32 84, i32 16, ; 64..71
	i32 55, i32 118, i32 109, i32 78, i32 7, i32 70, i32 50, i32 25, ; 72..79
	i32 0, i32 33, i32 113, i32 92, i32 105, i32 39, i32 119, i32 99, ; 80..87
	i32 32, i32 54, i32 3, i32 68, i32 87, i32 52, i32 2, i32 119, ; 88..95
	i32 26, i32 81, i32 93, i32 49, i32 114, i32 17, i32 45, i32 80, ; 96..103
	i32 20, i32 57, i32 68, i32 93, i32 74, i32 88, i32 92, i32 42, ; 104..111
	i32 4, i32 71, i32 19, i32 66, i32 63, i32 12, i32 26, i32 24, ; 112..119
	i32 59, i32 18, i32 90, i32 32, i32 115, i32 2, i32 83, i32 69, ; 120..127
	i32 0, i32 71, i32 61, i32 77, i32 37, i32 99, i32 31, i32 100, ; 128..135
	i32 33, i32 75, i32 96, i32 117, i32 15, i32 48, i32 1, i32 6, ; 136..143
	i32 97, i32 103, i32 65, i32 84, i32 52, i32 56, i32 64, i32 118, ; 144..151
	i32 81, i32 111, i32 36, i32 39, i32 89, i32 86, i32 50, i32 27, ; 152..159
	i32 86, i32 82, i32 107, i32 11, i32 87, i32 24, i32 38, i32 55, ; 160..167
	i32 60, i32 5, i32 72, i32 111, i32 34, i32 3, i32 101, i32 54, ; 168..175
	i32 95, i32 116, i32 110, i32 45, i32 43, i32 14, i32 117, i32 53, ; 176..183
	i32 101, i32 42, i32 73, i32 59, i32 16, i32 51, i32 6, i32 77, ; 184..191
	i32 25, i32 109, i32 9, i32 27, i32 1, i32 29, i32 56, i32 10, ; 192..199
	i32 102, i32 47, i32 43, i32 28, i32 90, i32 107, i32 75, i32 76, ; 200..207
	i32 91, i32 38, i32 63, i32 10, i32 108, i32 44, i32 47, i32 104, ; 208..215
	i32 37, i32 72, i32 18, i32 61, i32 46, i32 70, i32 23, i32 8, ; 216..223
	i32 97, i32 14, i32 82, i32 51, i32 106, i32 85, i32 74, i32 103, ; 224..231
	i32 40, i32 22, i32 116, i32 110, i32 9, i32 20, i32 67, i32 96, ; 232..239
	i32 19, i32 67 ; 240..241
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
