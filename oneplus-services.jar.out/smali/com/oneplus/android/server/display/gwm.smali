.class Lcom/oneplus/android/server/display/gwm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final Cba:[F

.field private static final DEBUG:Z = true

.field private static final Dba:[F

.field private static Eba:[F = null

.field private static Fba:Landroid/util/Spline; = null

.field private static Gba:Landroid/util/Spline; = null

.field private static Hba:Landroid/util/Spline; = null

.field private static final ILLUMINANT_D65:[F

.field private static Iba:Landroid/util/Spline; = null

.field private static Jba:Landroid/util/Spline; = null

.field private static Kba:Landroid/util/Spline; = null

.field private static Lba:Landroid/util/Spline; = null

.field private static Mba:Landroid/util/Spline; = null

.field private static Nba:Landroid/util/Spline; = null

.field private static Oba:Landroid/util/Spline; = null

.field private static Pba:Landroid/util/Spline; = null

.field private static Qba:Landroid/util/Spline; = null

.field private static Rba:Landroid/util/Spline; = null

.field private static Sba:Landroid/util/Spline; = null

.field private static final TAG:Ljava/lang/String; = "OpGamutMappingStrategy"

.field private static Tba:Landroid/util/Spline;

.field private static Uba:Landroid/util/Spline;

.field private static Vba:Landroid/util/Spline;

.field private static Wba:Landroid/util/Spline;

.field private static Xba:Landroid/util/Spline;

.field private static Yba:Landroid/util/Spline;

.field private static Zba:Landroid/util/Spline;

.field private static _ba:Landroid/util/Spline;

.field private static aca:Landroid/util/Spline;

.field private static bca:Landroid/util/Spline;

.field private static cca:Landroid/util/Spline;

.field private static dca:Landroid/util/Spline;

.field private static eca:Landroid/util/Spline;

.field private static fca:Landroid/util/Spline;

.field private static gca:Landroid/util/Spline;

.field private static hca:Landroid/util/Spline;

.field private static ica:Landroid/util/Spline;

.field private static jca:Landroid/util/Spline;

.field private static kca:Landroid/util/Spline;

.field private static lca:Landroid/util/Spline;

.field private static mca:Landroid/util/Spline;

.field private static nca:Landroid/util/Spline;

.field private static oca:[I

.field private static pca:[I

.field private static qca:[I

.field private static rca:I

.field private static sca:I

.field private static tca:Landroid/graphics/ColorSpace$Rgb;

.field private static uca:[I

.field private static vca:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->ILLUMINANT_D65:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Cba:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Dba:[F

    return-void

    :array_0
    .array-data 4
        0x3ea01a37    # 0.3127f
        0x3ea872b0    # 0.329f
    .end array-data

    :array_1
    .array-data 4
        0x3e981062    # 0.297f
        0x3e9cac08    # 0.306f
    .end array-data

    :array_2
    .array-data 4
        0x3f2e978d    # 0.682f
        0x3ea2d0e5    # 0.318f
        0x3e77ced9    # 0.242f
        0x3f360419    # 0.711f
        0x3e0e5604    # 0.139f
        0x3d3851ec    # 0.045f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/oneplus/android/server/display/gwm;
    .locals 38

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xdc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->uca:[I

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->vca:[I

    const v1, 0x10e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/oneplus/android/server/display/gwm;->rca:I

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/oneplus/android/server/display/gwm;->sca:I

    const v1, 0x107004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->oca:[I

    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x107001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    const v3, 0x1070089

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    const v4, 0x107008a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    const v5, 0x107008b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    const v6, 0x1070083

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    const v7, 0x1070084

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v7

    const v8, 0x1070085

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v8

    const v9, 0x107007d

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-static {v9}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v9

    const v10, 0x107007e

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v10

    const v11, 0x107007f

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v11

    const v12, 0x1070080

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v12

    const v13, 0x1070081

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-static {v13}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v13

    const v14, 0x1070082

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v14

    const v15, 0x1070086

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v15

    invoke-static {v15}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v15

    move-object/from16 p0, v2

    const v2, 0x1070087

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v16, v2

    const v2, 0x1070088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v17, v2

    const v2, 0x107008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v18, v2

    const v2, 0x107008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v19, v2

    const v2, 0x107008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v20, v2

    const v2, 0x1070044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v21, v2

    const v2, 0x1070045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v22, v2

    const v2, 0x1070046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v23, v2

    const v2, 0x107003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v24, v2

    const v2, 0x107003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v25, v2

    const v2, 0x1070040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v26, v2

    const v2, 0x1070038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v27, v2

    const v2, 0x1070039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v28, v2

    const v2, 0x107003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v29, v2

    const v2, 0x107003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v30, v2

    const v2, 0x107003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v31, v2

    const v2, 0x107003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v32, v2

    const v2, 0x1070041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v33, v2

    const v2, 0x1070042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v34, v2

    const v2, 0x1070043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v35, v2

    const v2, 0x1070048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v36, v2

    const v2, 0x1070049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v37, v2

    const v2, 0x107004a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    invoke-static {v1, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Fba:Landroid/util/Spline;

    invoke-static {v1, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Gba:Landroid/util/Spline;

    invoke-static {v1, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Hba:Landroid/util/Spline;

    invoke-static {v1, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Iba:Landroid/util/Spline;

    invoke-static {v1, v7}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Jba:Landroid/util/Spline;

    invoke-static {v1, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Kba:Landroid/util/Spline;

    invoke-static {v1, v9}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Lba:Landroid/util/Spline;

    invoke-static {v1, v10}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Mba:Landroid/util/Spline;

    invoke-static {v1, v11}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Nba:Landroid/util/Spline;

    invoke-static {v1, v12}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Oba:Landroid/util/Spline;

    invoke-static {v1, v13}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Pba:Landroid/util/Spline;

    invoke-static {v1, v14}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Qba:Landroid/util/Spline;

    invoke-static {v1, v15}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Rba:Landroid/util/Spline;

    move-object/from16 v2, v16

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Sba:Landroid/util/Spline;

    move-object/from16 v2, v17

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Tba:Landroid/util/Spline;

    move-object/from16 v2, v18

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Uba:Landroid/util/Spline;

    move-object/from16 v2, v19

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Vba:Landroid/util/Spline;

    move-object/from16 v2, v20

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Wba:Landroid/util/Spline;

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Xba:Landroid/util/Spline;

    move-object/from16 v2, v22

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Yba:Landroid/util/Spline;

    move-object/from16 v2, v23

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Zba:Landroid/util/Spline;

    move-object/from16 v2, v24

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->_ba:Landroid/util/Spline;

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->aca:Landroid/util/Spline;

    move-object/from16 v2, v26

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->bca:Landroid/util/Spline;

    move-object/from16 v2, v27

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->cca:Landroid/util/Spline;

    move-object/from16 v2, v28

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->dca:Landroid/util/Spline;

    move-object/from16 v2, v29

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->eca:Landroid/util/Spline;

    move-object/from16 v2, v30

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->fca:Landroid/util/Spline;

    move-object/from16 v2, v31

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->gca:Landroid/util/Spline;

    move-object/from16 v2, v32

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->hca:Landroid/util/Spline;

    move-object/from16 v2, v33

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->ica:Landroid/util/Spline;

    move-object/from16 v2, v34

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->jca:Landroid/util/Spline;

    move-object/from16 v2, v35

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->kca:Landroid/util/Spline;

    move-object/from16 v2, v36

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->lca:Landroid/util/Spline;

    move-object/from16 v2, v37

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->mca:Landroid/util/Spline;

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->nca:Landroid/util/Spline;

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Dba:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Cba:[F

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v2, "Display Color Space"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->tca:Landroid/graphics/ColorSpace$Rgb;

    new-instance v0, Lcom/oneplus/android/server/display/gwm;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/gwm;-><init>()V

    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 3

    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isValidMapping([F[F)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v1, p0

    if-eqz v1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    aget v2, p0, v0

    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_7

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_6

    aget v6, p0, v2

    cmpl-float v3, v3, v6

    if-gez v3, :cond_5

    aget v3, p1, v2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    aget v3, p0, v2

    aget v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v4

    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method public O(I)[[I
    .locals 5

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    const-class v0, I

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Fba:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Gba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Hba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Iba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Jba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v3

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Kba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object v1, p0, v4

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Lba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Mba:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Nba:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, v4

    return-object p0
.end method

.method public Oe()[I
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/display/gwm;->vca:[I

    return-object p0
.end method

.method public P(I)[[I
    .locals 6

    const/4 p0, 0x3

    const/4 v0, 0x6

    filled-new-array {v0, p0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Fba:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Gba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Hba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x2

    aput v3, v2, v5

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Iba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Jba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Kba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Lba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Mba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Nba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Oba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Pba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Qba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x4

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Rba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Sba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Tba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Uba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v1, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Vba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object p0, v0, p0

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Wba:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p0, v5

    return-object v0
.end method

.method public Pe()I
    .locals 0

    sget p0, Lcom/oneplus/android/server/display/gwm;->sca:I

    return p0
.end method

.method public Q(I)[[I
    .locals 5

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    const-class v0, I

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Xba:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Yba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Zba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->_ba:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->aca:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v3

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->bca:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object v1, p0, v4

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->cca:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->dca:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->eca:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, v4

    return-object p0
.end method

.method public Qe()I
    .locals 0

    sget p0, Lcom/oneplus/android/server/display/gwm;->rca:I

    return p0
.end method

.method public R(I)[[I
    .locals 6

    const/4 p0, 0x3

    const/4 v0, 0x6

    filled-new-array {v0, p0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Xba:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Yba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Zba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x2

    aput v3, v2, v5

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->_ba:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->aca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->bca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->cca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->dca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->eca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->fca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->gca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->hca:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x4

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->ica:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->jca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->kca:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->lca:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v1, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->mca:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object p0, v0, p0

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->nca:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p0, v5

    return-object v0
.end method

.method public Re()[[I
    .locals 10

    const/4 p0, 0x6

    new-array v0, p0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->oca:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    aput v5, v2, v4

    const/4 v5, 0x1

    aget v6, v3, v5

    aput v6, v2, v5

    const/4 v6, 0x2

    aget v7, v3, v6

    aput v7, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    aget v7, v3, v1

    aput v7, v2, v4

    const/4 v7, 0x4

    aget v8, v3, v7

    aput v8, v2, v5

    const/4 v8, 0x5

    aget v9, v3, v8

    aput v9, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    aget p0, v3, p0

    aput p0, v2, v4

    const/4 p0, 0x7

    aget p0, v3, p0

    aput p0, v2, v5

    const/16 p0, 0x8

    aget p0, v3, p0

    aput p0, v2, v6

    aput-object v2, v0, v6

    new-array p0, v1, [I

    const/16 v2, 0x9

    aget v2, v3, v2

    aput v2, p0, v4

    const/16 v2, 0xa

    aget v2, v3, v2

    aput v2, p0, v5

    const/16 v2, 0xb

    aget v2, v3, v2

    aput v2, p0, v6

    aput-object p0, v0, v1

    new-array p0, v1, [I

    const/16 v2, 0xc

    aget v2, v3, v2

    aput v2, p0, v4

    const/16 v2, 0xd

    aget v2, v3, v2

    aput v2, p0, v5

    const/16 v2, 0xe

    aget v2, v3, v2

    aput v2, p0, v6

    aput-object p0, v0, v7

    new-array p0, v1, [I

    const/16 v1, 0xf

    aget v1, v3, v1

    aput v1, p0, v4

    const/16 v1, 0x10

    aget v1, v3, v1

    aput v1, p0, v5

    const/16 v1, 0x11

    aget v1, v3, v1

    aput v1, p0, v6

    aput-object p0, v0, v8

    return-object v0
.end method

.method public Se()[[I
    .locals 3

    const/4 p0, 0x6

    new-array p0, p0, [[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    aput-object v1, p0, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, p0, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method

.method public Te()[[I
    .locals 3

    const/4 p0, 0x6

    new-array p0, p0, [[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    aput-object v1, p0, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, p0, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method

.method public Ue()[I
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/display/gwm;->uca:[I

    return-object p0
.end method

.method public Ve()[[I
    .locals 3

    const/4 p0, 0x6

    new-array p0, p0, [[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    aput-object v1, p0, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, p0, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0

    :array_0
    .array-data 4
        0xea
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method
