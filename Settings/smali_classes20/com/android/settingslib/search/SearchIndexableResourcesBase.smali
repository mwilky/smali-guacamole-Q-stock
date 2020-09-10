.class public Lcom/android/settingslib/search/SearchIndexableResourcesBase;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesBase.java"

# interfaces
.implements Lcom/android/settingslib/search/SearchIndexableResources;


# instance fields
.field private final mProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    const-class v0, Lcom/android/settings/DateTimeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/LegalSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/TetherSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/AccessibilityControlTimeoutPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accessibility/VibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accounts/AccountDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/DefaultAppSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/assist/ManageAssist;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/backup/PrivacySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/backup/UserBackupSettingsActivity;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/development/featureflags/FeatureFlagsDashboard;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/development/gamedriver/GameDriverDashboard;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/development/qstile/DevelopmentTileConfigFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/display/ColorModePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/dream/DreamSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/AssistGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/DoubleTwistGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/GestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/GlobalActionsPanelSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/PickupGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/SwipeToNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/gestures/TapScreenGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/language/LanguageAndInputSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/location/RecentLocationRequestSeeAllFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/network/NetworkDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/AppBubbleNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/SoundSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenAccessSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeBypassingAppsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeCallsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeMessagesSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/notification/ZenModeSoundVibrationSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/security/EncryptionAndCredential;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/security/LockscreenDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/security/trustagent/TrustAgentSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/support/SupportDashboardActivity;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/system/ResetDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/system/SystemDashboardFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/users/UserSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPScreenRefreshRate;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPScreenResolutionAdjust;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPThemeSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/OPVideoEnhancerSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/aboutphone/OPAboutPhone;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/better/OPGamingMode;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/better/OPNightMode;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/better/OPReadingMode;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/better/OPReadingModeTurnOnSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/others/OPExperienceImprovementFragment;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/others/OPToolsSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/oneplus/settings/product/OPProductInfoSettings;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->addIndex(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public addIndex(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/search/SearchIndexableResourcesBase;->mProviders:Ljava/util/Set;

    return-object v0
.end method
