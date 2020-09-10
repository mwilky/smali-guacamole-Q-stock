.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final iGa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private rHa:Z

.field private sHa:Z

.field private tHa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->rHa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->sHa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->tHa:Z

    return-void
.end method


# virtual methods
.method Ok()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->sHa:Z

    return p0
.end method

.method Pk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->rHa:Z

    return p0
.end method

.method Qk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->tHa:Z

    return p0
.end method

.method Rk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->sHa:Z

    return-void
.end method

.method Sk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->rHa:Z

    return-void
.end method

.method Tk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->tHa:Z

    return-void
.end method
