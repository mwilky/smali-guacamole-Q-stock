.class Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/WifiCallingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$000(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public register(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->mSubId:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/WifiCallingPreferenceController$PhoneCallStateListener;->this$0:Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/WifiCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
