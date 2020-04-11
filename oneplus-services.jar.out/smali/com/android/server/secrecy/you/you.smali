.class public Lcom/android/server/secrecy/you/you;
.super Lcom/android/server/secrecy/you/tsu;
.source ""


# static fields
.field private static TAG:Ljava/lang/String; = "SecrecyService.ActivityEncryptWork"


# instance fields
.field private final hM:Lcom/android/server/secrecy/you/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/you/you;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/secrecy/you/you;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/you/tsu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/secrecy/you/zta;->getInstance()Lcom/android/server/secrecy/you/zta;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/secrecy/you/you;->hM:Lcom/android/server/secrecy/you/zta;

    return-void
.end method


# virtual methods
.method public sis(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/you/you;->hM:Lcom/android/server/secrecy/you/zta;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/you/zta;->zta(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public you(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/secrecy/you/tsu;->zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/secrecy/you/you;->hM:Lcom/android/server/secrecy/you/zta;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/secrecy/you/zta;->zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
