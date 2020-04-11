.class Lcom/oneplus/custom/utils/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lsis/you/you/sis/zta/zta$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/custom/utils/rtg;->Bf()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rga:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/custom/utils/tsu;->rga:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(ZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/oneplus/custom/utils/rtg;->vju(Z)Z

    invoke-static {p2}, Lcom/oneplus/custom/utils/rtg;->ssp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oneplus/custom/utils/tsu;->rga:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
