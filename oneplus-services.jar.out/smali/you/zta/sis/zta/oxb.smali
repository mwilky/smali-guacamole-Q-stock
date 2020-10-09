.class Lyou/zta/sis/zta/oxb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/ugm;


# static fields
.field static final tGa:Ljava/lang/String; = "bc_validity"


# instance fields
.field private CHa:Z

.field private DHa:Z

.field private EHa:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->CHa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->DHa:Z

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->EHa:Z

    return-void
.end method


# virtual methods
.method Qk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->DHa:Z

    return p0
.end method

.method Rk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->CHa:Z

    return p0
.end method

.method Sk()Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/sis/zta/oxb;->EHa:Z

    return p0
.end method

.method Tk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->DHa:Z

    return-void
.end method

.method Uk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->CHa:Z

    return-void
.end method

.method Vk()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/sis/zta/oxb;->EHa:Z

    return-void
.end method
