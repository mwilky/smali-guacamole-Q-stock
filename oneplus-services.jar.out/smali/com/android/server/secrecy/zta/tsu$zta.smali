.class public Lcom/android/server/secrecy/zta/tsu$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/zta/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field private final sis:Lcom/android/server/secrecy/zta/tsu;

.field final synthetic this$0:Lcom/android/server/secrecy/zta/tsu;


# direct methods
.method public constructor <init>(Lcom/android/server/secrecy/zta/tsu;Lcom/android/server/secrecy/zta/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/secrecy/zta/tsu$zta;->this$0:Lcom/android/server/secrecy/zta/tsu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/server/secrecy/zta/tsu$zta;->sis:Lcom/android/server/secrecy/zta/tsu;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/secrecy/zta/tsu;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PolicyFactor onReceive, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/secrecy/zta/tsu$zta;->sis:Lcom/android/server/secrecy/zta/tsu;

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/tsu;->yd()Lcom/android/server/secrecy/zta/sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/secrecy/zta/sis;->xd()V

    return-void
.end method
