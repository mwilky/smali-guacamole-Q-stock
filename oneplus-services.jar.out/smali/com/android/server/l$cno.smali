.class Lcom/android/server/l$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field public cg:Z

.field public dg:Z

.field public eg:Z

.field public fg:I

.field public gg:I

.field public hg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/l;


# direct methods
.method public constructor <init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/l$cno;->this$0:Lcom/android/server/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/l$cno;->cg:Z

    iput-boolean p3, p0, Lcom/android/server/l$cno;->dg:Z

    iput-boolean p4, p0, Lcom/android/server/l$cno;->eg:Z

    iput p5, p0, Lcom/android/server/l$cno;->fg:I

    iput p6, p0, Lcom/android/server/l$cno;->gg:I

    iput-object p7, p0, Lcom/android/server/l$cno;->hg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedReportLogs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l$cno;->cg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedReportMDM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l$cno;->dg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedReprotBugreport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l$cno;->eg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCriticalTemp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l$cno;->fg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCriticalChargingTemp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l$cno;->gg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMdmEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/l$cno;->hg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(ZZZIILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l$cno;->cg:Z

    iput-boolean p2, p0, Lcom/android/server/l$cno;->dg:Z

    iput-boolean p3, p0, Lcom/android/server/l$cno;->eg:Z

    iput p4, p0, Lcom/android/server/l$cno;->fg:I

    iput p5, p0, Lcom/android/server/l$cno;->gg:I

    iput-object p6, p0, Lcom/android/server/l$cno;->hg:Ljava/lang/String;

    return-void
.end method
