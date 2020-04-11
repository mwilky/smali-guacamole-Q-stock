.class Lcom/android/server/am/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/n;->initOnlineConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/n;


# direct methods
.method constructor <init>(Lcom/android/server/am/n;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/m;->this$0:Lcom/android/server/am/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    const-string p1, "OpAntiBurnController"

    const-string v0, "Update Config----------------"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/m;->this$0:Lcom/android/server/am/n;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/n;->zta(Lcom/android/server/am/n;Z)V

    return-void
.end method
