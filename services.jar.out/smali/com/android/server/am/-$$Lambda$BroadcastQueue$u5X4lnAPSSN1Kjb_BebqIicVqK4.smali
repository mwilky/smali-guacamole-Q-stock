.class public final synthetic Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field private final synthetic f$1:Lcom/android/server/am/BroadcastRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;->f$1:Lcom/android/server/am/BroadcastRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$u5X4lnAPSSN1Kjb_BebqIicVqK4;->f$1:Lcom/android/server/am/BroadcastRecord;

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->lambda$postActivityStartTokenRemoval$0(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method
