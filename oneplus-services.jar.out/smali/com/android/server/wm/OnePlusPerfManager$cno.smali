.class public Lcom/android/server/wm/OnePlusPerfManager$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "cno"
.end annotation


# instance fields
.field private KR:Ljava/lang/String;

.field private mParam:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/OnePlusPerfManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->this$0:Lcom/android/server/wm/OnePlusPerfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mPath:Ljava/lang/String;

    const-string p1, "0"

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mParam:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->KR:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mParam:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->KR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public he()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mParam:Ljava/lang/String;

    return-object p0
.end method

.method public je()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->KR:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SchedtuneParamItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->mParam:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager$cno;->KR:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
