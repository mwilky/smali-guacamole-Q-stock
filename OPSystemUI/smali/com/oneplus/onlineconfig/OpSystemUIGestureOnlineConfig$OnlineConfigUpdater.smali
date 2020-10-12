.class Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;
.super Ljava/lang/Object;
.source "OpSystemUIGestureOnlineConfig.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;


# direct methods
.method private constructor <init>(Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;-><init>(Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "OpGestureOnlineConfig"

    const-string v1, "Receive online config update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig$OnlineConfigUpdater;->this$0:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-virtual {p0, p1}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
