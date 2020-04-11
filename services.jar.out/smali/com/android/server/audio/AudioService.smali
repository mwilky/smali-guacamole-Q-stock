.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioDeviceArray;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$BtProfileConnectionState;,
        Lcom/android/server/audio/AudioService$ConnectionState;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$RoleObserver;,
        Lcom/android/server/audio/AudioService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final CONNECTION_STATE_CONNECTED:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field protected static final DEBUG_AP:Z = false

.field protected static final DEBUG_DEVICES:Z = true

.field protected static final DEBUG_MODE:Z = true

.field protected static final DEBUG_SCO:Z = true

.field protected static final DEBUG_VOL:Z = true

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG:I = 0x402678c

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field public static final King_of_Glory_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field static final LOG_NB_EVENTS_DEVICE_CONNECTION:I = 0x1e

.field static final LOG_NB_EVENTS_DYN_POLICY:I = 0xa

.field static final LOG_NB_EVENTS_FORCE_USE:I = 0x14

.field static final LOG_NB_EVENTS_PHONE_STATE:I = 0x14

.field static final LOG_NB_EVENTS_VOLUME:I = 0x28

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x15

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CALL_DEVICE_CHANGE:I = 0x24

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xb

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0xc

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0xd

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x64

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x17

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x13

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x18

.field private static final MSG_HDMI_VOLUME_CHECK:I = 0x1c

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x14

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x16

.field private static final MSG_OBSERVE_DEVICES_FOR_ALL_STREAMS:I = 0x1b

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x11

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0xe

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PER_SPEAKER_MUSIC_VOLUME:I = 0x20

.field private static final MSG_PLAYBACK_CONFIG_CHANGE:I = 0x1d

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_SEND_GRADIENTVOL:I = 0x23

.field private static final MSG_SEND_HEADSETHOOK:I = 0x22

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_STREAM_VOLUME:I = 0x1a

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SYSTEM_READY:I = 0x10

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0xf

.field private static final MSG_UNMUTE_STREAM:I = 0x12

.field private static final MSG_UPDATE_RINGER_MODE:I = 0x19

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AS.AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field protected static mStreamVolumeAlias:[I

.field static final sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

.field static final sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sIndependentA11yVolume:Z

.field private static sSoundEffectVolumeDb:I

.field private static sStreamOverrideDelayMs:I

.field static final sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final AUDIO_SOURCE_CNT:I

.field private final AUDIO_STREAM_PUBLIC_CNT:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field mAbsVolumeMultiModeCaseDevices:I

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAssistantUid:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioPolicies"
        }
    .end annotation
.end field

.field private mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAutoPlayMusic:I

.field private mBootCompelet:Z

.field private mBtScoVolChange:Z

.field private mCallInfoBroadcast:I

.field private mCameraSoundForced:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPackageName:Ljava/lang/String;

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field mFullVolumeDevices:I

.field private mGradientVol:I

.field private mGradientingMusicDev:I

.field private mGradientingVol:Z

.field private mHacState:Z

.field private final mHasVibrator:Z

.field private mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHdmiCecSink:Z

.field private final mHdmiClientLock:Ljava/lang/Object;

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHdmiClientLock"
        }
    .end annotation
.end field

.field private mHeadsetNotication:I

.field private final mIsSingleVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNm:Landroid/app/NotificationManager;

.field public mOnePlusFixedRingerMode:I

.field public mOnePlusMaxRingVolumeIndex:I

.field public mOnePlusMinRingVolumeIndex:I

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPerScoMediaVolume:I

.field private mPerSpeakerMediaVolume:I

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPrescaleAbsoluteVolume:[F

.field private mPrevVolDirection:I

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

.field final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:I

.field private final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceBroker.mSetModeLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mUltrasoundproximitystatus:Z

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

.field private mVolBeforeGradienting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mZenModeAffectedStreams:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x1e

    const-string/jumbo v2, "wired/A2DP/hearing aid device connection"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x14

    const-string v2, "force use (logged before setForceUse() is executed)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x28

    const-string/jumbo v2, "volume changes (logged when command received by AudioService)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0x1e
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 v9, 0x0

    iput v9, v1, Lcom/android/server/audio/AudioService;->mMode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    const/4 v10, 0x2

    filled-new-array {v0, v10}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    const/16 v2, 0x3e8

    iput v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    const/4 v11, -0x1

    iput v11, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    iput v9, v1, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    iput v11, v1, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    iput v11, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mGradientVol:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    const/16 v2, 0xb

    iput v2, v1, Lcom/android/server/audio/AudioService;->AUDIO_STREAM_PUBLIC_CNT:I

    iput v2, v1, Lcom/android/server/audio/AudioService;->AUDIO_SOURCE_CNT:I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mHacState:Z

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    new-array v4, v2, [I

    fill-array-data v4, :array_1

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    new-array v4, v2, [I

    fill-array-data v4, :array_2

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    new-instance v4, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    iput v11, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    new-instance v4, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v4, v1, v3}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v4, v1, v3}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    iput v9, v1, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    iput v11, v1, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    const v4, 0x2c1c00

    iput v4, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    iput v9, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const/high16 v4, 0x8000000

    iput v4, v1, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:I

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    iput v9, v1, Lcom/android/server/audio/AudioService;->mDockState:I

    const/4 v13, 0x3

    new-array v4, v13, [F

    fill-array-data v4, :array_3

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    sget-object v4, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    new-instance v4, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    iput v9, v1, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    iput v9, v1, Lcom/android/server/audio/AudioService;->mMcc:I

    const v4, 0x400008c

    iput v4, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    new-instance v4, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v4, v1, v3}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger;

    const/16 v4, 0x14

    const-string/jumbo v5, "phone state (logged after successfull call to AudioSystem.setPhoneState(int))"

    invoke-direct {v3, v4, v5}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger;

    const-string v4, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    new-instance v3, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    iput v9, v1, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    iput-object v8, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "appops"

    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v3, "power"

    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/os/PowerManager;

    const-string v3, "handleAudioEvent"

    invoke-virtual {v14, v12, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_0

    move v3, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    :goto_0
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-ltz v4, :cond_3

    nop

    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    if-eq v6, v11, :cond_1

    sget-object v7, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v6, v7, v4

    :cond_1
    invoke-static {v5}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v7

    if-eq v7, v11, :cond_2

    sget-object v15, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aput v7, v15, v4

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eq v15, v11, :cond_4

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v15, v3, v9

    :cond_4
    const-string/jumbo v3, "ro.config.vc_call_vol_default"

    invoke-static {v3, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v3, 0x4

    if-eq v7, v11, :cond_5

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v9

    if-gt v7, v4, :cond_5

    sget-object v4, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v4, v4, v9

    if-lt v7, v4, :cond_5

    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v7, v4, v9

    goto :goto_2

    :cond_5
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v5, v15, 0x3

    div-int/2addr v5, v3

    aput v5, v4, v9

    :goto_2
    const-string/jumbo v4, "ro.config.media_vol_steps"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v11, :cond_6

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v6, v4, v13

    :cond_6
    const-string/jumbo v4, "ro.config.media_vol_default"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v11, :cond_7

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v13

    if-gt v5, v4, :cond_7

    sget-object v4, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v4, v4, v13

    if-lt v5, v4, :cond_7

    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v5, v4, v13

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v13

    div-int/lit8 v16, v16, 0x4

    aput v16, v4, v13

    goto :goto_3

    :cond_8
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v13

    div-int/lit8 v16, v16, 0x2

    aput v16, v4, v13

    :goto_3
    const-string/jumbo v4, "ro.config.alarm_vol_steps"

    invoke-static {v4, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v11, :cond_9

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v4, v16, v3

    :cond_9
    const-string/jumbo v2, "ro.config.alarm_vol_default"

    invoke-static {v2, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v11, :cond_a

    sget-object v17, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v10, v17, v3

    if-gt v2, v10, :cond_a

    sget-object v10, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v10, v3

    goto :goto_4

    :cond_a
    sget-object v10, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v17, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v17, v17, v3

    mul-int/lit8 v17, v17, 0x6

    div-int/lit8 v17, v17, 0x7

    aput v17, v10, v3

    :goto_4
    const-string/jumbo v10, "ro.config.system_vol_steps"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v11, :cond_b

    sget-object v17, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v10, v17, v12

    :cond_b
    const-string/jumbo v13, "ro.config.system_vol_default"

    invoke-static {v13, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v11, :cond_c

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v11, v18, v12

    if-gt v13, v11, :cond_c

    sget-object v11, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v13, v11, v12

    goto :goto_5

    :cond_c
    sget-object v11, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v18, v18, v12

    aput v18, v11, v12

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e00be

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    sput v11, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    iput-boolean v9, v1, Lcom/android/server/audio/AudioService;->mUltrasoundproximitystatus:Z

    iget-object v11, v1, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v11}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v11

    new-instance v12, Ljava/lang/Boolean;

    invoke-direct {v12, v11}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iput-boolean v12, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    iget-object v12, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v20, 0x8

    const/16 v21, 0x2

    const/16 v22, 0x4

    if-eqz v11, :cond_d

    const/16 v23, 0xb

    goto :goto_6

    :cond_d
    move/from16 v23, v9

    :goto_6
    new-instance v3, Ljava/lang/String;

    const-string v0, "AudioService ctor"

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v19, v12

    move-object/from16 v24, v3

    invoke-static/range {v19 .. v25}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "audio_safe_volume_state"

    invoke-static {v0, v3, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e00a9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v3, 0xa

    mul-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11100ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/android/server/audio/AudioDeviceBroker;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v3, "AS.AudioService"

    invoke-direct {v1, v9, v3}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v12, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v16, 0x4

    aget v12, v12, v16

    invoke-direct {v0, v8, v12}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    iget-object v12, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v0, v12, v9}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    const/4 v9, 0x1

    new-array v0, v9, [I

    const/16 v9, 0xc8

    const/4 v12, 0x0

    aput v9, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_0
    new-instance v0, Lcom/android/server/audio/OpAudioMonitor;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/server/audio/OpAudioMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    const-string/jumbo v0, "mAudioMonitor new success!"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    const-string/jumbo v9, "mAudioMonitor new ERROR!"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "ro.audio.monitorRotation"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v3, :cond_f

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v3, v9}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_f
    const-string v3, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/16 v19, 0x0

    move/from16 v20, v2

    move-object/from16 v2, p1

    move/from16 v21, v4

    move-object v4, v9

    move v9, v5

    move-object v5, v0

    move/from16 v22, v6

    move-object v6, v12

    move v12, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v2, Landroid/media/AudioManagerInternal;

    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    const/4 v2, 0x3

    new-array v3, v2, [F

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1130003

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    const/4 v4, 0x0

    aput v2, v3, v4

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1130004

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    aput v2, v3, v5

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1130005

    invoke-virtual {v2, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v2, 0x0

    :goto_8
    array-length v4, v3

    if-ge v2, v4, :cond_11

    const/4 v4, 0x0

    aget v5, v3, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_10

    aget v4, v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_10

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    aget v5, v3, v2

    aput v5, v4, v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_11
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v4, 0xa1

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "per_speaker_music_volume"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    iget v2, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v2, v5, :cond_12

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    :cond_12
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f59999a    # 0.85f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$10702(Lcom/android/server/audio/AudioService;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$10808(Lcom/android/server/audio/AudioService;)I
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;)[[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$4600()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$5000()I
    .locals 1

    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onUpdateRingerModeServiceInt()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onObserveDevicesForAllStreams()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onPlaybackConfigChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$7302(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$7902(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateHacState(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8302(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    return p1
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    return v0
.end method

.method static synthetic access$8402(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    return p1
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$8702(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$9902(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v7, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volControlStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v12, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v13, p4

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v12

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_0
    move-object/from16 v13, p4

    :goto_0
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", volControlStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    goto :goto_4

    :cond_1
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    goto :goto_2

    :cond_3
    :goto_1
    invoke-direct {v8, v0, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v4

    :goto_2
    if-nez v4, :cond_5

    iget v5, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    iget v5, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    move v0, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v0

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v12

    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v1, v0

    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_6

    if-eq v14, v2, :cond_6

    and-int/lit8 v1, v7, -0x5

    goto :goto_5

    :cond_6
    move v1, v7

    :goto_5
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v14, v1, v12}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-nez v2, :cond_8

    const/16 v2, 0x3e8

    if-ne v11, v2, :cond_7

    const/4 v2, 0x3

    if-ne v14, v2, :cond_7

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "AS.AudioService"

    const-string v3, "Cancel suppressed,allow system to adust music volume with hardware volume key if music is active"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x11

    const-string v3, "AS.AudioService"

    const-string v4, "Volume controller suppressed adjustment"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v1

    move v15, v2

    goto :goto_7

    :cond_8
    move/from16 v15, p1

    move/from16 v16, v1

    :goto_7
    move-object/from16 v1, p0

    move v2, v0

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v1

    const-string v2, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canChangeAccessibilityVolume()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canProjectAudio(Landroid/media/projection/IMediaProjection;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "AS.AudioService"

    if-nez p1, :cond_0

    const-string v2, "MediaProjection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "Can\'t get service IMediaProjectionManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "App passed invalid MediaProjection token"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :cond_2
    nop

    :try_start_1
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "App passed MediaProjection that can not project audio"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_3
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .canProjectAudio() on valid IMediaProjection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .isValidMediaProjection() on IMediaProjectionManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/media/projection/IMediaProjectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private checkAddAllFixedVolumeDevices(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v2, v1

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v2, v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    invoke-virtual {v3, v2, p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AS.AudioService"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    return-void
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    const/16 v2, 0x64

    const/16 v3, 0x65

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v1, :cond_e

    const-string v6, "AS.AudioService"

    if-eq v1, v5, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    if-ne p2, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_2

    if-gt p3, p1, :cond_14

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_14

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_3

    :cond_2
    if-ne p1, p3, :cond_14

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_14

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_14

    if-eq p2, v3, :cond_4

    const/16 v2, -0x64

    if-ne p2, v2, :cond_14

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_3

    :cond_6
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_7

    const-string v2, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    if-ne p2, v4, :cond_b

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_8

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_8

    if-eqz p4, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v4, :cond_d

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v1, 0x0

    :cond_9
    goto :goto_1

    :cond_a
    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    :cond_b
    if-eq p2, v5, :cond_c

    if-eq p2, v3, :cond_c

    if-ne p2, v2, :cond_d

    :cond_c
    const/4 v1, 0x2

    :cond_d
    :goto_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_e
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v6, :cond_f

    if-ne p2, v4, :cond_f

    mul-int/lit8 v4, p3, 0x2

    if-lt p1, v4, :cond_f

    if-eqz p4, :cond_f

    const/4 v1, 0x2

    goto :goto_2

    :cond_f
    if-eq p2, v5, :cond_10

    if-eq p2, v3, :cond_10

    if-ne p2, v2, :cond_13

    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_11

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_11
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_12

    if-ne p2, v5, :cond_12

    const/4 v1, 0x1

    goto :goto_2

    :cond_12
    const/4 v1, 0x2

    :cond_13
    :goto_2
    and-int/lit8 v0, v0, -0x2

    nop

    :cond_14
    :goto_3
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_15

    goto :goto_4

    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_4
    const/4 v2, 0x0

    const-string v3, "AS.AudioService.checkForRingerModeChange"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    return v0

    :cond_17
    :goto_5
    return v0
.end method

.method private checkMonitorAudioServerStatePermission()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_0

    const v1, 0x400008c

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioPolicies"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string v2, " / uid "

    const-string v3, " for pid "

    const-string v4, "AS.AudioService"

    if-nez v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unregistered policy"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    return-object v5
.end method

.method private createAudioSystemThread()V
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    return-void
.end method

.method private createStreamStates()V
    .locals 6

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const-string v1, "affected"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const-string/jumbo v1, "muted"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int v4, p3, v2

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    not-int v3, v2

    and-int/2addr p3, v3

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private enforceModifyAudioRoutingPermission()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const v1, 0x400008c

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v9, v2, 0x1

    const/4 v3, 0x1

    shl-int v10, v3, v2

    and-int v2, v10, v1

    if-nez v2, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v11, v2, :cond_1

    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v10, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    not-int v2, v10

    and-int/2addr v1, v2

    move v2, v9

    goto :goto_0

    :cond_2
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only SystemUI can "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3

    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    nop

    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "a11y_force_ducking"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-nez p3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move v5, v0

    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_3

    monitor-exit v3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method private getActiveStreamType(I)I
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const-string v4, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x5

    const-string v9, "AS.AudioService"

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    return v5

    :cond_2
    return v6

    :cond_3
    const-string v0, "getActiveStreamType: Forcing STREAM_RING stream active"

    const-string v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    if-ne p1, v1, :cond_7

    sget v1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v8, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "getActiveStreamType: Forcing STREAM_ALARM stream active"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    sget v10, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v8, v10}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_8
    sget v3, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_a

    const-string v0, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_a
    const-string v0, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_b
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v8, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v3, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    if-eqz v0, :cond_c

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_c
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v5, "getActiveStreamType: Forcing STREAM_RING"

    if-eqz v0, :cond_d

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_d
    if-ne p1, v1, :cond_10

    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v8, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_e
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v9, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_f
    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 3

    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": invalid volume group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2
.end method

.method private getDevicesForStream(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getHearingAidStreamType(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private getNewRingerMode(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    if-nez p2, :cond_5

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    :goto_1
    nop

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    :goto_2
    return v0
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .locals 7

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    :goto_0
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I
    .locals 2

    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I
    .locals 4

    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    return v2
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AS.AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v0

    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v7, :cond_4

    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_2

    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    :cond_1
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v10, v5

    const-string v10, "AS.AudioService"

    invoke-virtual {v0, v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x4

    if-eqz v3, :cond_3

    const/16 v6, 0xb

    goto :goto_3

    :cond_3
    nop

    :goto_3
    const-string v9, "handleConfigurationChanged"

    invoke-virtual {v0, v5, v6, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v0, v8

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "AS.AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initA11yMonitoring()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    return-void
.end method

.method private isAlarm(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    return v0

    :cond_0
    return v3

    :catch_0
    move-exception v1

    return v0
.end method

.method private isMedia(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMuteAdjust(I)Z
    .locals 1

    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPlatformVoice()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    or-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "AS.AudioService"

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedPlaybackCapture()Z

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v7

    invoke-static {v7}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    if-eqz p4, :cond_4

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    or-int/lit8 v2, v2, 0x1

    :goto_3
    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    const-string v3, "android.permission.CAPTURE_MEDIA_OUTPUT"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "Privileged audio capture requires CAPTURE_MEDIA_OUTPUT or CAPTURE_AUDIO_OUTPUT system permission"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->canProjectAudio(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_7

    return v6

    :cond_7
    if-eqz v2, :cond_8

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "Can not capture audio without MODIFY_AUDIO_ROUTING"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_8
    const/4 v3, 0x1

    return v3
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSystem(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    :cond_0
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "AS.AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception v3

    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 4

    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput v3, v2, v3

    aget-object v1, v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 12

    const-string v0, "AS.AudioService"

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    const-string v2, "audio_assets"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "1.0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "name"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "touch_sounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    nop

    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "id"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-interface {v1, v3, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v8, Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v9

    nop

    :try_start_2
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    sget-object v10, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v9, v10

    sget-object v10, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v10, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v10, v10, v8

    const/4 v11, 0x0

    aput v9, v10, v11

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    goto/16 :goto_0

    :cond_5
    :goto_2
    nop

    :goto_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    if-eqz v1, :cond_6

    goto :goto_3

    :catch_2
    move-exception v2

    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    if-eqz v1, :cond_6

    goto :goto_3

    :catch_3
    move-exception v2

    const-string v3, "audio assets file not found"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v0
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    return v2
.end method

.method private muteRingerModeStreams()V
    .locals 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    :cond_0
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    if-ne v3, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v0

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    if-eqz v6, :cond_4

    const/4 v8, 0x3

    move v13, v8

    goto :goto_3

    :cond_4
    move v13, v0

    :goto_3
    const/4 v15, 0x0

    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    add-int/lit8 v8, v2, -0x1

    :goto_4
    if-ltz v8, :cond_e

    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v6, :cond_6

    if-eq v8, v10, :cond_5

    goto :goto_5

    :cond_5
    move v11, v0

    goto :goto_6

    :cond_6
    :goto_5
    move v11, v4

    :goto_6
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    if-nez v12, :cond_8

    if-eqz v5, :cond_7

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    move v13, v0

    goto :goto_8

    :cond_8
    :goto_7
    move v13, v4

    :goto_8
    if-ne v9, v13, :cond_9

    move/from16 v18, v2

    move v2, v0

    goto/16 :goto_d

    :cond_9
    if-nez v13, :cond_d

    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_c

    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10

    :try_start_0
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v8

    move v15, v0

    :goto_9
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_b

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1900(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-nez v0, :cond_a

    move/from16 v17, v0

    const-string v0, "AS.AudioService"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v18, v2

    const/16 v2, 0xa

    :try_start_1
    invoke-virtual {v14, v2, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    goto :goto_a

    :cond_a
    move/from16 v17, v0

    move/from16 v18, v2

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v18

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move/from16 v18, v2

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v22

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v23, 0x0

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v24, v2, v8

    const/16 v25, 0x1f4

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v25}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    monitor-exit v10

    goto :goto_c

    :catchall_0
    move-exception v0

    move/from16 v18, v2

    :goto_b
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_c
    move/from16 v18, v2

    :goto_c
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v4, 0x1

    shl-int v10, v4, v8

    not-int v10, v10

    and-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_d

    :cond_d
    move/from16 v18, v2

    move v2, v0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v10, v4, v8

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    :goto_d
    add-int/lit8 v8, v8, -0x1

    move v0, v2

    move/from16 v2, v18

    goto/16 :goto_4

    :cond_e
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .locals 4

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    if-eq v2, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "onAccessoryPlugMediaUnmute newDevice=%d [%s]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-eq v1, v0, :cond_0

    const v1, 0x402678c

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v5

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, " onAccessoryPlugMediaUnmute unmuting device=%d [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    const v3, 0x400008c

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le v3, v1, :cond_1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0xea60

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0x44aa200

    if-le v1, v5, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    iput v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x400

    invoke-direct {p0, v2, p2}, Lcom/android/server/audio/AudioService;->checkAddAllFixedVolumeDevices(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v3, :cond_0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    const-string v2, "audio.safemedia.force"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11100b5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    const-string v5, "audio.safemedia.bypass"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v5, :cond_3

    const/4 v5, 0x3

    iput v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iput v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    iput v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    move v4, v5

    :cond_5
    :goto_2
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0xe

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AS.AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :try_start_1
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v0

    return-void

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enable surround format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onObserveDevicesForAllStreams()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method private onPlaybackConfigChange(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v5

    if-ne v5, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateHearingAidVolumeOnVoiceActivityUpdate()V

    :cond_3
    return-void
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p2

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v1

    const-string v3, "AS.AudioService.onSetStreamVolume"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    :cond_1
    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    if-nez p2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_3
    new-array v1, v3, [I

    const/16 v4, 0xa1

    aput v4, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p5, :cond_5

    new-instance v1, Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    if-nez p2, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_5
    return-void
.end method

.method private onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->hasVolumeIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->getVolumeIndex()I

    move-result v1

    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    iget-object v3, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " update vol on dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :goto_0
    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method

.method private onUnmuteStream(II)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    move-object v2, p0

    move v3, p1

    move v4, v8

    move v5, v8

    move v6, p2

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    return-void
.end method

.method private onUpdateRingerModeServiceInt()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 7

    const-string v0, "AS.AudioService"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    const-wide/32 v2, 0x40000000

    :try_start_0
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v1

    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    :try_start_0
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1002(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    :cond_3
    monitor-exit v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const v5, 0x44aa200

    invoke-static {v4, v3, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    iget v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v3, v2, :cond_5

    const-string v2, "AS.AudioService"

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    :cond_5
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method private readCameraSoundForced()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "audio.camerasound.force"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move v7, v0

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private readPersistedSettings()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    nop

    const/4 v1, 0x2

    const-string/jumbo v2, "mode_ringer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x2

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-eq v3, v2, :cond_2

    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x2

    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    :cond_5
    nop

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    move v6, v7

    :goto_0
    invoke-static {v7, v4, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    iget v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    move v1, v7

    :goto_1
    invoke-static {v6, v7, v1}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    const-string/jumbo v1, "readPersistedSettings"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x6f

    const/4 v5, -0x2

    const-string/jumbo v6, "mute_streams_affected"

    invoke-static {v0, v6, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    new-array v1, v4, [I

    const/16 v5, 0xb8

    aput v5, v1, v7

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateHacState(Landroid/content/ContentResolver;)V

    :cond_8
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v5, v1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v5, v1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private readUserRestrictions()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string v2, "disallow_unmute_device"

    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v4, "no_adjust_volume"

    invoke-virtual {v1, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    :cond_2
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Master mute %s, user=%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v7, "no_unmute_microphone"

    invoke-virtual {v5, v0, v7}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "Mic mute %s, user=%d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    return-void
.end method

.method private rescaleIndex(III)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "rescaleIndex : index range should not be zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v3

    sub-int v3, p1, v3

    mul-int/2addr v3, v1

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    return v2
.end method

.method private safeMediaVolumeIndex(I)I
    .locals 2

    const v0, 0x400008c

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    :cond_1
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    :cond_2
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    :cond_3
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0
.end method

.method private saveMusicActiveMs()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const-string v2, "encoded_surround_output_enabled_formats"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    move-object v4, v0

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    if-nez p2, :cond_2

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    array-length v7, v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_6

    aget-object v10, v6, v9

    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, 0x0

    sget-object v12, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v13, v12

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_4

    aget v16, v12, v15

    move/from16 v17, v16

    move/from16 v8, v17

    if-ne v8, v0, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid enabled surround format:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "AS.AudioService"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v5, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v8, 0x18

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v12, v14

    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x10

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    nop

    :goto_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AS.AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AS.AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Master mute %s, %d, user=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_3

    :cond_2
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Mic mute %s, user=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eq p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDeviceBroker.mSetModeLock"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p3

    move-object/from16 v9, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setModeInt(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v0, "setModeInt() called with null binder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v0, 0x0

    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v6

    if-ne v6, v8, :cond_1

    move-object v0, v4

    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    iget v11, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v4, 0x0

    move v6, v4

    move-object/from16 v4, p2

    :goto_2
    move v12, v1

    if-nez v1, :cond_4

    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$2200(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v0

    move-object v0, v4

    goto :goto_5

    :cond_3
    move-object v13, v0

    move-object v0, v4

    goto :goto_5

    :cond_4
    if-nez v0, :cond_5

    new-instance v13, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-direct {v13, v7, v4, v8}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    move-object v0, v13

    goto :goto_3

    :cond_5
    move-object v13, v0

    :goto_3
    :try_start_0
    invoke-interface {v4, v13, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode() could not link to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " binder death"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v13, v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    move-object v0, v4

    :goto_5
    iget v4, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v14, 0x1

    if-eq v12, v4, :cond_12

    if-eqz v9, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setModeClient="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string/jumbo v4, "setModeClient=nullPackage"

    const-string/jumbo v15, "setModeClient=nullPackage"

    invoke-static {v15}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    :goto_6
    new-array v4, v14, [I

    const/16 v15, 0xca

    aput v15, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    const/4 v15, 0x3

    if-eqz v4, :cond_8

    const-string v4, "com.tencent.tmgp.sgame"

    if-ne v15, v1, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isKing_vol=1"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "isKing_vol=1"

    invoke-static {v5}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    :cond_7
    if-nez v1, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isKing_vol=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "isKing_vol=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {v12}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v6, :cond_10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mode successfully set to "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v12, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v14, 0x1

    new-array v15, v14, [I

    const/16 v17, 0xa3

    const/16 v16, 0x0

    aput v17, v15, v16

    invoke-static {v15}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v15

    if-eqz v15, :cond_b

    iget-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    const-string v14, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    move/from16 v17, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v15, 0x6

    aget-object v1, v1, v15

    move/from16 v20, v3

    invoke-virtual {v7, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    const/16 v3, 0xa

    div-int/2addr v1, v3

    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v15

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v15

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode() revert sco volume to  "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    move/from16 v20, v3

    :goto_7
    iget v1, v7, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    if-ne v12, v3, :cond_c

    const/16 v1, 0x1388

    const/4 v3, 0x3

    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    invoke-virtual {v7, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    and-int/lit8 v15, v3, 0x70

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v15, v1

    invoke-virtual {v15, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    const/16 v15, 0xa

    div-int/2addr v1, v15

    move/from16 v18, v3

    const-string/jumbo v3, "tts.ring.sco.volume"

    invoke-static {v3, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v1, v3, :cond_c

    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/16 v19, 0x6

    aget-object v15, v15, v19

    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v14, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v19

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode() set sco volume to  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " oldindex "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_a
    move/from16 v18, v3

    goto :goto_8

    :cond_b
    move/from16 v17, v1

    move/from16 v20, v3

    :cond_c
    :goto_8
    const/4 v1, 0x1

    new-array v3, v1, [I

    const/16 v14, 0xa4

    const/4 v15, 0x0

    aput v14, v3, v15

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v7, v1}, Lcom/android/server/audio/AudioService;->postCallDeviceChange(I)V

    :cond_d
    const/4 v1, 0x2

    if-ne v12, v1, :cond_e

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string/jumbo v3, "setStreamMute STREAM_MUSIC mute!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    const/4 v3, 0x0

    goto :goto_9

    :cond_e
    const/4 v1, 0x3

    :cond_f
    const-string/jumbo v3, "setStreamMute STREAM_MUSIC unmute!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    :goto_9
    move/from16 v1, v17

    goto :goto_a

    :cond_10
    move/from16 v17, v1

    move/from16 v20, v3

    const/4 v3, 0x0

    if-eqz v13, :cond_11

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v13, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_11
    const-string v1, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_a
    move/from16 v17, v1

    move v14, v6

    goto :goto_b

    :cond_12
    move/from16 v17, v1

    move/from16 v20, v3

    const/4 v1, 0x0

    move v14, v1

    :goto_b
    if-eqz v14, :cond_14

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_c

    :cond_13
    move-object v4, v0

    move-object v0, v13

    move v6, v14

    move/from16 v1, v17

    move/from16 v3, v20

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_14
    :goto_c
    if-nez v14, :cond_17

    if-eqz v12, :cond_16

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_15
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    move/from16 v20, v1

    :cond_16
    :goto_d
    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v6

    move-object/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, v17

    move/from16 v5, v20

    move-object/from16 v16, v0

    move-object v0, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v15, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/high16 v0, -0x80000000

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v15

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v0

    const/4 v5, 0x1

    const-string v6, "AlertSliderManager"

    move-object/from16 v1, p0

    move/from16 v3, v18

    move v4, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v7, v1, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Lcom/android/server/audio/AudioService;->updateAbsVolumeMultiModeDevices(II)V

    goto :goto_e

    :cond_17
    move-object/from16 v16, v0

    :goto_e
    return v20
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v2, :cond_e

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v11, 0x1

    new-array v2, v11, [I

    const/16 v12, 0xa1

    const/4 v13, 0x0

    aput v12, v2, v13

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-ne v2, v11, :cond_2

    if-eqz p3, :cond_1

    iget v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-eq v0, v2, :cond_1

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    if-eqz v10, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    if-ne v0, v11, :cond_3

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_3

    const/4 v0, 0x0

    move v14, v0

    goto :goto_1

    :cond_3
    move v14, v0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    :try_start_0
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v3

    const/4 v2, 0x2

    if-eqz p3, :cond_6

    invoke-direct {v1, v14}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_4

    new-array v4, v11, [I

    aput v12, v4, v13

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_4

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v4, v14

    move-object/from16 v5, p2

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v14, v2

    :cond_4
    if-eq v14, v0, :cond_5

    invoke-direct {v1, v14, v11}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    :cond_5
    move-object/from16 v18, v9

    goto :goto_3

    :cond_6
    if-eq v14, v0, :cond_7

    invoke-direct {v1, v14, v11}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    :cond_7
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_a

    new-array v4, v11, [I

    aput v12, v4, v13

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_8

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    move v6, v14

    move-object/from16 v7, p2

    move-object/from16 v17, v8

    move v8, v3

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    :try_start_2
    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v4

    move v14, v4

    goto :goto_2

    :cond_8
    move-object/from16 v18, v9

    goto :goto_2

    :cond_9
    move-object/from16 v18, v9

    goto :goto_2

    :cond_a
    move-object/from16 v18, v9

    :goto_2
    new-array v4, v11, [I

    aput v12, v4, v13

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v4

    if-eqz v4, :cond_b

    if-ne v14, v2, :cond_b

    const-string v2, "AlertSliderManager"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "AS.AudioService"

    const-string v4, "AlertSliderManager can not set external ringer mode to normal due to zen mode is open"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    invoke-direct {v1, v14}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    :cond_c
    :goto_3
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_4
    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :goto_5
    return-void
.end method

.method private setRingerModeExt(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v2, [I

    const/16 v2, 0xa1

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const-string/jumbo v3, "mode_ringer"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRingerModeInt set ringerMode  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to database to avoid user-switch and data do not store in time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    if-eqz v1, :cond_3

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v3, :cond_0

    iput v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v4, v1, :cond_1

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v11, 0xea60

    move-object v10, p2

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStreamVolume(stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "vendor.mls.audio.session.status"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "started"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "setStreamVolume() Ignore volume change during MirrorLink session"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, v7, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v12, v2, v8

    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v2, v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    new-array v2, v3, [I

    const/16 v3, 0xa1

    const/4 v15, 0x0

    aput v3, v2, v15

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    if-ne v12, v2, :cond_6

    if-eqz v10, :cond_6

    new-instance v2, Ljava/lang/String;

    const-string v3, "android.media.cts"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    if-ge v0, v2, :cond_4

    if-nez v0, :cond_3

    const-string v2, "AS.AudioService"

    const-string v3, "If change volume to nonzero,need unmute all alias stream firstly"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v12, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unmute stream:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v0, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    :cond_4
    iget v2, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    if-le v0, v2, :cond_5

    iget v0, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volume range fixed to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] by system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_1
    and-int/lit16 v0, v14, 0x380

    if-nez v0, :cond_7

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/16 v0, 0x3e8

    move/from16 v3, p6

    if-ne v3, v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v12

    invoke-virtual {v0, v3, v6, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {v7, v9}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v7, v12, v2, v1}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    invoke-direct {v7, v12, v1}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {v13, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v4, v0

    mul-int/lit8 v0, v2, 0xa

    invoke-direct {v7, v0, v8, v12}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move v2, v0

    const/4 v0, 0x3

    if-ne v12, v0, :cond_d

    and-int/lit16 v3, v14, 0x380

    if-eqz v3, :cond_d

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_d

    :try_start_1
    const-string v3, "AS.AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setStreamVolume postSetAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "stream="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v3, v2, 0xa

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    :cond_d
    const/high16 v0, 0x8000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    if-ne v8, v0, :cond_e

    const-string v0, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setStreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " stream="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v2, v8}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_7

    :cond_e
    :goto_4
    const/4 v0, 0x3

    if-ne v12, v0, :cond_f

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {v7, v4, v2, v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    and-int/lit8 v1, v1, -0x21

    const/4 v0, 0x3

    if-ne v12, v0, :cond_12

    :try_start_2
    iget v0, v7, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v14

    if-eqz v0, :cond_12

    or-int/lit8 v1, v1, 0x20

    if-eqz v2, :cond_11

    iget v0, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    const v0, 0x400008c

    and-int/2addr v0, v14

    if-eqz v0, :cond_10

    invoke-direct {v7, v14}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v0

    move v15, v0

    move v3, v1

    goto :goto_5

    :cond_10
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v15, v0

    move v3, v1

    goto :goto_5

    :cond_11
    move v3, v1

    move v15, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto/16 :goto_7

    :cond_12
    move v3, v1

    move v15, v2

    :goto_5
    :try_start_3
    invoke-direct {v7, v12, v15, v14}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v16, v3

    move/from16 v3, p1

    move v9, v4

    move v4, v15

    move-object/from16 v17, v5

    move/from16 v5, v16

    move/from16 v18, v6

    move v6, v14

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    goto :goto_6

    :cond_13
    move/from16 v16, v3

    move v9, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v15, v0

    :goto_6
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_14

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v0, :cond_14

    iget-boolean v0, v7, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x3

    if-ne v12, v0, :cond_14

    if-eq v9, v15, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    const/4 v4, 0x3

    invoke-virtual {v7, v4}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v5

    invoke-virtual {v7, v4}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v6

    invoke-virtual {v7, v4}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_14
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v9

    move v4, v15

    move/from16 v5, v16

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    move v2, v15

    move/from16 v1, v16

    goto :goto_7

    :catchall_4
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 v18, v6

    move v2, v15

    move/from16 v1, v16

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    :goto_7
    :try_start_7
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_7
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_1

    if-eq p1, p2, :cond_1

    and-int/lit16 v1, p4, 0x100

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private shouldZenMuteStream(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    nop

    :goto_3
    return v1
.end method

.method private unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    if-nez v1, :cond_0

    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accessibility volume enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_1

    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateAssistantUId(Z)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$RoleObserver;->getAssistantRoleHolder()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "AS.AudioService"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, -0x2

    const-string/jumbo v5, "voice_interaction_service"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assistant"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid service name for voice_interaction_service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAssistantUId() could not find UID for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {v0}, Landroid/media/AudioSystem;->setAssistantUid(I)I

    iput v0, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    :cond_6
    return-void
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch exploration enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " stream override delay is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDefaultVolumes()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v3, v0

    aget v2, v2, v4

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateFlagsForTvPlatform(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_0

    and-int/lit8 p1, p1, -0x2

    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateHacState(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "hearing_aid"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHacState:Z

    new-array v1, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHacState:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "HAC state %b"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateHearingAidVolumeOnVoiceActivityUpdate()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v1

    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVoiceActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4, v0, v1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IZII)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v3, v1, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    return-void
.end method

.method private updateMasterBalance(Landroid/content/ContentResolver;)V
    .locals 5

    const-string/jumbo v0, "master_balance"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Master balance %f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterBalance(F)I

    move-result v2

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "setMasterBalance failed for %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "master_mono"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Master mono %b"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, -0x2

    const-string/jumbo v3, "mode_ringer_streams_affected"

    const/16 v4, 0xa6

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_1

    nop

    invoke-interface {v4, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v4, :cond_2

    and-int/lit16 v1, v1, -0x81

    goto :goto_1

    :cond_2
    or-int/lit16 v1, v1, 0x80

    :goto_1
    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    :cond_3
    and-int/lit16 v1, v1, -0x101

    :goto_2
    iget v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v2, 0x1

    return v2

    :cond_4
    return v0
.end method

.method private updateRttEanbled(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "rtt_calling_mode"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    return-void
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/16 v3, 0xa

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    move v4, v0

    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    iget v0, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v0, 0x2

    nop

    :goto_1
    iget-boolean v5, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iput v6, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    move v5, v0

    goto :goto_3

    :cond_4
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    :goto_2
    move v5, v0

    :goto_3
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v7, 0x8

    aput v5, v0, v7

    aput v4, v0, v3

    if-eqz p1, :cond_6

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v5

    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1402(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v0, v7

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v15, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0xa

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v20, v0, v3

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_6
    :goto_4
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget v1, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    return v2

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_2

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1

    :cond_3
    return v1
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AS.AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 8

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 29

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "vendor.mls.audio.session.status"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "started"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x1

    if-ne v12, v2, :cond_0

    const-string v2, "AS.AudioService"

    const-string v3, "adjustStreamVolume() Ignore volume change during MirrorLink session"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    if-eqz v13, :cond_4

    if-eqz v9, :cond_3

    const/4 v2, 0x6

    if-ne v9, v2, :cond_4

    :cond_3
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v15, v2, v9

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v2, v15

    invoke-virtual {v8, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/16 v16, 0x1

    new-array v3, v12, [I

    const/16 v4, 0xa1

    const/4 v6, 0x0

    aput v4, v3, v6

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    const/4 v4, -0x1

    const/16 v6, 0xa

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    if-ne v15, v3, :cond_c

    if-eqz v10, :cond_c

    new-instance v3, Ljava/lang/String;

    const-string v5, "android.media.cts"

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    if-ne v0, v4, :cond_5

    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    mul-int/2addr v3, v6

    if-le v2, v3, :cond_6

    :cond_5
    if-ne v0, v12, :cond_7

    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    mul-int/2addr v3, v6

    if-lt v2, v3, :cond_7

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volume range fixed to ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] by system"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AS.AudioService"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_7
    const/16 v5, -0x64

    if-eq v0, v5, :cond_9

    const/16 v3, 0x64

    if-ne v0, v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v0

    goto :goto_3

    :cond_9
    :goto_0
    iget v3, v8, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-ne v3, v12, :cond_a

    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    move v3, v0

    :goto_1
    move v0, v3

    goto :goto_3

    :cond_b
    const/16 v5, -0x64

    goto :goto_2

    :cond_c
    const/16 v5, -0x64

    goto :goto_2

    :cond_d
    const/16 v5, -0x64

    :goto_2
    move v3, v0

    :goto_3
    and-int/lit16 v0, v7, 0x380

    if-nez v0, :cond_e

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/16 v0, 0x3e8

    move/from16 v4, p6

    if-ne v4, v0, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v0, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v5, v0

    goto :goto_4

    :cond_f
    move v5, v4

    :goto_4
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v15

    move-object/from16 v12, p4

    invoke-virtual {v0, v4, v5, v12}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    and-int/lit8 v0, v1, -0x21

    const/4 v4, 0x3

    if-ne v15, v4, :cond_13

    iget v1, v8, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x20

    iget v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v1, v4, :cond_11

    const v1, 0x400008c

    and-int/2addr v1, v7

    if-eqz v1, :cond_11

    invoke-direct {v8, v7}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    goto :goto_5

    :cond_11
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    :goto_5
    if-eqz v2, :cond_12

    move v2, v1

    move/from16 v24, v1

    move/from16 v23, v2

    goto :goto_6

    :cond_12
    move/from16 v24, v1

    move/from16 v23, v2

    goto :goto_6

    :cond_13
    invoke-direct {v8, v6, v9, v15}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v1

    move/from16 v24, v1

    move/from16 v23, v2

    :goto_6
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v15, v1, :cond_14

    goto :goto_7

    :cond_14
    move/from16 p2, v3

    move/from16 v26, v5

    move-object/from16 v25, v11

    move v11, v7

    move v7, v0

    goto :goto_9

    :cond_15
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v6

    const/4 v1, 0x1

    if-ne v6, v1, :cond_16

    and-int/lit8 v0, v0, -0x11

    :cond_16
    nop

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v20

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 p2, v3

    move-object/from16 v25, v11

    move v11, v4

    move/from16 v4, v24

    move/from16 v26, v5

    const/16 v11, -0x64

    move/from16 v5, v20

    move/from16 v17, v6

    move-object/from16 v6, p4

    move v11, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    move/from16 v16, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_18

    or-int/lit16 v0, v0, 0x80

    :cond_18
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_19

    or-int/lit16 v0, v0, 0x800

    move v7, v0

    goto :goto_9

    :cond_19
    move v7, v0

    :goto_9
    invoke-direct {v8, v15, v7}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v16, 0x0

    move/from16 v28, v16

    goto :goto_a

    :cond_1a
    move/from16 v28, v16

    :goto_a
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    if-eqz v28, :cond_36

    move/from16 v5, p2

    if-eqz v5, :cond_35

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    const/16 v0, 0x65

    if-eqz v13, :cond_21

    if-ne v5, v0, :cond_1b

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_b

    :cond_1b
    const/16 v1, -0x64

    if-ne v5, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_b

    :cond_1c
    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x3

    if-ne v15, v2, :cond_1d

    invoke-direct {v8, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    :cond_1d
    const/4 v2, 0x0

    :goto_c
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_20

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v15, v3, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1f

    :cond_1e
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    move-object/from16 v27, v14

    move v4, v15

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_21
    const/4 v1, 0x1

    if-ne v5, v1, :cond_22

    add-int v1, v23, v24

    invoke-direct {v8, v15, v1, v11}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    move-object/from16 v27, v14

    move v4, v15

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_22
    iget v1, v8, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v11

    if-nez v1, :cond_29

    mul-int v3, v5, v24

    invoke-virtual {v14, v3, v11, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_d

    :cond_23
    move-object/from16 v27, v14

    move v4, v15

    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_24
    :goto_d
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    if-ne v5, v1, :cond_25

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    move-object/from16 v27, v14

    move v4, v15

    goto :goto_e

    :cond_25
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v5, v2, :cond_27

    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_26

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x12

    const/16 v16, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x15e

    move-object/from16 v27, v14

    move-object v14, v2

    move v4, v15

    move v15, v3

    move/from16 v17, v4

    move/from16 v18, v7

    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_e

    :cond_26
    move-object/from16 v27, v14

    move v4, v15

    goto :goto_e

    :cond_27
    move-object/from16 v27, v14

    move v4, v15

    goto :goto_e

    :cond_28
    move-object/from16 v27, v14

    move v4, v15

    const/4 v1, 0x0

    :goto_e
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v19, v11

    move-object/from16 v21, v27

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_f

    :cond_29
    move-object/from16 v27, v14

    move v4, v15

    const/4 v1, 0x0

    :goto_f
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v4, v3, :cond_2a

    and-int/lit16 v3, v11, 0x380

    if-eqz v3, :cond_2a

    and-int/lit8 v3, v7, 0x40

    if-nez v3, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustSreamVolume: postSetAvrcpAbsoluteVolumeIndex index="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "stream="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "AS.AudioService"

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v14, v2, 0xa

    invoke-virtual {v3, v14}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    :cond_2a
    const/high16 v3, 0x8000000

    and-int/2addr v3, v11

    if-eqz v3, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v3

    if-ne v9, v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustSreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " stream="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "AS.AudioService"

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v2, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    :cond_2b
    const/4 v3, 0x3

    if-ne v4, v3, :cond_2c

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    invoke-direct {v8, v6, v2, v3, v7}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    :cond_2c
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v14, :cond_34

    iget-boolean v14, v8, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v14, :cond_30

    const/4 v14, 0x3

    if-ne v4, v14, :cond_30

    :try_start_2
    iget v14, v8, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v14, v11

    if-eqz v14, :cond_30

    const/4 v14, 0x0

    const/4 v15, -0x1

    if-eq v5, v15, :cond_2f

    const/4 v15, 0x1

    if-eq v5, v15, :cond_2e

    if-eq v5, v0, :cond_2d

    goto :goto_10

    :cond_2d
    const/16 v14, 0xa4

    goto :goto_10

    :cond_2e
    const/16 v14, 0x18

    goto :goto_10

    :cond_2f
    const/16 v14, 0x19

    nop

    :goto_10
    if-eqz v14, :cond_30

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move/from16 p2, v2

    move/from16 p3, v4

    goto :goto_14

    :cond_30
    :goto_11
    :try_start_5
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v0, :cond_33

    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x3

    if-ne v4, v0, :cond_33

    if-ne v6, v2, :cond_32

    if-eqz v13, :cond_31

    goto :goto_12

    :cond_31
    move/from16 p2, v2

    move/from16 p3, v4

    goto :goto_13

    :cond_32
    :goto_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 p2, v2

    const/4 v15, 0x3

    :try_start_6
    invoke-virtual {v8, v15}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 p3, v4

    :try_start_7
    invoke-virtual {v8, v15}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v4

    invoke-virtual {v8, v15}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v15

    invoke-virtual {v14, v13, v2, v4, v15}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    :catchall_2
    move-exception v0

    move/from16 p3, v4

    goto :goto_14

    :cond_33
    move/from16 p2, v2

    move/from16 p3, v4

    goto :goto_13

    :cond_34
    move/from16 p2, v2

    move/from16 p3, v4

    :goto_13
    monitor-exit v3

    goto :goto_15

    :catchall_3
    move-exception v0

    move/from16 p2, v2

    move/from16 p3, v4

    :goto_14
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_14

    :cond_35
    move-object/from16 v27, v14

    move/from16 p3, v15

    goto :goto_15

    :cond_36
    move/from16 v5, p2

    move-object/from16 v27, v14

    move/from16 p3, v15

    :goto_15
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v6

    move/from16 v14, p3

    move v4, v0

    move v15, v5

    move v5, v7

    move/from16 v16, v6

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    return-void

    :catchall_5
    move-exception v0

    move/from16 v26, v5

    move-object/from16 v25, v11

    move-object/from16 v27, v14

    move v14, v15

    move v15, v3

    move v11, v7

    :goto_16
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_16
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v8, p0

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v9, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x16

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v12, p1

    move-object v14, v0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_0
    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avrcpSupportsAbsoluteVolume addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " support="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v6, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public cancelAutoPlayback()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    iget v4, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    const/4 v5, 0x0

    const-string v6, "RevertMusicVolBeforeGradienting"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method checkMusicActive(ILjava/lang/String;)V
    .locals 8

    const v0, 0x400008c

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public disableRingtoneSync(I)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 8

    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AS.AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "ultrasound-proximity"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "temp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "ultrasound-proximity=true"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/android/server/audio/AudioService;->mUltrasoundproximitystatus:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUltrasoundproximitystatus:Z

    :goto_0
    const-string v1, "  mUltrasoundproximitystatus="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUltrasoundproximitystatus:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_2
    new-array v1, v4, [I

    const/16 v2, 0xb8

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "  mHacState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHacState:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    const-string v1, "  mHasVibrator="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mVolumePolicy="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mIsSingleVolume="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mUseFixedVolume="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mFixedVolumeDevices=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mHdmiCecSink="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  mHdmiAudioSystemClient="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mHdmiPlaybackClient="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mHdmiTvClient="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mHdmiSystemAudioSupported="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "\nEvent logs:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v2, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AS.AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const/4 v1, 0x1

    :cond_2
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "forceVolumeControlStream(%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq p1, v4, :cond_1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    :cond_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    :cond_2
    iput-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p2, :cond_5

    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    new-instance v0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAudioProductStrategies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioVolumeGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method getDeviceForStream(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/high16 v0, 0x40000

    goto :goto_0

    :cond_1
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    const/high16 v0, 0x80000

    goto :goto_0

    :cond_2
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    const/high16 v0, 0x200000

    goto :goto_0

    :cond_3
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceForStream: combination device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, -0x8001

    and-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    and-int/lit16 v0, v0, 0x380

    :cond_5
    :goto_0
    return v0
.end method

.method public getDeviceStreamVolume(II)I
    .locals 4

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    move v1, v2

    :cond_0
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method getHearingAidStreamType()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method getModeOwnerPid()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    move v2, v3

    :cond_1
    add-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/media/AudioSystem;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I

    move-result v2

    return v2
.end method

.method getVssVolumeForDevice(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 8

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/16 v1, 0xb

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eq p2, v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChangeExt(Landroid/bluetooth/BluetoothDevice;IIZI)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasAudioFocusUsers()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method public hasHapticChannels(Landroid/net/Uri;)Z
    .locals 6

    const-string v0, "haptic-channel-count"

    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHapticChannels failure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AS.AudioService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method hasMediaDynamicPolicy()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(I)Z

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v0

    return v5

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRegisteredDynamicPolicy()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAudioServerRunning()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoOnForApp()Z

    move-result v0

    return v0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method isInCommunication()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4
.end method

.method public isMasterMute()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method isPlatformAutomotive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPlatformTelevision()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamMute(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    :cond_0
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValidRingerMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadSoundEffects()Z
    .locals 10

    const/4 v0, 0x3

    new-instance v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :goto_0
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    const-wide/16 v3, 0x1388

    :try_start_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "AS.AudioService"

    const-string/jumbo v4, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    return v3

    :catchall_0
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 2

    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume controller visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    return-void
.end method

.method public onAudioServerDied()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onAudioServerDied()V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v3}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x4

    const-string/jumbo v4, "onAudioServerDied"

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v0

    nop

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v0, v5, v6}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/16 v5, 0xb8

    aput v5, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->updateHacState(Landroid/content/ContentResolver;)V

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    :cond_5
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v5, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    nop

    :goto_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v6, 0x3

    const-string/jumbo v7, "onAudioServerDied"

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "onAudioServerDied"

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateRttEanbled(Landroid/content/ContentResolver;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    invoke-static {v2}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    nop

    goto :goto_3

    :cond_8
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    const-string/jumbo v0, "restarting=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "audio_server_restarted"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHacState:Z

    if-eqz v0, :cond_9

    const-string v0, "HACSetting=ON"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const-string v0, "HACSetting=OFF"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :cond_a
    :goto_5
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method onIndicateSystemReady()V
    .locals 8

    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->scheduleLoadSoundEffects()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->onSystemReady()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v4, -0x2c0003

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "audio.safemedia.bypass"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move v9, v2

    goto :goto_1

    :cond_3
    const/16 v1, 0x7530

    move v9, v1

    :goto_1
    const-string v8, "AS.AudioService"

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    new-instance v1, Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$RoleObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RoleObserver;->register()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    new-array v1, v0, [I

    const/16 v3, 0xa1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/oneplus/android/server/alertslider/AlertSliderManagerInjector;->initAlertSliderManager(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    :cond_4
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioService effectType value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    return-void
.end method

.method public playerEvent(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMusicActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " currentPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v4, "com.android.systemui"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    const-string v4, "com.android.settings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    move v3, p1

    move v5, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/OpAudioMonitor;->playerEvent(IIIILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v2, "playerEvent app is systemui or settings, skip!"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    return-void
.end method

.method postAccessoryPlugMediaUnmute(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postCallDeviceChange(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postObserveDevicesForAllStreams()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IIILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postUpdateRingerModeServiceInt()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public recorderEvent(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->recorderEvent(II)V

    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct {v10, v11, v1, v13, v14}, Lcom/android/server/audio/AudioService;->isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied to register audio policy for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", need MODIFY_AUDIO_ROUTING or MediaProjection that can project audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_2
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAudioPolicy for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioService"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/16 v16, 0x0

    iget-object v9, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "AS.AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v15

    :cond_3
    :try_start_1
    new-instance v17, Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v18, v9

    move-object/from16 v9, p7

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V

    move-object/from16 v1, v17

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :try_start_3
    monitor-exit v18

    return-object v16

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v9

    :goto_2
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed for binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v18

    return-object v15

    :catch_3
    move-exception v0

    move-object/from16 v18, v9

    :goto_3
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v18

    return-object v15

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_4
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AS.AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    return-void
.end method

.method public releasePlayer(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    const/4 v3, 0x3

    const/4 v4, 0x4

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    move v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/OpAudioMonitor;->playerEvent(IIIILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v1, "releasePlayer app is systemui or settings, skip!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public releaseRecorder(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot remove device affinity in audio policy"

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinities(I)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 15

    move-object v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "AS.AudioService"

    const-string v4, "Invalid permission to (un)lock audio focus"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3

    :cond_0
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AS.AudioService"

    const-string v4, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v3

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    if-eqz p6, :cond_4

    if-eqz v13, :cond_4

    if-nez v12, :cond_3

    move/from16 v14, p2

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move/from16 v14, p2

    invoke-direct {p0, v12, v14, v0}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0

    :cond_4
    move/from16 v14, p2

    :goto_1
    const-string v0, "AS.AudioService"

    const-string v2, "Invalid null parameter to request audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method protected scheduleLoadSoundEffects()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method protected sendVolumeUpdate(IIIII)V
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result p4

    iget v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    and-int/2addr v0, p5

    if-eqz v0, :cond_0

    and-int/lit8 p4, p4, -0x2

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOn_Async(ZLjava/lang/String;)V

    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .locals 8

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoiceActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v7, "AudioService"

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 11

    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "AS.AudioService"

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In setBluetoothScoOn(), on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". The calling application Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", is greater than FIRST_APPLICATION_UID exiting from setBluetoothScoOn()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOnByApp(Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setBluetoothScoOn(), eventSource: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xa3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    const/16 v2, 0x20

    if-nez p1, :cond_2

    iget v3, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    const/4 v8, 0x0

    const/16 v9, 0x20

    const-string v10, "HeadsetProfile"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/audio/AudioService;->setStreamVolumeForDevice(IIIILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v3

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v4

    if-eq p2, v4, :cond_0

    if-eqz v0, :cond_0

    and-int/lit16 v5, p2, 0x380

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v3

    invoke-virtual {v5, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(IZ)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/16 v9, 0x1f4

    move v6, p2

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot change audio policy focus properties"

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_2

    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-nez v2, :cond_0

    const-string v2, "AS.AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV or audio system device supportssystem audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz p1, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x5

    const-string/jumbo v5, "setHdmiSystemAudioSupported"

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v2

    move v0, v2

    :cond_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "setMicrophoneMute()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p3, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode(mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Process ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "setMode()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v3, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v4

    move v1, v4

    :cond_3
    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    move p1, v0

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v1, :cond_5

    if-eqz v2, :cond_5

    const-string v0, "AS.AudioService"

    const-string v3, "In setMode(), calling disconnectBluetoothSco()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postDisconnectBluetoothSco(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mCurrentPackageName:Ljava/lang/String;

    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 7

    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v1, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode is call, Permission Denial: setSpeakerphoneOn from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setSpeakerphoneOn(), on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", eventSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->setSpeakerphoneOn(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_4
    :goto_2
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 8

    const-string v0, "AS.AudioService"

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v6, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setStreamVolumeForDevice(IIIILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x3

    const-string v1, "AS.AudioService"

    if-ne p1, v0, :cond_3

    const/4 v2, 0x2

    if-ne p4, v2, :cond_3

    const/16 v2, -0x64

    const/4 v3, -0x1

    if-ne p3, v2, :cond_1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    const-string/jumbo v2, "set speaker music mute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v2, 0x64

    if-ne p3, v2, :cond_3

    iget v6, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v6, v3, :cond_2

    return-void

    :cond_2
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, p0

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore speaker music "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-ne p1, v0, :cond_7

    const/16 v0, 0x20

    if-ne p4, v0, :cond_7

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_5

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set sco music volume to max + mPerScoMediaVolume"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-nez p3, :cond_7

    iget v4, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-ne p2, v4, :cond_7

    if-gez v4, :cond_6

    return-void

    :cond_6
    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore soc  music volume to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method public setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot change device affinity in audio policy"

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVibrateSetting(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3

    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume controller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {v8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v10

    invoke-static {v8, v10}, Landroid/media/AudioSystem;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I

    move-result v11

    move/from16 v12, p2

    invoke-static {v8, v12, v10}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v13

    invoke-direct {v7, v13}, Lcom/android/server/audio/AudioService;->getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v14

    if-nez v14, :cond_0

    return-void

    :cond_0
    invoke-virtual {v14}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v15

    array-length v6, v15

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v6, :cond_1

    aget v16, v15, v5

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v18, v5

    move-object/from16 v5, p4

    move/from16 v19, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v19

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 2

    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Volume policy changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11100f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, -0x2

    const-string/jumbo v7, "volume_hush_gesture"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1040740

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x1040741

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startAutoPlayback(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 3

    const-string v0, "AS.AudioService"

    const-string v1, "In startBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x12

    if-ge p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startBluetoothSco()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ") from u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In startBluetoothScoInt(), scoAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker;->startBluetoothScoForClient_Sync(Landroid/os/IBinder;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "AS.AudioService"

    const-string v1, "In startBluetoothScoVirtualCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startBluetoothScoVirtualCall()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    return-object v0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "AS.AudioService"

    const-string v1, "In stopBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "stopBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ") from u/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->stopBluetoothScoForClient_Sync(Landroid/os/IBinder;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/OpAudioMonitor;

    invoke-virtual {v0}, Lcom/android/server/audio/OpAudioMonitor;->systemReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "mAudioMonitor.systemReady ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->trackRecorder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    if-nez v1, :cond_0

    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    return-void
.end method

.method updateAbsVolumeMultiModeDevices(II)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    return-void

    :cond_1
    return-void

    :cond_2
    nop

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:I

    and-int v3, v1, v2

    if-nez v3, :cond_3

    return-void

    :cond_3
    and-int/2addr v2, v1

    const/high16 v3, 0x8000000

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v2

    sget-object v3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v5, 0x7

    invoke-direct {v4, v5, p2, v0, v2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v4, v2, 0xa

    invoke-virtual {v3, v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    :cond_4
    return-void
.end method
