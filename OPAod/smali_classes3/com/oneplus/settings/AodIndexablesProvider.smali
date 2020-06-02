.class public Lcom/oneplus/settings/AodIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "AodIndexablesProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AodIndexablesProvider"

.field private static mIndexableRes:[Landroid/provider/SearchIndexableResource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/provider/SearchIndexableResource;

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/oneplus/settings/SettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120001

    const v5, 0x7f0700ec

    invoke-direct {v2, v0, v4, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sput-object v1, Lcom/oneplus/settings/AodIndexablesProvider;->mIndexableRes:[Landroid/provider/SearchIndexableResource;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/settings/AodIndexablesProvider;->mIndexableRes:[Landroid/provider/SearchIndexableResource;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/oneplus/settings/AodIndexablesProvider;->mIndexableRes:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/oneplus/settings/AodIndexablesProvider;->mIndexableRes:[Landroid/provider/SearchIndexableResource;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/oneplus/settings/AodIndexablesProvider;->mIndexableRes:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "android.intent.action.MAIN"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.oneplus.aod"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/oneplus/settings/AodIndexablesProvider;->mIndexableRes:[Landroid/provider/SearchIndexableResource;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
