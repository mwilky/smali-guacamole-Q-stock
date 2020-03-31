.class public interface abstract Lcom/oneplus/battery/OpChargingAnimationController;
.super Ljava/lang/Object;
.source "OpChargingAnimationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/oneplus/battery/OpChargingAnimationController$ChargingStateChangeCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract animationEnd(I)V
.end method

.method public abstract animationStart(I)V
.end method

.method public abstract init(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
.end method

.method public abstract isAnimationStarted()Z
.end method

.method public abstract onWallpaperChange(Landroid/graphics/Bitmap;)V
.end method
