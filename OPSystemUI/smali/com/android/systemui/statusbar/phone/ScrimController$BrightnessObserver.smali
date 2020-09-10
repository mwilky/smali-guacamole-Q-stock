.class Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "ScrimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$900(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1000()F

    move-result p2

    float-to-int p2, p2

    const/4 v0, -0x2

    const-string v1, "screen_brightness"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$802(F)F

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800()F

    move-result p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100()F

    move-result p2

    cmpl-float p1, p1, p2

    const p2, 0x3ecccccd    # 0.4f

    const v0, 0x3dcccccd    # 0.1f

    if-lez p1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800()F

    move-result p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1200()F

    move-result v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    const v1, 0x3e999999    # 0.29999998f

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    sput p1, Lcom/android/systemui/statusbar/phone/ScrimController;->ONEPLUS_GRADIENT_SCRIM_ALPHA_BUSY:F

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800()F

    move-result p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1100()F

    move-result v1

    div-float/2addr p1, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    sput p1, Lcom/android/systemui/statusbar/phone/ScrimController;->ONEPLUS_GRADIENT_SCRIM_ALPHA_BUSY:F

    :goto_0
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBriChange: curBacklight="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$800()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", adjustedAlpha="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->ONEPLUS_GRADIENT_SCRIM_ALPHA_BUSY:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alphaRange="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", ratio="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x3e19999a    # 0.15f

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrimController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$702(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$1300(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public startObserving()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->access$900(Lcom/android/systemui/statusbar/phone/ScrimController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
