.class Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OPReadingModeTurnOnPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final readingModeStatusUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "reading_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->readingModeStatusUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->readingModeStatusUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$600(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "reading_mode_status"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->this$0:Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;->access$100(Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;)Lcom/android/settings/widget/MasterSwitchPreference;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController$SettingObserver;->readingModeStatusUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
