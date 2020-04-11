.class public final synthetic Lcom/android/server/-$$Lambda$ConnectivityService$rcN1FPtuPN30DTw9z6HkbAXcp9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ConnectivityService;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ConnectivityService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$rcN1FPtuPN30DTw9z6HkbAXcp9A;->f$0:Lcom/android/server/ConnectivityService;

    iput-boolean p2, p0, Lcom/android/server/-$$Lambda$ConnectivityService$rcN1FPtuPN30DTw9z6HkbAXcp9A;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ConnectivityService$rcN1FPtuPN30DTw9z6HkbAXcp9A;->f$0:Lcom/android/server/ConnectivityService;

    iget-boolean v1, p0, Lcom/android/server/-$$Lambda$ConnectivityService$rcN1FPtuPN30DTw9z6HkbAXcp9A;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->lambda$setSlaEnable$7$ConnectivityService(Z)V

    return-void
.end method
