.class public interface abstract Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$Callback;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract areLaunchAnimationsEnabled()Z
.end method

.method public abstract onExpandAnimationFinished(Z)V
.end method

.method public abstract onExpandAnimationTimedOut()V
.end method

.method public abstract onLaunchAnimationCancelled()V
.end method
