.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceLinkStateChanged$8$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Z)V

    return-void
.end method
