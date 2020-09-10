.class Lcom/android/server/am/v$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "you"
.end annotation


# instance fields
.field public Dx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;"
        }
    .end annotation
.end field

.field public Ex:Lcom/android/server/am/v$zta;

.field public Fx:D

.field public mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/v$you;->mId:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump()V
    .locals 5

    const-string v0, "-----------------------------------------------------------------------"

    const-string v1, "OpRestartProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cluster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/v$you;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/v$you;->Ex:Lcom/android/server/am/v$zta;

    invoke-virtual {v2}, Lcom/android/server/am/v$zta;->dump()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distance from 0 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/v$you;->Fx:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "All data : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$bio;

    invoke-virtual {v2}, Lcom/android/server/am/v$bio;->dump()V

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/v$you;->mId:I

    return p0
.end method

.method public lc()Lcom/android/server/am/v$zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/v$you;->Ex:Lcom/android/server/am/v$zta;

    return-object p0
.end method

.method public mc()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    return-object p0
.end method

.method public sis(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    return-void
.end method

.method public zta(Lcom/android/server/am/v$bio;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zta(Lcom/android/server/am/v$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/v$you;->Ex:Lcom/android/server/am/v$zta;

    return-void
.end method
