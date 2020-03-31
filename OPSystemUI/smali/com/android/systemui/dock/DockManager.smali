.class public interface abstract Lcom/android/systemui/dock/DockManager;
.super Ljava/lang/Object;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dock/DockManager$DockEventListener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
.end method

.method public abstract isDocked()Z
.end method

.method public abstract removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
.end method
