.class public interface abstract Lcom/oneplus/opzenmode/OpZenModeController;
.super Ljava/lang/Object;
.source "OpZenModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/opzenmode/OpZenModeController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/oneplus/opzenmode/OpZenModeController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDndEnable()Z
.end method

.method public abstract getThreeKeySatus()I
.end method

.method public abstract setDndEnable(Z)V
.end method
