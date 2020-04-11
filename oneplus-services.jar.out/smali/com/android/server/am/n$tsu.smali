.class Lcom/android/server/am/n$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# static fields
.field static final G:I = 0x3ea

.field static final H:Ljava/lang/String; = "pkgName"

.field static final J:Ljava/lang/String; = "pkgChangeAction"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final v:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/android/server/am/n;


# direct methods
.method constructor <init>(Lcom/android/server/am/n;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/n$tsu;->this$0:Lcom/android/server/am/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/n$tsu;->this$0:Lcom/android/server/am/n;

    const-string p1, "OnePlusAntiBurnConfig"

    invoke-static {p0, p1}, Lcom/android/server/am/n;->zta(Lcom/android/server/am/n;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
