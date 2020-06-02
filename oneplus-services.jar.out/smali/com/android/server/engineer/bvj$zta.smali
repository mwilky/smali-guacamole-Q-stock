.class public Lcom/android/server/engineer/bvj$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/bvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "zta"
.end annotation


# instance fields
.field protected mVersion:J

.field final synthetic this$0:Lcom/android/server/engineer/bvj;


# direct methods
.method protected constructor <init>(Lcom/android/server/engineer/bvj;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/engineer/bvj$zta;->this$0:Lcom/android/server/engineer/bvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/engineer/bvj$zta;->mVersion:J

    return-void
.end method


# virtual methods
.method public K(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public L(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/engineer/bvj$zta;->mVersion:J

    return-wide v0
.end method

.method public insert(ILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zta(Lcom/android/server/engineer/bvj$zta;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
