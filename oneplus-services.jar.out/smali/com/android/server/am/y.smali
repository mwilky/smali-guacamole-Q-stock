.class Lcom/android/server/am/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/B;->zgw(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dz:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/B;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/B;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/y;->this$0:Lcom/android/server/am/B;

    iput-object p2, p0, Lcom/android/server/am/y;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/y;->dz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/y;->val$packageName:Ljava/lang/String;

    const-string v2, "pn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/y;->dz:Ljava/lang/String;

    const-string v2, "pvn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/y;->this$0:Lcom/android/server/am/B;

    invoke-static {p0}, Lcom/android/server/am/B;->rtg(Lcom/android/server/am/B;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "embryo_crash"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
