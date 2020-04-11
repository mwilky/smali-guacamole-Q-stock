.class public Lcom/android/settings/development/gamedriver/GameDriverContentObserver;
.super Landroid/database/ContentObserver;
.source "GameDriverContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->mListener:Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->mListener:Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;

    invoke-interface {v0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;->onGameDriverContentChanged()V

    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    nop

    const-string v0, "game_driver_all_apps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
