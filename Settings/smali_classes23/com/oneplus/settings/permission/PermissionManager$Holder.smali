.class Lcom/oneplus/settings/permission/PermissionManager$Holder;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/oneplus/settings/permission/PermissionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/permission/PermissionManager;

    invoke-direct {v0}, Lcom/oneplus/settings/permission/PermissionManager;-><init>()V

    sput-object v0, Lcom/oneplus/settings/permission/PermissionManager$Holder;->INSTANCE:Lcom/oneplus/settings/permission/PermissionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
