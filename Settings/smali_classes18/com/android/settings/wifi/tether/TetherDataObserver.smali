.class public Lcom/android/settings/wifi/tether/TetherDataObserver;
.super Landroid/database/ContentObserver;
.source "TetherDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherDataObserver;->mCallback:Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherDataObserver;->mCallback:Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;->onTetherDataChange()V

    :cond_0
    return-void
.end method
