.class public final Lcom/etechd/l3mon/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etechd/l3mon/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x39
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x4

.field public static final FontFamilyFont_fontStyle:I = 0x3

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/etechd/l3mon/R$styleable;->FontFamily:[I

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/etechd/l3mon/R$styleable;->FontFamilyFont:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f010006
        0x7f010007
        0x7f010008
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
