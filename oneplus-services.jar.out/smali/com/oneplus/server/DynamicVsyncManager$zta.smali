.class Lcom/oneplus/server/DynamicVsyncManager$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/DynamicVsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/DynamicVsyncManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/server/DynamicVsyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager$zta;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/server/DynamicVsyncManager;Lcom/oneplus/server/zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager$zta;-><init>(Lcom/oneplus/server/DynamicVsyncManager;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager$zta;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->zta(Lcom/oneplus/server/DynamicVsyncManager;Lorg/json/JSONArray;)V

    return-void
.end method
