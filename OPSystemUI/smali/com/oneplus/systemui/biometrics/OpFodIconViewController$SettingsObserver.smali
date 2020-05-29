.class final Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpFodIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final fpScreenTimeoutAnimation:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "fp_screen_time_out"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->fpScreenTimeoutAnimation:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$600(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "fp_screen_time_out"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpFodIconViewController;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFodIconViewController;->access$600(Lcom/oneplus/systemui/biometrics/OpFodIconViewController;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpFodIconViewController$SettingsObserver;->fpScreenTimeoutAnimation:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
