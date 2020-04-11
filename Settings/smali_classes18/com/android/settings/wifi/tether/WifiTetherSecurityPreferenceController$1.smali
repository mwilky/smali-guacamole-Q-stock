.class Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherSecurityPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)I

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)I

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    :cond_1
    :goto_0
    return-void
.end method
