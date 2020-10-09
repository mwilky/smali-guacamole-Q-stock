.class Lyou/zta/sis/zta/lqr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/gwm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyou/zta/sis/zta/veq;->you(Lyou/zta/sis/zta/wtn$zta;[B)Lyou/zta/sis/zta/wtn$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kHa:Lyou/zta/sis/zta/wtn$zta;

.field final synthetic val$a:B


# direct methods
.method constructor <init>(Lyou/zta/sis/zta/wtn$zta;B)V
    .locals 0

    iput-object p1, p0, Lyou/zta/sis/zta/lqr;->kHa:Lyou/zta/sis/zta/wtn$zta;

    iput-byte p2, p0, Lyou/zta/sis/zta/lqr;->val$a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Lyou/zta/sis/zta/ugm;)Lyou/zta/sis/zta/ugm;
    .locals 1

    instance-of v0, p1, Lyou/zta/sis/zta/cgv;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lyou/zta/sis/zta/cgv;

    invoke-direct {p1}, Lyou/zta/sis/zta/cgv;-><init>()V

    iget-object v0, p0, Lyou/zta/sis/zta/lqr;->kHa:Lyou/zta/sis/zta/wtn$zta;

    iget-byte p0, p0, Lyou/zta/sis/zta/lqr;->val$a:B

    invoke-static {v0, p0}, Lyou/zta/sis/zta/obl;->zta(Lyou/zta/sis/zta/wtn$zta;B)[Lyou/zta/sis/zta/wtn$zta;

    move-result-object p0

    invoke-virtual {p1, p0}, Lyou/zta/sis/zta/cgv;->zta([Lyou/zta/sis/zta/wtn$zta;)V

    return-object p1
.end method
