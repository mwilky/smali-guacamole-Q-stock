.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final VDa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private dFa:Z

.field private eFa:Z

.field private fFa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->dFa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->eFa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->fFa:Z

    return-void
.end method


# virtual methods
.method Gk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->eFa:Z

    return p0
.end method

.method Hk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->dFa:Z

    return p0
.end method

.method Ik()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->fFa:Z

    return p0
.end method

.method Jk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->eFa:Z

    return-void
.end method

.method Kk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->dFa:Z

    return-void
.end method

.method Lk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->fFa:Z

    return-void
.end method
