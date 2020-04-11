.class public final Lcom/android/server/LocationManagerService$LocationManagerServiceInner;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocationManagerServiceInner"
.end annotation


# instance fields
.field mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLocationManagerService:Lcom/android/server/LocationManagerService;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/content/Context;Lcom/android/server/LocationManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->mBlockedUids:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    return-void
.end method


# virtual methods
.method public applyRequirementsInnerLocked(Lcom/android/server/LocationManagerService$LocationProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    return-void
.end method

.method public getBlockedUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHighPowerIntervalMs()J
    .locals 2

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProviders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$LocationProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getReceivers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/android/server/LocationManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->mLocationManagerService:Lcom/android/server/LocationManagerService;

    return-object v0
.end method
