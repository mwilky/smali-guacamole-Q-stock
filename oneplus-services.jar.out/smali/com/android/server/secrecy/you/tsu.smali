.class public Lcom/android/server/secrecy/you/tsu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mPolicy:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/you/tsu;->mPolicy:Z

    iput-object p1, p0, Lcom/android/server/secrecy/you/tsu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/you/tsu;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Kd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public doWork()V
    .locals 0

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you/tsu;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
