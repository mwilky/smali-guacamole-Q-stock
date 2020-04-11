.class public Lcom/android/server/power/zta/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FirewallRule"


# instance fields
.field private QK:Ljava/lang/Integer;

.field private RK:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/zta/zta;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/power/zta/zta;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/power/zta/zta;->QK:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/server/power/zta/zta;->RK:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/zta/zta;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/power/zta/zta;->QK:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/server/power/zta/zta;->RK:Ljava/lang/Integer;

    return-void
.end method

.method private tsu(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ALLOW"

    goto :goto_0

    :cond_0
    const-string p0, "FORBID"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # OPFirewallRule ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/zta/zta;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/zta/zta;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], [wlan:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/zta/zta;->QK:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/android/server/power/zta/zta;->tsu(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mobile:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/zta/zta;->RK:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/android/server/power/zta/zta;->tsu(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/zta/zta;->pkg:Ljava/lang/String;

    return-void
.end method

.method public getId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/zta/zta;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMobile()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/zta/zta;->RK:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/zta/zta;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public sd()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/zta/zta;->QK:Ljava/lang/Integer;

    return-object p0
.end method

.method public sis(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/zta/zta;->QK:Ljava/lang/Integer;

    return-void
.end method

.method public you(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/zta/zta;->RK:Ljava/lang/Integer;

    return-void
.end method

.method public zta(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/zta/zta;->id:Ljava/lang/Integer;

    return-void
.end method
