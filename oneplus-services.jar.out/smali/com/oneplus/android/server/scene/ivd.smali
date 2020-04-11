.class public Lcom/oneplus/android/server/scene/ivd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/ivd$cno;,
        Lcom/oneplus/android/server/scene/ivd$kth;,
        Lcom/oneplus/android/server/scene/ivd$zta;,
        Lcom/oneplus/android/server/scene/ivd$sis;,
        Lcom/oneplus/android/server/scene/ivd$you;,
        Lcom/oneplus/android/server/scene/ivd$tsu;,
        Lcom/oneplus/android/server/scene/ivd$rtg;,
        Lcom/oneplus/android/server/scene/ivd$ssp;
    }
.end annotation


# static fields
.field private static final Afa:Ljava/lang/String; = "persist.sys.brickmode.disablenfc"

.field private static final Bfa:Ljava/lang/String; = "com.oem.intent.action.DISABLE_GAME_MODE"

.field public static final CHANNEL_PREFIX:Ljava/lang/String; = "com.oneplus.android.server.scene.READ_MODE - "

.field private static final Cfa:Ljava/lang/String; = "com.oem.intent.action.SWITCH_TO_ESPORT"

.field private static final DBG:Z

.field private static final Dfa:Ljava/lang/String; = "com.oem.intent.action.SHOW_DIALOG"

.field private static final Efa:Ljava/lang/String; = "scene_modes_game"

.field private static final Ffa:Ljava/lang/String; = "game_mode_battery_saver"

.field private static final Gfa:Ljava/lang/String; = "0_0"

.field private static final Hfa:Landroid/net/Uri;

.field private static final Ifa:Landroid/net/Uri;

.field private static final Jfa:Landroid/net/Uri;

.field private static final Kfa:Landroid/net/Uri;

.field private static final Lfa:Landroid/net/Uri;

.field private static Mfa:Ljava/lang/String; = null

.field public static final NOTIFICATION_ID:I = 0x3ff

.field private static Nfa:Ljava/lang/String; = null

.field private static Ofa:Ljava/lang/String; = null

.field private static final PO:Ljava/lang/String; = "force-off"

.field private static Pfa:Lcom/oneplus/android/server/scene/ivd; = null

.field private static final QO:Ljava/lang/String; = "force-on"

.field public static final Qfa:Z

.field public static Rfa:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SO:Ljava/lang/String; = "force-on-color"

.field public static final Sfa:Ljava/lang/String; = "com.oem.intent.action.ENABLE_READ_MODE_NOW"

.field private static final TAG:Ljava/lang/String; = "OemSceneModeController"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x7d0

.field public static final Tfa:Ljava/lang/String; = "com.oem.intent.action.GO_READ_MODE_SETTINGS"

.field public static final Ufa:I

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_ON_INT:I = 0x1

.field private static final Vfa:Ljava/lang/String; = "Scene_Mode_Config"

.field private static final Wfa:Ljava/lang/String; = "read_use"

.field private static Xfa:Ljava/lang/Object; = null

.field public static Yfa:Ljava/lang/String; = null

.field private static final _ea:Ljava/lang/String; = "SceneModeController"

.field public static final afa:I = 0x0

.field public static final bfa:I = 0x1

.field public static final cfa:I = 0x0

.field public static final dfa:I = 0x1

.field private static final efa:Ljava/lang/String; = "#3b78e7"

.field private static final ffa:I = 0x0

.field private static final gfa:I = 0x1

.field private static final hfa:I = 0x3

.field private static final ifa:I = 0x4

.field private static final jb:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final jfa:I = 0x5

.field private static final kfa:I = 0x6

.field private static final lfa:I = 0x7

.field private static final mfa:I = 0x8

.field private static final nfa:I = 0x9

.field private static final ofa:I = 0xb

.field private static final pfa:I = 0xc

.field private static final qfa:I = 0xd

.field private static final rea:Landroid/net/Uri;

.field private static final rfa:I = 0x15be

.field public static sNextRequestCode:I = 0x0

.field private static final sfa:I = 0x0

.field private static final tfa:I = 0x1

.field private static final ufa:I = 0x2

.field private static final vfa:I = 0xea60

.field private static final wfa:I = 0x1f4

.field private static final xfa:Ljava/lang/String; = "2"

.field private static final yfa:Ljava/lang/String; = "persist.sys.gamemodescale.debug"

.field private static final zfa:Ljava/lang/String; = "persist.sys.oem.gamemode_dirty"


# instance fields
.field private Aea:Z

.field private Bea:Z

.field private Cea:Z

.field private Dea:Z

.field private Eea:Z

.field private Fea:Z

.field private Gea:Z

.field private Hea:Z

.field private Iea:Z

.field private Jea:Z

.field private Kea:Landroid/os/IBinder;

.field private Lea:Lcom/oneplus/android/server/scene/ivd$ssp;

.field private Mea:Lcom/oneplus/android/server/scene/ivd$rtg;

.field private Nea:Lcom/oneplus/android/server/scene/ivd$sis;

.field private Oea:Lcom/oneplus/android/server/scene/ivd$kth;

.field private Pea:Lcom/oneplus/android/server/scene/ivd$zta;

.field private Qda:Lcom/oneplus/android/server/scene/cgv;

.field private Qea:Ljava/lang/Thread;

.field private Rea:I

.field private Sea:Ljava/lang/String;

.field private Tea:Ljava/lang/String;

.field private Uea:Ljava/lang/String;

.field private Vea:Z

.field private Wea:Landroid/view/View;

.field private Xea:I

.field private Yea:Lcom/oneplus/config/ConfigObserver;

.field private Zea:Ljava/lang/Runnable;

.field private fea:Landroid/view/WindowManager;

.field private jea:Lcom/oneplus/android/server/scene/ivd$you;

.field private mAm:Landroid/app/ActivityManager;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mGameModeStatus:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mResolver:Landroid/content/ContentResolver;

.field private mW:Lcom/oneplus/android/server/scene/ivd$tsu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    const-string v0, "reading_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Hfa:Landroid/net/Uri;

    const-string v0, "rading_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Ifa:Landroid/net/Uri;

    const-string v0, "game_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Jfa:Landroid/net/Uri;

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->rea:Landroid/net/Uri;

    const-string v0, "game_mode_battery_saver"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Kfa:Landroid/net/Uri;

    const-string v0, "op_breath_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Lfa:Landroid/net/Uri;

    const-string v0, "0"

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Mfa:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Nfa:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe4

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/scene/ivd;->Qfa:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Rfa:Ljava/util/ArrayList;

    const-string v0, "persist.readmode.notification.duration"

    const/16 v2, 0x78

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/oneplus/android/server/scene/ivd;->Ufa:I

    sput v1, Lcom/oneplus/android/server/scene/ivd;->sNextRequestCode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Xfa:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Aea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Bea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Cea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Eea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Fea:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Gea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Hea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Iea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Jea:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Kea:Landroid/os/IBinder;

    const/4 v3, -0x1

    iput v3, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    const-string v4, ""

    iput-object v4, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    iput-object v4, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    const-string v4, "0_0"

    iput-object v4, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Vea:Z

    iput-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Wea:Landroid/view/View;

    iput-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->fea:Landroid/view/WindowManager;

    iput v3, p0, Lcom/oneplus/android/server/scene/ivd;->Xea:I

    new-instance v2, Lcom/oneplus/android/server/scene/bud;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/bud;-><init>(Lcom/oneplus/android/server/scene/ivd;)V

    iput-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/android/server/scene/vdw;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/vdw;-><init>(Lcom/oneplus/android/server/scene/ivd;)V

    iput-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Zea:Ljava/lang/Runnable;

    new-instance v2, Lcom/oneplus/android/server/scene/qeg;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/qeg;-><init>(Lcom/oneplus/android/server/scene/ivd;)V

    iput-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mAm:Landroid/app/ActivityManager;

    new-array p1, v1, [I

    const/16 v1, 0x49

    aput v1, p1, v0

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ivd;->Vea:Z

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$ssp;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$ssp;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Lea:Lcom/oneplus/android/server/scene/ivd$ssp;

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$rtg;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$rtg;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Mea:Lcom/oneplus/android/server/scene/ivd$rtg;

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$tsu;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$tsu;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mW:Lcom/oneplus/android/server/scene/ivd$tsu;

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$you;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$you;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->jea:Lcom/oneplus/android/server/scene/ivd$you;

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$kth;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$kth;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Oea:Lcom/oneplus/android/server/scene/ivd$kth;

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$zta;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$zta;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Pea:Lcom/oneplus/android/server/scene/ivd$zta;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.SWITCH_TO_ESPORT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.SHOW_DIALOG"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string v2, "0"

    const-string v4, "game_mode_status"

    invoke-static {p1, v4, v2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "esport_mode_enabled"

    invoke-static {p1, v4, v2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Hfa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Lea:Lcom/oneplus/android/server/scene/ivd$ssp;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Ifa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Mea:Lcom/oneplus/android/server/scene/ivd$rtg;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Jfa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mW:Lcom/oneplus/android/server/scene/ivd$tsu;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->rea:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->jea:Lcom/oneplus/android/server/scene/ivd$you;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Lfa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Oea:Lcom/oneplus/android/server/scene/ivd$kth;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/ivd;->Vea:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oneplus/android/server/scene/ivd$sis;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v2}, Lcom/oneplus/android/server/scene/ivd$sis;-><init>(Lcom/oneplus/android/server/scene/ivd;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Nea:Lcom/oneplus/android/server/scene/ivd$sis;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Kfa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->Nea:Lcom/oneplus/android/server/scene/ivd$sis;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ws()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    :cond_0
    new-instance p1, Lcom/oneplus/android/server/scene/cgv;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/oneplus/android/server/scene/cgv;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Qda:Lcom/oneplus/android/server/scene/cgv;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneModeController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneModeController$1;-><init>(Lcom/oneplus/android/server/scene/ivd;)V

    const-class p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private As()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ts()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->us()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->vs()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    sget-object v2, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Ec(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oneplus/android/server/scene/ivd;->na(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/oneplus/android/server/scene/ivd;->na(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-object v1, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    :goto_0
    sput-object v1, Lcom/oneplus/android/server/scene/ivd;->Nfa:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Mfa:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "ColorReadMode"

    const-string v4, "ReadMode"

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {p0, v4, v5}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    :goto_2
    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    if-eq v2, v0, :cond_4

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Gc(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private Bs()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ts()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->us()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->vs()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    sget-object v2, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/scene/ivd;->Fc(Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    sput-object v1, Lcom/oneplus/android/server/scene/ivd;->Nfa:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Mfa:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "ColorReadMode"

    const-string v4, "ReadMode"

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v5}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    :goto_1
    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    if-eq v2, v0, :cond_2

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Gc(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private Cs()Z
    .locals 1

    const-string p0, "persist.sys.oem.gamemode_dirty"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private Dc(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private Ds()Z
    .locals 1

    const-string p0, "persist.sys.gamemodescale.debug"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private Ec(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "rading_mode_status_auto"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private Es()V
    .locals 1

    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneModeController"

    const-string v0, "[scene] setGameModeEverEnabled was called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "persist.sys.oem.gamemode_dirty"

    const-string v0, "true"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Fc(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "reading_mode_status_manual"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private Fs()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] Read Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Nfa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[scene] Read Auto: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Mfa:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[scene] Read Status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t Game Status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[scene] Proactive monitoring: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Cea:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\t Passive monitoring: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[scene] Zen Mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ivd;->Aea:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[scene] -----------"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] values: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneModeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Gc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "reading_mode_status"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->Qfa:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/oneplus/android/server/scene/ivd;->na(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "count"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    const-string v3, "YLTI9SVG4L"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    const-string v4, "read_use"

    invoke-virtual {v2, v3, v4, v0, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->Dc(Ljava/lang/String;)V

    return-object p1
.end method

.method private Wa(Z)V
    .locals 12

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x15be

    const-string v2, "SceneModeController"

    if-eqz p1, :cond_4

    new-instance p1, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    const v4, 0x50d0059

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    const-string v6, "scene_modes_game"

    invoke-direct {p1, v6, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v5, p0, Lcom/oneplus/android/server/scene/ivd;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v5, -0x2

    const-string v7, "esport_mode_enabled"

    invoke-static {p1, v7, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "1"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v5, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-static {v5, v0, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.oem.intent.action.SWITCH_TO_ESPORT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v0, v9, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v9, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.oem.intent.action.SHOW_DIALOG"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0, v10, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v8, Landroid/app/Notification$Action$Builder;

    iget-object v9, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v10, 0x50d0035

    goto :goto_0

    :cond_0
    const v10, 0x50d0039

    :goto_0
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x1080362

    invoke-direct {v8, v10, v9, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Action$Builder;

    iget-object v9, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    const v11, 0x50d003c

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v10, v9, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const v6, 0x5060039

    goto :goto_1

    :cond_1
    const v6, 0x5060052

    :goto_1
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    const v8, 0x50d0053

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x50d003d

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance p1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_4
    return-void
.end method

.method private Xa(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->os()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ps()V

    :goto_0
    return-void
.end method

.method private Ya(Z)Z
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const/4 v1, -0x2

    const-string v2, "op_breath_mode_status"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ZenMode] setZenModeStatus, status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneModeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private Za(Z)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->Wa(Z)V

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gameMode] updateGameModeStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Vea:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->bc(I)V

    :cond_1
    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    return v0
.end method

.method private bc(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gameMode PowerSavePolicy] handleGameModePowerSavePolicy code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |mSaveParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/android/server/scene/les;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/android/server/scene/les;-><init>(Lcom/oneplus/android/server/scene/ivd;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Qea:Ljava/lang/Thread;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    const-string v0, "0_0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->Qea:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/scene/ivd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ivd;->Hea:Z

    return p0
.end method

.method private cc(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method static synthetic cno(Lcom/oneplus/android/server/scene/ivd;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/scene/ivd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    return p0
.end method

.method static synthetic gck(Lcom/oneplus/android/server/scene/ivd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/ivd;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Pfa:Lcom/oneplus/android/server/scene/ivd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/ivd;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/ivd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Pfa:Lcom/oneplus/android/server/scene/ivd;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/ivd;->Pfa:Lcom/oneplus/android/server/scene/ivd;

    return-object p0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/scene/ivd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static jf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Nfa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic kth(Lcom/oneplus/android/server/scene/ivd;)Lcom/oneplus/android/server/scene/cgv;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->Qda:Lcom/oneplus/android/server/scene/cgv;

    return-object p0
.end method

.method public static na(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private ns()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "clearSilentlyShowGameUIFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Iea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Jea:Z

    return-void
.end method

.method private os()V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "persist.sys.brickmode.disablenfc"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    return-void

    :cond_1
    :goto_0
    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_2

    const-string p0, "OemSceneModeController"

    const-string v0, "nfcAdapter is disable already."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private ps()V
    .locals 4

    const-string v0, "false"

    const-string v1, "persist.sys.brickmode.disablenfc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    const-string v2, "OemSceneModeController"

    if-nez p0, :cond_0

    const-string p0, "nfcAdapter is null!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "nfcAdapter is enable already!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_2
    return-void
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->As()V

    return-void
.end method

.method private qs()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_mode_lock_buttons"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private rs()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_mode_block_notification"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ns()V

    return-void
.end method

.method private rtg(Ljava/lang/String;Z)V
    .locals 12

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    const-string v1, "OemSceneModeController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] executePowerSavePolicy optimize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, " |fps:"

    const-string v2, " |scale:"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, ""

    if-eqz p2, :cond_15

    if-eqz p1, :cond_13

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_5

    :cond_1
    iput-object v5, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/ivd;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/scene/ivd;->zta(Landroid/app/ActivityManager;)I

    move-result p2

    sget-boolean v6, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    const-string v7, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " |saveParam:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x1

    if-eq p2, v3, :cond_10

    iget-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->Kea:Landroid/os/IBinder;

    if-nez v3, :cond_4

    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->Kea:Landroid/os/IBinder;

    :cond_4
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_5

    const-string p0, "[gameMode PowerSavePolicy] executePowerSavePolicy, saveParam wrong format A"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    aget-object v3, p1, v4

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/scene/ivd;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    aget-object v3, p1, v6

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/scene/ivd;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object p1, p1, v6

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v5, 0x64

    if-eqz v3, :cond_8

    if-le v3, v5, :cond_9

    :cond_8
    move v3, v5

    :cond_9
    const/16 v5, 0x3c

    if-eqz p1, :cond_b

    if-le p1, v5, :cond_a

    goto :goto_0

    :cond_a
    move v11, p1

    goto :goto_1

    :cond_b
    :goto_0
    move v11, v5

    :goto_1
    const/16 p1, 0x50

    if-ne v3, p1, :cond_c

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->Ds()Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0xf

    move v10, p1

    goto :goto_2

    :cond_c
    move v10, v3

    :goto_2
    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mCurProcessName:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v7, p0, Lcom/oneplus/android/server/scene/ivd;->Kea:Landroid/os/IBinder;

    iget-object v9, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    move-object v6, p0

    move v8, p2

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/android/server/scene/ivd;->zta(Landroid/os/IBinder;ILjava/lang/String;II)V

    iput p2, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/oneplus/android/server/scene/ivd;->Gea:Z

    goto :goto_6

    :cond_e
    :goto_3
    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_f

    const-string p0, "[gameMode PowerSavePolicy] executePowerSavePolicy, saveParam wrong format B"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    :goto_4
    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_11

    const-string p1, "[gameMode PowerSavePolicy] executePowerSavePolicy, current pid process is not right"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    if-eqz p1, :cond_12

    iput-boolean v6, p0, Lcom/oneplus/android/server/scene/ivd;->Gea:Z

    :cond_12
    return-void

    :cond_13
    :goto_5
    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_14

    const-string p0, "[gameMode PowerSavePolicy] executePowerSavePolicy, saveParam is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :cond_15
    iget p1, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    if-eq p1, v3, :cond_17

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_16

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[gameMode PowerSavePolicy] executePowerSavePolicy, mOldPid:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " |mOldProcessName:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v7, p0, Lcom/oneplus/android/server/scene/ivd;->Kea:Landroid/os/IBinder;

    iget v8, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    iget-object v9, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    const/16 v10, 0x64

    const/16 v11, 0x3c

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/android/server/scene/ivd;->zta(Landroid/os/IBinder;ILjava/lang/String;II)V

    iput v3, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    iput-object v5, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    :cond_17
    :goto_6
    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->zs()V

    return-void
.end method

.method private sis(ZZ)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    const-string v1, "OemSceneModeController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyGameModeUI enabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/ silent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mResumedPID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/scene/ivd;->Xea:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/ getFgApp() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->zta(Landroid/app/ActivityManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/scene/ivd;->Xea:I

    iget-object p2, p0, Lcom/oneplus/android/server/scene/ivd;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/scene/ivd;->zta(Landroid/app/ActivityManager;)I

    move-result p2

    if-ne p1, p2, :cond_3

    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNeedRecoverCachedFuncs = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oneplus/android/server/scene/ivd;->Iea:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->Qda:Lcom/oneplus/android/server/scene/cgv;

    iget-boolean p2, p0, Lcom/oneplus/android/server/scene/ivd;->Iea:Z

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/scene/cgv;->P(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/ivd;->Zea:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ns()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->zta(Landroid/app/ActivityManager;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/android/server/scene/ivd;->Xea:I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/ivd;->Zea:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->Qda:Lcom/oneplus/android/server/scene/cgv;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/cgv;->hide()V

    :goto_1
    return-void
.end method

.method private ss()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_mode_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->Fs()V

    return-void
.end method

.method private ts()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "rading_mode_status_auto"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "force-on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0"

    if-nez v1, :cond_2

    const-string v1, "force-on-color"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->Qfa:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_1
    return-object v0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ys()V

    return-void
.end method

.method private us()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "reading_mode_status_manual"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "force-on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0"

    if-nez v1, :cond_2

    const-string v1, "force-on-color"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->Qfa:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :cond_4
    :goto_1
    return-object v0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "force-on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "force-off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "force-on-color"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private vs()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "reading_mode_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ws()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_mode_battery_saver"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, "0_0"

    :cond_1
    return-object p0
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/scene/ivd;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private wtn(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p0, "OemSceneModeController"

    const-string v0, "[OnlineConfig] update config start"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "op_read_mode_app_config"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "OemSceneModeController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add read mode app pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/oneplus/android/server/scene/ivd;->Xfa:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    sput-object p0, Lcom/oneplus/android/server/scene/ivd;->Rfa:Ljava/util/ArrayList;

    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "OemSceneModeController"

    const-string p1, "[OnlineConfig] update config complete"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] SceneModeConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] SceneModeConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneModeController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private xs()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "op_breath_mode_status"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/ivd;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/scene/ivd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->Wa(Z)V

    return-void
.end method

.method private you(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hashmap"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "appId"

    const-string v1, "RBS8PPYT2W"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private ys()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ws()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gameMode PowerSavePolicy] handleGameBatterySaverChanged, mSaveParam:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Uea:Ljava/lang/String;

    const-string v1, "0_0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/scene/ivd;->bc(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Gea:Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->Bs()V

    return-void
.end method

.method private zs()V
    .locals 9

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const-string v6, "GameMode"

    invoke-virtual {p0, v6, v3}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    const-string v6, "OemSceneModeController"

    if-eq v0, v3, :cond_4

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/scene/ivd;->Za(Z)Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Iea:Z

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedRecoverCachedFuncs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Iea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Jea:Z

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/scene/ivd;->sis(ZZ)V

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Hea:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/oneplus/android/server/scene/ivd;->sis(ZZ)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Hea:Z

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "add auto start game mode tracker data"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gmode_start"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/scene/ivd;->you(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Vea:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gameMode PowerSavePolicy] mOldPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |mOldProcessName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mNeedExecPowerSavePolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Gea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v0, p0, Lcom/oneplus/android/server/scene/ivd;->Rea:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Tea:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Gea:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/scene/ivd;->bc(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private zta(Landroid/app/ActivityManager;)I
    .locals 3

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->Sea:Ljava/lang/String;

    sget-boolean p0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, app.processName: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |pid: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneModeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :cond_2
    :goto_0
    return p1
.end method

.method private zta(Landroid/os/IBinder;ILjava/lang/String;II)V
    .locals 2

    const-string p0, "OemSceneModeController"

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[gameMode PowerSavePolicy] processName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    :try_start_0
    const-string v0, "android.ui.ISurfaceComposer"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xfa5

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-interface {p1, p2, p0, p3, p4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_1
    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_2

    const-string p1, "[gameMode PowerSavePolicy] sendCmd, sf is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string p1, "[gameMode PowerSavePolicy] processName is wrong"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/ivd;->you(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/ivd;->rtg(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->wtn(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/ivd;->sis(ZZ)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ivd;->Cea:Z

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ivd;->validateValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/ivd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ivd;->Hea:Z

    return p1
.end method


# virtual methods
.method public Wd()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] stop monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/wm/wtn;->Wd()V

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/ivd;->na(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Nfa:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/ivd;->na(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Gc(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Dc(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    const-string v0, "ReadMode"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    const-string v0, "ColorReadMode"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/scene/ivd;->Za(Z)Z

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/scene/ivd;->Wa(Z)V

    iput-boolean v2, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    const-string v0, "GameMode"

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    return-void
.end method

.method public bootComplete()V
    .locals 5

    const-string v0, "OemSceneModeController"

    const-string v1, "bootComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Yea:Lcom/oneplus/config/ConfigObserver;

    const-string v1, "Scene_Mode_Config"

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/android/server/scene/ivd$cno;

    invoke-direct {v4, p0}, Lcom/oneplus/android/server/scene/ivd$cno;-><init>(Lcom/oneplus/android/server/scene/ivd;)V

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Yea:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->Yea:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5020024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/android/server/scene/ivd;->Rfa:Ljava/util/ArrayList;

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ivd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->wtn(Lorg/json/JSONArray;)V

    invoke-static {}, Lcom/android/server/wm/wtn;->Vd()Lcom/android/server/wm/wtn$zta;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/wtn$zta;->handleEvaluateReadMode(I)V

    return-void
.end method

.method cno(Ljava/lang/String;I)V
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/oneplus/server/zta;->notifyModeChange(Ljava/lang/String;II)V

    return-void
.end method

.method public gwm(II)Z
    .locals 3

    const-string v0, "[scene] Not yet supported"

    const-string v1, "OemSceneModeController"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->ts()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/oneplus/android/server/scene/ivd;->na(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    if-eqz p2, :cond_2

    move v2, p1

    goto :goto_1

    :cond_0
    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->Fs()V

    return v2
.end method

.method public hf()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->Qda:Lcom/oneplus/android/server/scene/cgv;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/cgv;->hf()Z

    move-result p0

    return p0
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "[0-9]*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public kf()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] start monitoring, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Hfa:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/android/server/scene/ivd;->Ifa:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Jfa:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Cea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Dc(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Wa(Z)V

    return-void
.end method

.method public lf()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] start monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public mf()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] stop monitoring, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Hfa:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/android/server/scene/ivd;->Ifa:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/scene/ivd;->Jfa:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Cea:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Dea:Z

    const/4 v0, 0x2

    const-string v1, "ReadMode"

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    const-string v1, "ColorReadMode"

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/ivd;->Wd()V

    sget-object v0, Lcom/oneplus/android/server/scene/ivd;->Ofa:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Dc(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Wa(Z)V

    return-void
.end method

.method public nf()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ivd;->xs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Aea:Z

    sget-boolean v0, Lcom/oneplus/android/server/scene/ivd;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ZenMode] handleZenModeChanged, mZenModeStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/scene/ivd;->Aea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Aea:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    const-string v1, "ZenMode"

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/scene/ivd;->cno(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ivd;->Aea:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ivd;->Xa(Z)V

    return-void
.end method

.method public of()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/android/server/scene/irq;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/irq;-><init>(Lcom/oneplus/android/server/scene/ivd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pf()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public qf()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public rf()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public shutdown()V
    .locals 1

    const-string p0, "OemSceneModeController"

    const-string v0, "shutdown"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/wtn;->Vd()Lcom/android/server/wm/wtn$zta;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/wtn$zta;->handleEvaluateReadMode(I)V

    return-void
.end method

.method public startMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ivd;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
