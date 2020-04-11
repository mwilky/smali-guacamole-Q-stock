.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final XCa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private fEa:Z

.field private gEa:Z

.field private hEa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->fEa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->gEa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->hEa:Z

    return-void
.end method


# virtual methods
.method Ck()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->gEa:Z

    return p0
.end method

.method Dk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->fEa:Z

    return p0
.end method

.method Ek()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->hEa:Z

    return p0
.end method

.method Fk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->gEa:Z

    return-void
.end method

.method Gk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->fEa:Z

    return-void
.end method

.method Hk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->hEa:Z

    return-void
.end method
