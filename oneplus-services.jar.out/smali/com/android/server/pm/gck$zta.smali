.class Lcom/android/server/pm/gck$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/gck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/gck$zta;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/gck$zta;->versionCode:I

    return-void
.end method
