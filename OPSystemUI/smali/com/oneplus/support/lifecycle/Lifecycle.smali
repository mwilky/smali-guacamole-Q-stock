.class public abstract Lcom/oneplus/support/lifecycle/Lifecycle;
.super Ljava/lang/Object;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/lifecycle/Lifecycle$State;,
        Lcom/oneplus/support/lifecycle/Lifecycle$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V
.end method

.method public abstract getCurrentState()Lcom/oneplus/support/lifecycle/Lifecycle$State;
.end method

.method public abstract removeObserver(Lcom/oneplus/support/lifecycle/LifecycleObserver;)V
.end method
