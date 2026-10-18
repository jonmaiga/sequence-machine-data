import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A150900: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150900, there is no canonical definition to state claims against.
-/

/-! ## A150900.P3575799291002141295

`A026922(A003583(n))+1`
-/

namespace A150900.P3575799291002141295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A003583 n).toNat + 1

end

end A150900.P3575799291002141295

/-! ## A150900.P14168118114503975267

`A008621(A003583(n)+2)`
-/

namespace A150900.P14168118114503975267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A003583 n + 2).toNat

end

end A150900.P14168118114503975267

/-!
# A150901: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150901, there is no canonical definition to state claims against.
-/

/-! ## A150901.P11131134790435994153

`(A006519(6^n)-n)²+n²`
-/

namespace A150901.P11131134790435994153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006519 (6 ^ n) - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)

end

end A150901.P11131134790435994153

/-! ## A150901.P1123596550167505205

`(record[A034444(n+1)]-n)²+n²`
-/

namespace A150901.P1123596550167505205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)

end

end A150901.P1123596550167505205

/-!
# A150902: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150902, there is no canonical definition to state claims against.
-/

/-! ## A150902.P5697803382823065054

`∏{e}[11^n, A150903(#)]`
-/

namespace A150902.P5697803382823065054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A150903 (Nat.factorization (f1 n) p)

end

end A150902.P5697803382823065054

/-! ## A150902.P11067963700266914944

`A150903(A001096(n))`
-/

namespace A150902.P11067963700266914944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150903 (A001096 n).toNat

end

end A150902.P11067963700266914944

/-!
# A150904: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150904, there is no canonical definition to state claims against.
-/

/-! ## A150904.P9144490600133737047

`A304639(n*(n*(n-5)+5)²)+(n^5)%25`
-/

namespace A150904.P9144490600133737047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304639 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat + ((n ^ 5 % 25 : ℕ) : ℤ)

end

end A150904.P9144490600133737047

/-!
# A150905: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150905, there is no canonical definition to state claims against.
-/

/-! ## A150905.P9427789941095131665

`∏{e}[11^n, A150906(#)]`
-/

namespace A150905.P9427789941095131665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A150906 (Nat.factorization (f1 n) p)

end

end A150905.P9427789941095131665

/-! ## A150905.P13202694843905067150

`A150906(A001096(n))`
-/

namespace A150905.P13202694843905067150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150906 (A001096 n).toNat

end

end A150905.P13202694843905067150

/-!
# A150907: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, -1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150907, there is no canonical definition to state claims against.
-/

/-! ## A150907.P8186546056964060143

`or(A000032(A038018(n)), A150905(n))`
-/

namespace A150907.P8186546056964060143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000032 (A038018 n).toNat) (A150905 n)

end

end A150907.P8186546056964060143

/-! ## A150907.P18150870186637216692

`or(A087991(A000273(n)), A150905(n))`
-/

namespace A150907.P18150870186637216692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087991 (A000273 n).toNat) (A150905 n)

end

end A150907.P18150870186637216692

/-!
# A150908: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150908, there is no canonical definition to state claims against.
-/

/-! ## A150908.P12440178772408126040

`A150909(A001096(n))`
-/

namespace A150908.P12440178772408126040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150909 (A001096 n).toNat

end

end A150908.P12440178772408126040

/-! ## A150908.P13154221711426121036

`filter[A150909(n), A030317(#)]`
-/

namespace A150908.P13154221711426121036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j).toNat = 1) n)

end

end A150908.P13154221711426121036

/-!
# A150910: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150910, there is no canonical definition to state claims against.
-/

/-! ## A150910.P12175024766223712336

`A150912(n)-A286949(A005142(n))`
-/

namespace A150910.P12175024766223712336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150912 n - A286949 (A005142 n).toNat

end

end A150910.P12175024766223712336

/-! ## A150910.P10579207170414300165

`A050296(A340812(3*n+4)+A083102(n))`
-/

namespace A150910.P10579207170414300165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A340812 (3 * n + 4) + A083102 n).toNat

end

end A150910.P10579207170414300165

/-!
# A150911: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, -1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150911, there is no canonical definition to state claims against.
-/

/-! ## A150911.P12870464534926650837

`A218469(A282856(n+1))`
-/

namespace A150911.P12870464534926650837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (A282856 (n + 1)).toNat

end

end A150911.P12870464534926650837

/-!
# A150912: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150912, there is no canonical definition to state claims against.
-/

/-! ## A150912.P12986877936916052203

`A286949(A005142(n))+A150910(n)`
-/

namespace A150912.P12986877936916052203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286949 (A005142 n).toNat + A150910 n

end

end A150912.P12986877936916052203

/-!
# A150913: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150913, there is no canonical definition to state claims against.
-/

/-! ## A150913.P15580077997006971189

`xor((n-1)^(n%2), record[A255973(2*n)])`
-/

namespace A150913.P15580077997006971189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n : ℤ) - 1) ^ (n % 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A150913.P15580077997006971189

/-! ## A150913.P5398356999919128790

`A150791(n)+A002262(A002833(n))`
-/

namespace A150913.P5398356999919128790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150791 n + A002262 (A002833 n).toNat

end

end A150913.P5398356999919128790

/-!
# A150914: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150914, there is no canonical definition to state claims against.
-/

/-! ## A150914.P14101324672987997114

`A111439((n+3)^n)`
-/

namespace A150914.P14101324672987997114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 ((n + 3) ^ n)

end

end A150914.P14101324672987997114

/-!
# A150915: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150915, there is no canonical definition to state claims against.
-/

/-! ## A150915.P11962975826088562975

`A150823(n)+A001222(A330474(n))`
-/

namespace A150915.P11962975826088562975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150823 n + A001222 (A330474 n).toNat

end

end A150915.P11962975826088562975

/-! ## A150915.P8386437533395738647

`xor(A150927(n), A219254(A277467(n)))`
-/

namespace A150915.P8386437533395738647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150927 n) (A219254 (A277467 n).toNat)

end

end A150915.P8386437533395738647

/-!
# A150916: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150916, there is no canonical definition to state claims against.
-/

/-! ## A150916.P3009457192322629934

`A150914(n)+A060953(A147255(n+1))`
-/

namespace A150916.P3009457192322629934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150914 n + A060953 (A147255 (n + 1)).toNat

end

end A150916.P3009457192322629934

/-! ## A150916.P2831347046509137086

`A274614(A293324(2*n))-A000203(n+1)`
-/

namespace A150916.P2831347046509137086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274614 (A293324 (2 * n)).toNat - A000203 (n + 1)

end

end A150916.P2831347046509137086

/-!
# A150917: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150917, there is no canonical definition to state claims against.
-/

/-! ## A150917.P435058341177075223

`A329981(A150878(n))+A150822(n)`
-/

namespace A150917.P435058341177075223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329981 (A150878 n).toNat + A150822 n

end

end A150917.P435058341177075223

/-!
# A150918: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150918, there is no canonical definition to state claims against.
-/

/-! ## A150918.P14956921080486618559

`A150917(n)+A083894(A006126(n))`
-/

namespace A150918.P14956921080486618559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150917 n + A083894 (A006126 n).toNat

end

end A150918.P14956921080486618559

/-! ## A150918.P2348681050291548067

`A150917(n)+A102683(A124543(n))`
-/

namespace A150918.P2348681050291548067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150917 n + A102683 (A124543 n).toNat

end

end A150918.P2348681050291548067

/-!
# A150919: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150919, there is no canonical definition to state claims against.
-/

/-! ## A150919.P13169734690784053651

`A046530(A303056(n))+A000578(n)`
-/

namespace A150919.P13169734690784053651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A303056 n).toNat + A000578 n

end

end A150919.P13169734690784053651

/-! ## A150919.P14936583072810359718

`A341163(n)+A341144(A001105(n))`
-/

namespace A150919.P14936583072810359718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341163 n + A341144 ((A001105 n).toNat + 30)

end

end A150919.P14936583072810359718

/-!
# A150920: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150920, there is no canonical definition to state claims against.
-/

/-! ## A150920.P13714458376501431213

`A127388(A344108(n))+A002264(n)`
-/

namespace A150920.P13714458376501431213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127388 (A344108 n).toNat + A002264 n

end

end A150920.P13714458376501431213

/-! ## A150920.P18179690647678016391

`A127388(A344108(n))+A002265(n+1)`
-/

namespace A150920.P18179690647678016391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127388 (A344108 n).toNat + A002265 (n + 1)

end

end A150920.P18179690647678016391

/-!
# A150921: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150921, there is no canonical definition to state claims against.
-/

/-! ## A150921.P18157426386614376396

`A150843(n)+A080791(A042505(n))`
-/

namespace A150921.P18157426386614376396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150843 n + A080791 (A042505 n).toNat

end

end A150921.P18157426386614376396

/-!
# A150922: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150922, there is no canonical definition to state claims against.
-/

/-! ## A150922.P15317558388305166150

`A150923(n)-A194659(A007691(n+1))`
-/

namespace A150922.P15317558388305166150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150923 n - A194659 (A007691 (n + 1)).toNat

end

end A150922.P15317558388305166150

/-! ## A150922.P11465564971152659483

`∏{e}[11^n, A150923(#)]`
-/

namespace A150922.P11465564971152659483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A150923 (Nat.factorization (f1 n) p)

end

end A150922.P11465564971152659483

/-!
# A150924: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150924, there is no canonical definition to state claims against.
-/

/-! ## A150924.P16217952937832070340

`A289719(n)+A109129(A213641(n))`
-/

namespace A150924.P16217952937832070340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289719 n + A109129 (A213641 n).toNat

end

end A150924.P16217952937832070340

/-! ## A150924.P82932821293919798

`or(A088512(A048143(n)), A150922(n))`
-/

namespace A150924.P82932821293919798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088512 (A048143 n).toNat) (A150922 n)

end

end A150924.P82932821293919798

/-!
# A150925: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150925, there is no canonical definition to state claims against.
-/

/-! ## A150925.P15563664065860504317

`A150917(n)+A085856(A304998(n))`
-/

namespace A150925.P15563664065860504317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150917 n + A085856 (A304998 n).toNat

end

end A150925.P15563664065860504317

/-! ## A150925.P6385992613620154190

`A302172(A150855(n))+A150855(n)`
-/

namespace A150925.P6385992613620154190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302172 (A150855 n).toNat + A150855 n

end

end A150925.P6385992613620154190

/-!
# A150926: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150926, there is no canonical definition to state claims against.
-/

/-! ## A150926.P15772950817019020066

`A194962(A150870(n))`
-/

namespace A150926.P15772950817019020066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (A150870 n).toNat

end

end A150926.P15772950817019020066

/-! ## A150926.P3181470651376265460

`A271800(∑[A026852(n+3)+n])`
-/

namespace A150926.P3181470651376265460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026852 (n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150926.P3181470651376265460

/-!
# A150927: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150927, there is no canonical definition to state claims against.
-/

/-! ## A150927.P14420721712651126357

`A150928(n)%p?[2^n-3]`
-/

namespace A150927.P14420721712651126357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150928 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150927.P14420721712651126357

/-! ## A150927.P16445611978863619801

`A004182(A150928(n))`
-/

namespace A150927.P16445611978863619801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A150928 n).toNat

end

end A150927.P16445611978863619801

/-! ## A150927.P12945564392967009103

`A150928(A073789(n))`
-/

namespace A150927.P12945564392967009103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150928 (A073789 n).toNat

end

end A150927.P12945564392967009103

/-! ## A150927.P17030037453460908777

`A150928(A171644(n))`
-/

namespace A150927.P17030037453460908777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150928 (A171644 n).toNat

end

end A150927.P17030037453460908777

/-!
# A150929: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150929, there is no canonical definition to state claims against.
-/

/-! ## A150929.P10177643205467619171

`A065883(A150930(n))`
-/

namespace A150929.P10177643205467619171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A150930 n).toNat

end

end A150929.P10177643205467619171

/-! ## A150929.P16148129663748345910

`A150930(A073789(n))`
-/

namespace A150929.P16148129663748345910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150930 (A073789 n).toNat

end

end A150929.P16148129663748345910

/-! ## A150929.P17712492057343821048

`A150930(A171644(n))`
-/

namespace A150929.P17712492057343821048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150930 (A171644 n).toNat

end

end A150929.P17712492057343821048

/-! ## A150929.P15139085934016485442

`A150930(A004869(n+1))`
-/

namespace A150929.P15139085934016485442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150930 (A004869 (n + 1)).toNat

end

end A150929.P15139085934016485442

/-!
# A150931: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150931, there is no canonical definition to state claims against.
-/

/-! ## A150931.P12257680788910717526

`A150927(n)+A083894(A059304(n))`
-/

namespace A150931.P12257680788910717526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150927 n + A083894 (A059304 n).toNat

end

end A150931.P12257680788910717526

/-! ## A150931.P6252059835095601073

`A150919(n)+A008683(A236041(n+1))`
-/

namespace A150931.P6252059835095601073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150919 n + A008683 (A236041 (n + 1)).toNat

end

end A150931.P6252059835095601073

/-!
# A150932: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, 1)}.

The programs for A150932, there is no canonical definition to state claims against.
-/

/-! ## A150932.P15502938449283302494

`A150933(n)-A200214(A150933(n))`
-/

namespace A150932.P15502938449283302494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150933 n - A200214 (A150933 n).toNat

end

end A150932.P15502938449283302494

/-! ## A150932.P13813580567260136372

`A150933(n)-A322403(A322396(n))`
-/

namespace A150932.P13813580567260136372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150933 n - A322403 (A322396 n).toNat

end

end A150932.P13813580567260136372

/-!
# A150933: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150933, there is no canonical definition to state claims against.
-/

/-! ## A150933.P261503300355490494

`A322403(A322396(n))+A150932(n)`
-/

namespace A150933.P261503300355490494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322403 (A322396 n).toNat + A150932 n

end

end A150933.P261503300355490494

/-! ## A150933.P10795186696169192794

`A274199(n)+A111855(A245282(3*n+4))`
-/

namespace A150933.P10795186696169192794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274199 n + A111855 (A245282 (3 * n + 4)).toNat

end

end A150933.P10795186696169192794

/-!
# A150934: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150934, there is no canonical definition to state claims against.
-/

/-! ## A150934.P3621424236052788656

`A228359(A228401(n+1))-A228347(n+4)`
-/

namespace A150934.P3621424236052788656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228359 (A228401 (n + 1)).toNat - A228347 (n + 4)

end

end A150934.P3621424236052788656

/-!
# A150935: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150935, there is no canonical definition to state claims against.
-/

/-! ## A150935.P14396621799803033147

`A053646(A001147(n))+A006139(n)`
-/

namespace A150935.P14396621799803033147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A001147 n).toNat + A006139 n

end

end A150935.P14396621799803033147

/-!
# A150936: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, -1, 1), (1, 1, 0), (1, 1, 1)}.

The programs for A150936, there is no canonical definition to state claims against.
-/

/-! ## A150936.P3048366620492934160

`A001077(n)-A048158(A098616(n)+1)`
-/

namespace A150936.P3048366620492934160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n - A048158 (A098616 n + 1).toNat

end

end A150936.P3048366620492934160

/-! ## A150936.P13732935705786066059

`A008615(A192211(2*n+3)-A276346(3*n+1))`
-/

namespace A150936.P13732935705786066059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A192211 (2 * n + 3) - A276346 (3 * n + 1)).toNat

end

end A150936.P13732935705786066059

/-!
# A150937: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150937, there is no canonical definition to state claims against.
-/

/-! ## A150937.P7345521140228507415

`A004151(A150938(n))`
-/

namespace A150937.P7345521140228507415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150938 n).toNat

end

end A150937.P7345521140228507415

/-! ## A150937.P15699718993197344451

`A150938(A073788(n))`
-/

namespace A150937.P15699718993197344451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150938 (A073788 n).toNat

end

end A150937.P15699718993197344451

/-! ## A150937.P6306523422213135486

`A150938(A171596(n))`
-/

namespace A150937.P6306523422213135486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150938 (A171596 n).toNat

end

end A150937.P6306523422213135486

/-!
# A150939: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150939, there is no canonical definition to state claims against.
-/

/-! ## A150939.P227110994675333431

`xor(A150940(n), A185284(n²))`
-/

namespace A150939.P227110994675333431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150940 n) (A185284 (n ^ 2))

end

end A150939.P227110994675333431

/-! ## A150939.P15465343511489749938

`A150940(n)-A160086(A150929(n))`
-/

namespace A150939.P15465343511489749938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150940 n - A160086 (A150929 n).toNat

end

end A150939.P15465343511489749938

/-!
# A150940: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150940, there is no canonical definition to state claims against.
-/

/-! ## A150940.P11766295332546180773

`xor(A150939(n), A185284(n²))`
-/

namespace A150940.P11766295332546180773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150939 n) (A185284 (n ^ 2))

end

end A150940.P11766295332546180773

/-! ## A150940.P12541167225629204031

`A160086(A150929(n))+A150939(n)`
-/

namespace A150940.P12541167225629204031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A150929 n).toNat + A150939 n

end

end A150940.P12541167225629204031

/-!
# A150941: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150941, there is no canonical definition to state claims against.
-/

/-! ## A150941.P2113761051487391250

`A150943(n)-A326642(A062452(n))`
-/

namespace A150941.P2113761051487391250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150943 n - A326642 (A062452 n).toNat

end

end A150941.P2113761051487391250

/-!
# A150942: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150942, there is no canonical definition to state claims against.
-/

/-! ## A150942.P3359401851091672420

`A150940(A001096(n))+char[4]`
-/

namespace A150942.P3359401851091672420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150940 (A001096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150942.P3359401851091672420

/-! ## A150942.P13923067288371487982

`A324684(A194455(n))+A085362(n)`
-/

namespace A150942.P13923067288371487982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A194455 n).toNat + A085362 n

end

end A150942.P13923067288371487982

/-!
# A150943: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150943, there is no canonical definition to state claims against.
-/

/-! ## A150943.P18077869125739103624

`A150944(n)-A160086(A150929(n))`
-/

namespace A150943.P18077869125739103624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150944 n - A160086 (A150929 n).toNat

end

end A150943.P18077869125739103624

/-! ## A150943.P9724331694131703531

`A150944(n)-A160086(A150930(n))`
-/

namespace A150943.P9724331694131703531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150944 n - A160086 (A150930 n).toNat

end

end A150943.P9724331694131703531

/-! ## A150943.P10336209020402962206

`A150944(n)-A160086(A150942(n))`
-/

namespace A150943.P10336209020402962206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150944 n - A160086 (A150942 n).toNat

end

end A150943.P10336209020402962206

/-!
# A150944: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150944, there is no canonical definition to state claims against.
-/

/-! ## A150944.P1045653211183182003

`A160086(A150929(n))+A150943(n)`
-/

namespace A150944.P1045653211183182003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A150929 n).toNat + A150943 n

end

end A150944.P1045653211183182003

/-! ## A150944.P1674990852046170779

`A160086(A150930(n))+A150943(n)`
-/

namespace A150944.P1674990852046170779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A150930 n).toNat + A150943 n

end

end A150944.P1674990852046170779

/-! ## A150944.P1015720351608049073

`A160086(A150942(n))+A150943(n)`
-/

namespace A150944.P1015720351608049073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A150942 n).toNat + A150943 n

end

end A150944.P1015720351608049073

/-!
# A150945: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150945, there is no canonical definition to state claims against.
-/

/-! ## A150945.P11230470765982490834

`∑[A332086(A006630(n)+2*n)]`
-/

namespace A150945.P11230470765982490834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A006630 n + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150945.P11230470765982490834

/-! ## A150945.P3992696019538097629

`A006161(Δ[Δ[A324750(n²+n)]])`
-/

namespace A150945.P3992696019538097629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324750 (n ^ 2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006161 (f1 (n + 1) - f1 n).toNat

end

end A150945.P3992696019538097629

/-!
# A150946: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150946, there is no canonical definition to state claims against.
-/

/-! ## A150946.P18102627658633356536

`A192543(A150646(n+1))`
-/

namespace A150946.P18102627658633356536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A150646 (n + 1)).toNat

end

end A150946.P18102627658633356536

/-! ## A150946.P2658673411671597058

`A210253(A150945(n))-1`
-/

namespace A150946.P2658673411671597058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210253 (A150945 n).toNat - 1

end

end A150946.P2658673411671597058

/-!
# A150947: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150947, there is no canonical definition to state claims against.
-/

/-! ## A150947.P9142736065405925495

`A218654(A318008(n+4)²)`
-/

namespace A150947.P9142736065405925495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A318008 (n + 4) ^ 2).toNat

end

end A150947.P9142736065405925495

/-! ## A150947.P8751752294436260285

`A218654(A318008(n+4)^2)`
-/

namespace A150947.P8751752294436260285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A318008 (n + 4) ^ 2).toNat

end

end A150947.P8751752294436260285

/-!
# A150948: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150948, there is no canonical definition to state claims against.
-/

/-! ## A150948.P15943824971472181404

`A150631(n)+A002265(A150951(n))`
-/

namespace A150948.P15943824971472181404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150631 n + A002265 (A150951 n).toNat

end

end A150948.P15943824971472181404

/-! ## A150948.P1031751875391096547

`A326192(∏[A114119(n)])`
-/

namespace A150948.P1031751875391096547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150948.P1031751875391096547

/-!
# A150949: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150949, there is no canonical definition to state claims against.
-/

/-! ## A150949.P5645930587309747305

`A063272(A150835(n+1))`
-/

namespace A150949.P5645930587309747305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A150835 (n + 1)).toNat

end

end A150949.P5645930587309747305

/-! ## A150949.P12638338843807147353

`A369324(A001519(n))+A085362(n)`
-/

namespace A150949.P12638338843807147353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369324 (A001519 n).toNat + A085362 n

end

end A150949.P12638338843807147353

/-!
# A150950: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150950, there is no canonical definition to state claims against.
-/

/-! ## A150950.P11296537552679984617

`A130986(A316983(2*n))`
-/

namespace A150950.P11296537552679984617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130986 (A316983 (2 * n)).toNat

end

end A150950.P11296537552679984617

/-! ## A150950.P17784795518613406092

`record[abs(A291984(A005830(2*n)))]`
-/

namespace A150950.P17784795518613406092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291984 (A005830 (2 * n)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150950.P17784795518613406092

/-!
# A150951: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150951, there is no canonical definition to state claims against.
-/

/-! ## A150951.P1483593725127167685

`and(A027895(2^n), A150952(n))`
-/

namespace A150951.P1483593725127167685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027895 (2 ^ n)) (A150952 n)

end

end A150951.P1483593725127167685

/-!
# A150952: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150952, there is no canonical definition to state claims against.
-/

/-! ## A150952.P3529096103548551309

`A117922(A150947(n))`
-/

namespace A150952.P3529096103548551309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (A150947 n).toNat

end

end A150952.P3529096103548551309

/-! ## A150952.P8170274827623033890

`A289494(A081896(n)+n)`
-/

namespace A150952.P8170274827623033890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A081896 n + (n : ℤ)).toNat

end

end A150952.P8170274827623033890

/-!
# A150953: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150953, there is no canonical definition to state claims against.
-/

/-! ## A150953.P16235828517154800935

`A178926(A150952(n))+A150950(n)`
-/

namespace A150953.P16235828517154800935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178926 (A150952 n).toNat + A150950 n

end

end A150953.P16235828517154800935

/-!
# A150954: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150954, there is no canonical definition to state claims against.
-/

/-! ## A150954.P2460213123224721473

`A308858(3*n)+A214701(A073156(n))`
-/

namespace A150954.P2460213123224721473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308858 (3 * n) + A214701 (A073156 n).toNat

end

end A150954.P2460213123224721473

/-!
# A150955: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150955, there is no canonical definition to state claims against.
-/

/-! ## A150955.P7153339063888511786

`A029917(xor(n, A161944(n)))`
-/

namespace A150955.P7153339063888511786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (Int.xor (n : ℤ) (A161944 n)).toNat

end

end A150955.P7153339063888511786

/-! ## A150955.P14740028073601684217

`round(A312756(A151209(n))/7)`
-/

namespace A150955.P14740028073601684217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A312756 (A151209 n).toNat : ℚ) / 7)

end

end A150955.P14740028073601684217

/-!
# A150956: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150956, there is no canonical definition to state claims against.
-/

/-! ## A150956.P14871610404685400867

`A124134(A150371(n))`
-/

namespace A150956.P14871610404685400867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124134 (A150371 n).toNat

end

end A150956.P14871610404685400867

/-! ## A150956.P5591145370399090278

`A228197(n)+A056594(A088590(n))`
-/

namespace A150956.P5591145370399090278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228197 n + A056594 (A088590 n).toNat

end

end A150956.P5591145370399090278

/-!
# A150957: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150957, there is no canonical definition to state claims against.
-/

/-! ## A150957.P11407178062634466692

`A228894(∑[A149771(n)])`
-/

namespace A150957.P11407178062634466692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150957.P11407178062634466692

/-! ## A150957.P8512012813132658870

`A052374(A172065(n)-2*n)`
-/

namespace A150957.P8512012813132658870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 (A172065 n - (2 * n : ℤ)).toNat

end

end A150957.P8512012813132658870

/-!
# A150958: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150958, there is no canonical definition to state claims against.
-/

/-! ## A150958.P14808392379032697181

`A228894(A119243(n))`
-/

namespace A150958.P14808392379032697181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (A119243 n).toNat

end

end A150958.P14808392379032697181

/-! ## A150958.P8154154792237847029

`A228894(A150538(n))`
-/

namespace A150958.P8154154792237847029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (A150538 n).toNat

end

end A150958.P8154154792237847029

/-!
# A150959: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150959, there is no canonical definition to state claims against.
-/

/-! ## A150959.P978764070851335618

`A228894(A242522(n+1)+A150538(n))`
-/

namespace A150959.P978764070851335618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (A242522 (n + 1) + A150538 n).toNat

end

end A150959.P978764070851335618

/-!
# A150960: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150960, there is no canonical definition to state claims against.
-/

/-! ## A150960.P17383364169062849950

`A228894(A150546(n))`
-/

namespace A150960.P17383364169062849950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228894 (A150546 n).toNat

end

end A150960.P17383364169062849950

/-! ## A150960.P16662566644971221336

`A287427(A005142(n))+A150957(n)`
-/

namespace A150960.P16662566644971221336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287427 (A005142 n).toNat + A150957 n

end

end A150960.P16662566644971221336

/-!
# A150961: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150961, there is no canonical definition to state claims against.
-/

/-! ## A150961.P11369729399943435006

`A150962(n)-A245792(A110775(n+1))`
-/

namespace A150961.P11369729399943435006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150962 n - A245792 (A110775 (n + 1)).toNat

end

end A150961.P11369729399943435006

/-! ## A150961.P7126558859112621516

`A150962(n)-A336469(A128774(n+1))`
-/

namespace A150961.P7126558859112621516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150962 n - A336469 (A128774 (n + 1)).toNat

end

end A150961.P7126558859112621516

/-!
# A150962: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150962, there is no canonical definition to state claims against.
-/

/-! ## A150962.P4570827446149619080

`A237869(A069728(n))+A150961(n)`
-/

namespace A150962.P4570827446149619080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237869 (A069728 n).toNat + A150961 n

end

end A150962.P4570827446149619080

/-! ## A150962.P2480631573097520794

`A154439(A150963(n))`
-/

namespace A150962.P2480631573097520794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A150963 n).toNat

end

end A150962.P2480631573097520794

/-!
# A150964: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150964, there is no canonical definition to state claims against.
-/

/-! ## A150964.P853026215189577778

`A154439(A150963(n))+char[4]`
-/

namespace A150964.P853026215189577778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A150963 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150964.P853026215189577778

/-! ## A150964.P8403775065849660877

`A150965(n)-A094176(A094176(n))`
-/

namespace A150964.P8403775065849660877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150965 n - A094176 (A094176 n).toNat

end

end A150964.P8403775065849660877

/-!
# A150965: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150965, there is no canonical definition to state claims against.
-/

/-! ## A150965.P3998747907860205424

`A212295(∑[A211030(n+4)])`
-/

namespace A150965.P3998747907860205424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211030 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212295 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150965.P3998747907860205424

/-! ## A150965.P1058891660250000647

`A150964(n)+A094176(A094176(n))`
-/

namespace A150965.P1058891660250000647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150964 n + A094176 (A094176 n).toNat

end

end A150965.P1058891660250000647

/-!
# A150966: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150966, there is no canonical definition to state claims against.
-/

/-! ## A150966.P18157638326305427773

`A111039(a(n-1)+2)` with `a(0)=1, a(1)=2`
-/

namespace A150966.P18157638326305427773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A111039 (a (n - 1) + 2).toNat

end

end A150966.P18157638326305427773

/-!
# A150967: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150967, there is no canonical definition to state claims against.
-/

/-! ## A150967.P17652565680592687655

`A233583(3^n+(n-2)*a(n-1)+1)` with `a(0)=1`
-/

namespace A150967.P17652565680592687655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A233583 ((3 ^ n : ℤ) + ((n : ℤ) - 2) * a (n - 1) + 1).toNat

end

end A150967.P17652565680592687655

/-! ## A150967.P3578609725903013269

`A150890(n)+A001222(A245309(n))`
-/

namespace A150967.P3578609725903013269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150890 n + A001222 (A245309 n).toNat

end

end A150967.P3578609725903013269

/-!
# A150968: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150968, there is no canonical definition to state claims against.
-/

/-! ## A150968.P6361904449821591153

`A131169(A150972(n))`
-/

namespace A150968.P6361904449821591153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131169 (A150972 n).toNat

end

end A150968.P6361904449821591153

/-! ## A150968.P5371977489026655340

`A115720(n)+A091226(A000400(n))`
-/

namespace A150968.P5371977489026655340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 n + A091226 (A000400 n).toNat

end

end A150968.P5371977489026655340

/-!
# A150969: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150969, there is no canonical definition to state claims against.
-/

/-! ## A150969.P13348727117146981719

`A240163(A179533(n))`
-/

namespace A150969.P13348727117146981719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240163 (A179533 n).toNat

end

end A150969.P13348727117146981719

/-! ## A150969.P17195853908489695639

`A375716(A375728(n+1))+A073156(n)`
-/

namespace A150969.P17195853908489695639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375716 (A375728 (n + 1)).toNat + A073156 n

end

end A150969.P17195853908489695639

/-!
# A150970: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150970, there is no canonical definition to state claims against.
-/

/-! ## A150970.P4903826170418835747

`∑[A225090(A327623(n+1))]`
-/

namespace A150970.P4903826170418835747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225090 (A327623 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150970.P4903826170418835747

/-! ## A150970.P11134914835144828798

`∑[A327623(A326315(n+1))]`
-/

namespace A150970.P11134914835144828798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327623 (A326315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150970.P11134914835144828798

/-!
# A150971: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150971, there is no canonical definition to state claims against.
-/

/-! ## A150971.P7239088608728692421

`A326178(A085362(n))+A128726(n)`
-/

namespace A150971.P7239088608728692421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A085362 n).toNat + A128726 n

end

end A150971.P7239088608728692421

/-! ## A150971.P11752212198005699879

`A326178(A128726(n)+A128732(n)+A126568(n))`
-/

namespace A150971.P11752212198005699879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A128726 n + (A128732 n + A126568 n)).toNat

end

end A150971.P11752212198005699879

/-! ## A150971.P2969038315411370888

`A326178(A026378(n+1)-A128752(n+1))+A128726(n)`
-/

namespace A150971.P2969038315411370888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A026378 (n + 1) - A128752 (n + 1)).toNat + A128726 n

end

end A150971.P2969038315411370888

/-!
# A150972: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150972, there is no canonical definition to state claims against.
-/

/-! ## A150972.P15877797873860260043

`A151124(n)-A192543(A150646(n))`
-/

namespace A150972.P15877797873860260043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151124 n - A192543 (A150646 n).toNat

end

end A150972.P15877797873860260043

/-! ## A150972.P18077492245238115943

`or(A025581(A150951(n)), A150968(n))`
-/

namespace A150972.P18077492245238115943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025581 (A150951 n).toNat) (A150968 n)

end

end A150972.P18077492245238115943

/-! ## A150972.P18249194517400908482

`or(A052928(A150971(n)), A150968(n))`
-/

namespace A150972.P18249194517400908482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052928 (A150971 n).toNat) (A150968 n)

end

end A150972.P18249194517400908482

/-!
# A150973: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150973, there is no canonical definition to state claims against.
-/

/-! ## A150973.P745923176723229760

`A049093(A086607(n+1))-A033312(n)`
-/

namespace A150973.P745923176723229760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A086607 (n + 1)).toNat - A033312 n

end

end A150973.P745923176723229760

/-!
# A150974: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150974, there is no canonical definition to state claims against.
-/

/-! ## A150974.P4182285816910844379

`A063272(A150865(n+1))`
-/

namespace A150974.P4182285816910844379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A150865 (n + 1)).toNat

end

end A150974.P4182285816910844379

/-!
# A150975: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150975, there is no canonical definition to state claims against.
-/

/-! ## A150975.P5699052899864309274

`A217232(A005179(n+1))+A150962(n)`
-/

namespace A150975.P5699052899864309274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217232 (A005179 (n + 1)).toNat + A150962 n

end

end A150975.P5699052899864309274

/-! ## A150975.P17308595454891882084

`A150963(n)+A008683(A150973(n+3))`
-/

namespace A150975.P17308595454891882084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150963 n + A008683 (A150973 (n + 3)).toNat

end

end A150975.P17308595454891882084

/-!
# A150976: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150976, there is no canonical definition to state claims against.
-/

/-! ## A150976.P13240813074001961064

`A273139(A358912(n+1))`
-/

namespace A150976.P13240813074001961064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273139 (A358912 (n + 1)).toNat

end

end A150976.P13240813074001961064

/-! ## A150976.P7808645111570740486

`A273139(A083380(n+2))`
-/

namespace A150976.P7808645111570740486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273139 (A083380 (n + 2)).toNat

end

end A150976.P7808645111570740486

/-!
# A150977: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150977, there is no canonical definition to state claims against.
-/

/-! ## A150977.P4531019987060253495

`A130986(A150957(n))`
-/

namespace A150977.P4531019987060253495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130986 (A150957 n).toNat

end

end A150977.P4531019987060253495

/-! ## A150977.P9758086035374467902

`A229301(A006139(n))+A053616(n)`
-/

namespace A150977.P9758086035374467902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A006139 n).toNat + A053616 n

end

end A150977.P9758086035374467902

/-!
# A150978: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150978, there is no canonical definition to state claims against.
-/

/-! ## A150978.P3154926501234156583

`A150979(n)-A068908(Δ[A107839(n)])`
-/

namespace A150978.P3154926501234156583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150979 n - A068908 (f1 (n + 1) - f1 n).toNat

end

end A150978.P3154926501234156583

/-! ## A150978.P10988610472483803173

`A339043(n+1)-A325178(A235639(n+1))`
-/

namespace A150978.P10988610472483803173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339043 (n + 1) - A325178 (A235639 (n + 1)).toNat

end

end A150978.P10988610472483803173

/-!
# A150979: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150979, there is no canonical definition to state claims against.
-/

/-! ## A150979.P5203379571550746819

`A277814(A006632(n+1))-n`
-/

namespace A150979.P5203379571550746819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277814 (A006632 (n + 1)).toNat - (n : ℤ)

end

end A150979.P5203379571550746819

/-!
# A150980: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150980, there is no canonical definition to state claims against.
-/

/-! ## A150980.P437029278259581406

`A095775(A047066(n+1))`
-/

namespace A150980.P437029278259581406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A047066 (n + 1)).toNat

end

end A150980.P437029278259581406

/-!
# A150981: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150981, there is no canonical definition to state claims against.
-/

/-! ## A150981.P12799873075459076658

`A297246(A041839(n))+A150979(n)`
-/

namespace A150981.P12799873075459076658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A041839 n).toNat + A150979 n

end

end A150981.P12799873075459076658

/-! ## A150981.P4188483447187211885

`A348960(A263986(n))+A150961(n)`
-/

namespace A150981.P4188483447187211885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 (A263986 n).toNat + A150961 n

end

end A150981.P4188483447187211885

/-!
# A150982: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150982, there is no canonical definition to state claims against.
-/

/-! ## A150982.P18446473576183113511

`A162201(A190255(n))+A150992(n)`
-/

namespace A150982.P18446473576183113511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A190255 n).toNat + A150992 n

end

end A150982.P18446473576183113511

/-! ## A150982.P9199747591225653162

`xor(A150981(n), A297246(A041839(n)))`
-/

namespace A150982.P9199747591225653162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150981 n) (A297246 (A041839 n).toNat)

end

end A150982.P9199747591225653162

/-!
# A150983: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, -1), (0, 1, 1), (1, 1, 1)}.

The programs for A150983, there is no canonical definition to state claims against.
-/

/-! ## A150983.P16602053860605365075

`floor(sqrt(A163947(n+2)+1))`
-/

namespace A150983.P16602053860605365075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163947 (n + 2) + 1)

end

end A150983.P16602053860605365075

/-! ## A150983.P10823718587938296340

`A298866(A010683(n))`
-/

namespace A150983.P10823718587938296340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298866 (A010683 n).toNat

end

end A150983.P10823718587938296340

/-!
# A150984: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150984, there is no canonical definition to state claims against.
-/

/-! ## A150984.P16515746597123193366

`A247064(A150969(n))`
-/

namespace A150984.P16515746597123193366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247064 (A150969 n).toNat

end

end A150984.P16515746597123193366

/-! ## A150984.P16540997523593454410

`A022290(floor(sqrt(A049034(n))))`
-/

namespace A150984.P16540997523593454410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Int.sqrt (A049034 n)).toNat

end

end A150984.P16540997523593454410

/-!
# A150985: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 1), (1, 1, 1)}.

The programs for A150985, there is no canonical definition to state claims against.
-/

/-! ## A150985.P8839496525312786777

`A189667(A150621(n+1))`
-/

namespace A150985.P8839496525312786777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A150621 (n + 1)).toNat

end

end A150985.P8839496525312786777

/-! ## A150985.P6864216641974155002

`A059995(13*A278391(n))`
-/

namespace A150985.P6864216641974155002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (13 * A278391 n).toNat

end

end A150985.P6864216641974155002

/-!
# A150986: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150986, there is no canonical definition to state claims against.
-/

/-! ## A150986.P9048101188611152143

`A151109(n)-A025581(A067318(n+1))`
-/

namespace A150986.P9048101188611152143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151109 n - A025581 (A067318 (n + 1)).toNat

end

end A150986.P9048101188611152143

/-! ## A150986.P8030010716976142080

`A342497(n)+A230257(A002478(2*(n+1)))`
-/

namespace A150986.P8030010716976142080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 n + A230257 (A002478 (2 * (n + 1))).toNat

end

end A150986.P8030010716976142080

/-!
# A150987: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150987, there is no canonical definition to state claims against.
-/

/-! ## A150987.P15369918105778871818

`A007071(A150643(n))`
-/

namespace A150987.P15369918105778871818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007071 (A150643 n).toNat

end

end A150987.P15369918105778871818

/-! ## A150987.P9902726723063027172

`A014246(A150869(n))-A004524(A213490(n))`
-/

namespace A150987.P9902726723063027172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014246 (A150869 n).toNat - A004524 (A213490 n).toNat

end

end A150987.P9902726723063027172

/-!
# A150988: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150988, there is no canonical definition to state claims against.
-/

/-! ## A150988.P10817943041358192317

`A014246(A150869(n))`
-/

namespace A150988.P10817943041358192317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014246 (A150869 n).toNat

end

end A150988.P10817943041358192317

/-! ## A150988.P17541929498807367764

`A007071(A150643(n))+A004524(A213490(n))`
-/

namespace A150988.P17541929498807367764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007071 (A150643 n).toNat + A004524 (A213490 n).toNat

end

end A150988.P17541929498807367764

/-!
# A150989: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150989, there is no canonical definition to state claims against.
-/

/-! ## A150989.P9173583436065770699

`A185319(A000108(n))+A181292(n)`
-/

namespace A150989.P9173583436065770699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 (A000108 n).toNat + A181292 n

end

end A150989.P9173583436065770699

/-!
# A150990: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 1, 1)}.

The programs for A150990, there is no canonical definition to state claims against.
-/

/-! ## A150990.P15213143226941656291

`A005843(A150991(n))-A150992(n)`
-/

namespace A150990.P15213143226941656291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150991 n).toNat - A150992 n

end

end A150990.P15213143226941656291

/-!
# A150991: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 1, 1)}.

The programs for A150991, there is no canonical definition to state claims against.
-/

/-! ## A150991.P12457709932614550234

`A318518(A150992(n)+A150990(n))`
-/

namespace A150991.P12457709932614550234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A150992 n + A150990 n).toNat

end

end A150991.P12457709932614550234

/-! ## A150991.P9596816333768752142

`A001281(A150992(n)+A150990(n))`
-/

namespace A150991.P9596816333768752142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150992 n + A150990 n).toNat

end

end A150991.P9596816333768752142

/-! ## A150991.P7312121149854017141

`A004525(A150992(n)+A150990(n))`
-/

namespace A150991.P7312121149854017141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150992 n + A150990 n).toNat

end

end A150991.P7312121149854017141

/-!
# A150992: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150992, there is no canonical definition to state claims against.
-/

/-! ## A150992.P7793598871512295713

`A004277(A150991(n))-A150990(n)`
-/

namespace A150992.P7793598871512295713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150991 n).toNat - A150990 n

end

end A150992.P7793598871512295713

/-! ## A150992.P13631270904453578809

`A150982(n)-A162201(A190255(n))`
-/

namespace A150992.P13631270904453578809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150982 n - A162201 (A190255 n).toNat

end

end A150992.P13631270904453578809

/-!
# A150993: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150993, there is no canonical definition to state claims against.
-/

/-! ## A150993.P6844133307177750934

`A095775(A276903(n+1))`
-/

namespace A150993.P6844133307177750934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A276903 (n + 1)).toNat

end

end A150993.P6844133307177750934

/-! ## A150993.P15188318878296469736

`A267806(A126473(n)+C(n, 2))`
-/

namespace A150993.P15188318878296469736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267806 (A126473 n + (Nat.choose n 2 : ℤ)).toNat

end

end A150993.P15188318878296469736

/-!
# A150994: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150994, there is no canonical definition to state claims against.
-/

/-! ## A150994.P17653564999531386288

`A262429(A050381(n+1)-A057279(n+1))`
-/

namespace A150994.P17653564999531386288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262429 (A050381 (n + 1) - A057279 (n + 1)).toNat

end

end A150994.P17653564999531386288

/-! ## A150994.P9012325537453106657

`A002265(A179599(n))+A000041(n)`
-/

namespace A150994.P9012325537453106657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A179599 n).toNat + A000041 n

end

end A150994.P9012325537453106657

/-!
# A150995: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150995, there is no canonical definition to state claims against.
-/

/-! ## A150995.P14741096335749615801

`A130823(A083881(n))+n`
-/

namespace A150995.P14741096335749615801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A083881 n).toNat + (n : ℤ)

end

end A150995.P14741096335749615801

/-! ## A150995.P11402459220908521865

`∑[A008611(A086405(n))]+1`
-/

namespace A150995.P11402459220908521865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A086405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A150995.P11402459220908521865

/-!
# A150996: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150996, there is no canonical definition to state claims against.
-/

/-! ## A150996.P12451841721026636001

`A150997(n)-A185063(A166444(n))`
-/

namespace A150996.P12451841721026636001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150997 n - A185063 (A166444 n).toNat

end

end A150996.P12451841721026636001

/-! ## A150996.P17347656277197426730

`A150997(n)-A322754(A233202(n+1))`
-/

namespace A150996.P17347656277197426730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150997 n - A322754 (A233202 (n + 1)).toNat

end

end A150996.P17347656277197426730

/-!
# A150997: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150997, there is no canonical definition to state claims against.
-/

/-! ## A150997.P11527448176309003298

`A185063(A166444(n))+A150996(n)`
-/

namespace A150997.P11527448176309003298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A166444 n).toNat + A150996 n

end

end A150997.P11527448176309003298

/-! ## A150997.P5622518517928797097

`or(A001222(A062874(n)), A150996(n))`
-/

namespace A150997.P5622518517928797097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A062874 n).toNat) (A150996 n)

end

end A150997.P5622518517928797097

/-! ## A150997.P1818696652002557551

`or(A037901(A150979(n)), A150996(n))`
-/

namespace A150997.P1818696652002557551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037901 (A150979 n).toNat) (A150996 n)

end

end A150997.P1818696652002557551

/-!
# A150998: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150998, there is no canonical definition to state claims against.
-/

/-! ## A150998.P14545938181306856606

`A151222(n)-A004526(A151016(n))`
-/

namespace A150998.P14545938181306856606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151222 n - A004526 (A151016 n).toNat

end

end A150998.P14545938181306856606

/-! ## A150998.P16586403504950271733

`A008621(A258712(n)+A030192(n))`
-/

namespace A150998.P16586403504950271733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A258712 n + A030192 n).toNat

end

end A150998.P16586403504950271733

/-!
# A150999: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150999, there is no canonical definition to state claims against.
-/

/-! ## A150999.P1392177036752242419

`A240163(A150403(n))`
-/

namespace A150999.P1392177036752242419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240163 (A150403 n).toNat

end

end A150999.P1392177036752242419

/-! ## A150999.P9522944718365568974

`A123920(xor(n, A123894(n)))`
-/

namespace A150999.P9522944718365568974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (Int.xor (n : ℤ) (A123894 n)).toNat

end

end A150999.P9522944718365568974

