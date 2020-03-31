.class public interface abstract Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController;
.super Ljava/lang/Object;
.source "WorkLifeBalanceController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/Listenable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/WorkLifeBalanceController$WorkLifeBalanceControllerCallback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract isWlbOn()Z
.end method

.method public abstract isWlbSetupDone()Z
.end method
