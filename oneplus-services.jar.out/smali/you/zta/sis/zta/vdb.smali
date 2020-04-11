.class public Lyou/zta/sis/zta/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyou/zta/sis/zta/gck;


# instance fields
.field protected final scale:Lyou/zta/sis/zta/cno;


# direct methods
.method public constructor <init>(Lyou/zta/sis/zta/cno;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyou/zta/sis/zta/vdb;->scale:Lyou/zta/sis/zta/cno;

    return-void
.end method


# virtual methods
.method public zta(Lyou/zta/sis/zta/wtn;)Lyou/zta/sis/zta/wtn;
    .locals 0

    iget-object p0, p0, Lyou/zta/sis/zta/vdb;->scale:Lyou/zta/sis/zta/cno;

    invoke-virtual {p1, p0}, Lyou/zta/sis/zta/wtn;->kth(Lyou/zta/sis/zta/cno;)Lyou/zta/sis/zta/wtn;

    move-result-object p0

    return-object p0
.end method
