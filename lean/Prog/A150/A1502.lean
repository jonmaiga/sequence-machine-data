import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A150200: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150200, there is no canonical definition to state claims against.
-/

/-! ## A150200.P7366756302863729389

`A004526(A150211(n)+A150193(n))`
-/

namespace A150200.P7366756302863729389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150211 n + A150193 n).toNat

end

end A150200.P7366756302863729389

/-! ## A150200.P5921466562621180955

`A173276(A150479(n)+A150461(n))`
-/

namespace A150200.P5921466562621180955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (A150479 n + A150461 n).toNat

end

end A150200.P5921466562621180955

/-! ## A150200.P6583001629223360327

`A150201(n)-A025458(A297924(n))`
-/

namespace A150200.P6583001629223360327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150201 n - A025458 (A297924 n).toNat

end

end A150200.P6583001629223360327

/-!
# A150201: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150201, there is no canonical definition to state claims against.
-/

/-! ## A150201.P8763836082640767578

`A062300(A305118(n+1))`
-/

namespace A150201.P8763836082640767578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A305118 (n + 1)).toNat

end

end A150201.P8763836082640767578

/-! ## A150201.P71954168463437033

`A320297(A149382(n+1))`
-/

namespace A150201.P71954168463437033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320297 (A149382 (n + 1)).toNat

end

end A150201.P71954168463437033

/-! ## A150201.P8597235856397857665

`∑[A062300(Δ[A305118(n)])]`
-/

namespace A150201.P8597235856397857665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305118 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150201.P8597235856397857665

/-!
# A150202: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150202, there is no canonical definition to state claims against.
-/

/-! ## A150202.P1729285135186196002

`A123108(A150208(n)+A150196(n))`
-/

namespace A150202.P1729285135186196002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150208 n + A150196 n).toNat

end

end A150202.P1729285135186196002

/-! ## A150202.P17988270639283676031

`A150207(n)-A025442(A000522(n))`
-/

namespace A150202.P17988270639283676031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150207 n - A025442 (A000522 n).toNat

end

end A150202.P17988270639283676031

/-! ## A150202.P1508443425549210060

`A150216(n)-A307672(A056285(n+1))`
-/

namespace A150202.P1508443425549210060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150216 n - A307672 (A056285 (n + 1)).toNat

end

end A150202.P1508443425549210060

/-!
# A150203: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A150203, there is no canonical definition to state claims against.
-/

/-! ## A150203.P11156401080634242834

`A106228(n+1)-A124762(A058275(n))`
-/

namespace A150203.P11156401080634242834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 (n + 1) - A124762 (A058275 n).toNat

end

end A150203.P11156401080634242834

/-! ## A150203.P839034854468999854

`A106228(n+1)-A025466(A184947(n))`
-/

namespace A150203.P839034854468999854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 (n + 1) - A025466 (A184947 n).toNat

end

end A150203.P839034854468999854

/-! ## A150203.P13113234959625034375

`A106228(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A150203.P13113234959625034375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A150203.P13113234959625034375

/-!
# A150204: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A150204, there is no canonical definition to state claims against.
-/

/-! ## A150204.P4261961985530187293

`A129442(n)-A185245(A053282(3*n+1))`
-/

namespace A150204.P4261961985530187293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129442 n - A185245 (A053282 (3 * n + 1)).toNat

end

end A150204.P4261961985530187293

/-!
# A150205: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A150205, there is no canonical definition to state claims against.
-/

/-! ## A150205.P16988411356264915087

`A065033(A151064(n)+n)`
-/

namespace A150205.P16988411356264915087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151064 n + (n : ℤ)).toNat

end

end A150205.P16988411356264915087

/-! ## A150205.P2433663052096830324

`A110654(A151064(n)+n)`
-/

namespace A150205.P2433663052096830324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151064 n + (n : ℤ)).toNat

end

end A150205.P2433663052096830324

/-! ## A150205.P4291945173824167002

`A263997(A151064(n)+n)`
-/

namespace A150205.P4291945173824167002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (A151064 n + (n : ℤ)).toNat

end

end A150205.P4291945173824167002

/-!
# A150206: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150206, there is no canonical definition to state claims against.
-/

/-! ## A150206.P9749553721272150405

`ceil(A312566(A150474(n))/6)`
-/

namespace A150206.P9749553721272150405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A312566 (A150474 n).toNat : ℚ) / 6⌉

end

end A150206.P9749553721272150405

/-! ## A150206.P10382230290285498746

`A173276(A150484(n)+A150472(n))`
-/

namespace A150206.P10382230290285498746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 (A150484 n + A150472 n).toNat

end

end A150206.P10382230290285498746

/-!
# A150207: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150207, there is no canonical definition to state claims against.
-/

/-! ## A150207.P608049447366883594

`A026414(A150009(n+1))`
-/

namespace A150207.P608049447366883594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026414 (A150009 (n + 1)).toNat

end

end A150207.P608049447366883594

/-! ## A150207.P41011608280996067

`A150202(n)+A025442(A000522(n))`
-/

namespace A150207.P41011608280996067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150202 n + A025442 (A000522 n).toNat

end

end A150207.P41011608280996067

/-!
# A150208: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150208, there is no canonical definition to state claims against.
-/

/-! ## A150208.P15838654887431271600

`A150207(n)+A025442(2*A000522(n))`
-/

namespace A150208.P15838654887431271600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150207 n + A025442 (2 * A000522 n).toNat

end

end A150208.P15838654887431271600

/-!
# A150209: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150209, there is no canonical definition to state claims against.
-/

/-! ## A150209.P6767010192255621824

`A151096(n)-A004526(A151133(n))`
-/

namespace A150209.P6767010192255621824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151096 n - A004526 (A151133 n).toNat

end

end A150209.P6767010192255621824

/-! ## A150209.P1005125434905353893

`A008619(∑[A005843(n)*A035350(n)])`
-/

namespace A150209.P1005125434905353893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A035350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150209.P1005125434905353893

/-!
# A150210: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150210, there is no canonical definition to state claims against.
-/

/-! ## A150210.P3015633091304506449

`A004525(A150241(n)+A150202(n))`
-/

namespace A150210.P3015633091304506449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150241 n + A150202 n).toNat

end

end A150210.P3015633091304506449

/-! ## A150210.P253375124313508653

`A004526(A150241(n)+A150202(n))`
-/

namespace A150210.P253375124313508653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150241 n + A150202 n).toNat

end

end A150210.P253375124313508653

/-! ## A150210.P13501102073597197455

`A026806(or(A000142(n), A037597(n+1)))`
-/

namespace A150210.P13501102073597197455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (Int.lor (A000142 n) (A037597 (n + 1))).toNat

end

end A150210.P13501102073597197455

/-!
# A150211: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150211, there is no canonical definition to state claims against.
-/

/-! ## A150211.P13443067987752693876

`A110654(A151064(n)+A074860(n))`
-/

namespace A150211.P13443067987752693876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151064 n + A074860 n).toNat

end

end A150211.P13443067987752693876

/-! ## A150211.P13122064880731456965

`A110654(A151064(n)+A074861(n+1))`
-/

namespace A150211.P13122064880731456965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151064 n + A074861 (n + 1)).toNat

end

end A150211.P13122064880731456965

/-!
# A150212: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A150212, there is no canonical definition to state claims against.
-/

/-! ## A150212.P10780843611563763596

`A322068(n)+A008621(A122451(n))`
-/

namespace A150212.P10780843611563763596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322068 n + A008621 (A122451 n).toNat

end

end A150212.P10780843611563763596

/-! ## A150212.P2063807538805617034

`or(A004001(A151057(n)), A075344(n+2))`
-/

namespace A150212.P2063807538805617034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (A151057 n).toNat) (A075344 (n + 2))

end

end A150212.P2063807538805617034

/-! ## A150212.P1630291053748031352

`A005773(n)+A004526(A006139(n))-A008437(3*n+1)`
-/

namespace A150212.P1630291053748031352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + A004526 (A006139 n).toNat - A008437 (3 * n + 1)

end

end A150212.P1630291053748031352

/-!
# A150213: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A150213, there is no canonical definition to state claims against.
-/

/-! ## A150213.P10849425719727651311

`A005773(n)+A004526(A006139(n))`
-/

namespace A150213.P10849425719727651311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + A004526 (A006139 n).toNat

end

end A150213.P10849425719727651311

/-! ## A150213.P12386065327741310704

`A151097(n)-A004526(A151132(n))`
-/

namespace A150213.P12386065327741310704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151097 n - A004526 (A151132 n).toNat

end

end A150213.P12386065327741310704

/-! ## A150213.P6977417824939421251

`A150224(n)-A141100(A076866(n))`
-/

namespace A150213.P6977417824939421251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150224 n - A141100 (A076866 n).toNat

end

end A150213.P6977417824939421251

/-!
# A150214: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150214, there is no canonical definition to state claims against.
-/

/-! ## A150214.P13887469574607391582

`A110654(A151061(n)+A007580(n))`
-/

namespace A150214.P13887469574607391582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151061 n + A007580 n).toNat

end

end A150214.P13887469574607391582

/-! ## A150214.P13671528239058567951

`A001281(A150221(n)+A150201(n))`
-/

namespace A150214.P13671528239058567951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150221 n + A150201 n).toNat

end

end A150214.P13671528239058567951

/-! ## A150214.P16756394307513000832

`A004526(A150221(n)+A150201(n))`
-/

namespace A150214.P16756394307513000832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150221 n + A150201 n).toNat

end

end A150214.P16756394307513000832

/-!
# A150215: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150215, there is no canonical definition to state claims against.
-/

/-! ## A150215.P12254071370074504748

`A316434(A151477(n+1))`
-/

namespace A150215.P12254071370074504748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316434 (A151477 (n + 1)).toNat

end

end A150215.P12254071370074504748

/-! ## A150215.P8069030834922363106

`A316434(record[∏{p}[A151477(n), #]])`
-/

namespace A150215.P8069030834922363106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151477 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A150215.P8069030834922363106

/-! ## A150215.P9034640746377109244

`A001057(A006139(n)+A001189(n+1))`
-/

namespace A150215.P9034640746377109244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A006139 n + A001189 (n + 1)).toNat

end

end A150215.P9034640746377109244

/-!
# A150216: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150216, there is no canonical definition to state claims against.
-/

/-! ## A150216.P1436976378470058209

`A307672(A056285(n+1))+A150202(n)`
-/

namespace A150216.P1436976378470058209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (A056285 (n + 1)).toNat + A150202 n

end

end A150216.P1436976378470058209

/-! ## A150216.P1421900518461652252

`A253080(2^n)-n`
-/

namespace A150216.P1421900518461652252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253080 (2 ^ n) - (n : ℤ)

end

end A150216.P1421900518461652252

/-!
# A150218: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150218, there is no canonical definition to state claims against.
-/

/-! ## A150218.P10023307446154748571

`A004526(A150293(n)+A000984(n))`
-/

namespace A150218.P10023307446154748571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150293 n + A000984 n).toNat

end

end A150218.P10023307446154748571

/-! ## A150218.P5224187080193450858

`∏{p}[A150219(n)², #]`
-/

namespace A150218.P5224187080193450858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150219 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150218.P5224187080193450858

/-!
# A150220: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A150220, there is no canonical definition to state claims against.
-/

/-! ## A150220.P2014244979601959788

`∑[A194163(A150733(n)+1)]`
-/

namespace A150220.P2014244979601959788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194163 (A150733 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150220.P2014244979601959788

/-! ## A150220.P5145541560617915790

`A008619(A006603(n)+A001353(n))`
-/

namespace A150220.P5145541560617915790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006603 n + A001353 n).toNat

end

end A150220.P5145541560617915790

/-! ## A150220.P11987820821019478473

`A160793(A006603(n)+A001353(n))`
-/

namespace A150220.P11987820821019478473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (A006603 n + A001353 n).toNat

end

end A150220.P11987820821019478473

/-!
# A150221: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150221, there is no canonical definition to state claims against.
-/

/-! ## A150221.P15320419737357376853

`A321695(A150763(n))`
-/

namespace A150221.P15320419737357376853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 (A150763 n).toNat

end

end A150221.P15320419737357376853

/-! ## A150221.P384944925029689669

`A346157(n)+A065033(A126568(n))`
-/

namespace A150221.P384944925029689669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346157 n + A065033 (A126568 n).toNat

end

end A150221.P384944925029689669

/-!
# A150222: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150222, there is no canonical definition to state claims against.
-/

/-! ## A150222.P16796901078159542242

`A101402(A026530(n)+A026527(n+2))`
-/

namespace A150222.P16796901078159542242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A026530 n + A026527 (n + 2)).toNat

end

end A150222.P16796901078159542242

/-! ## A150222.P17011722970312911938

`A002264(A015523(n+1)+A000041(n+2))`
-/

namespace A150222.P17011722970312911938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A015523 (n + 1) + A000041 (n + 2)).toNat

end

end A150222.P17011722970312911938

/-! ## A150222.P1390175903269328405

`A230128(A157729(3*n+1))+A191391(n)`
-/

namespace A150222.P1390175903269328405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230128 (A157729 (3 * n + 1)).toNat + A191391 n

end

end A150222.P1390175903269328405

/-!
# A150223: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150223, there is no canonical definition to state claims against.
-/

/-! ## A150223.P18440541487533952925

`xor(A320296(n+1), A320297(A320296(2*(n+2))))`
-/

namespace A150223.P18440541487533952925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A320296 (n + 1)) (A320297 (A320296 (2 * (n + 2))).toNat)

end

end A150223.P18440541487533952925

/-! ## A150223.P17502130120591117424

`A097337(A150737(n))+1-(A135339(n)-A000958(n+1))`
-/

namespace A150223.P17502130120591117424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A150737 n).toNat + (1 - (A135339 n - A000958 (n + 1)))

end

end A150223.P17502130120591117424

/-!
# A150224: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150224, there is no canonical definition to state claims against.
-/

/-! ## A150224.P17284758777021086420

`A150213(n)+A141100(A076866(n))`
-/

namespace A150224.P17284758777021086420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150213 n + A141100 (A076866 n).toNat

end

end A150224.P17284758777021086420

/-! ## A150224.P13090072797116264407

`A004001(A296227(n)+∑[A003056(n)])`
-/

namespace A150224.P13090072797116264407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A296227 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150224.P13090072797116264407

/-!
# A150225: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150225, there is no canonical definition to state claims against.
-/

/-! ## A150225.P7838875052968698020

`A004526(A188460(n)+A067336(n))`
-/

namespace A150225.P7838875052968698020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A188460 n + A067336 n).toNat

end

end A150225.P7838875052968698020

/-! ## A150225.P5106416779394582110

`A151087(n)-A004526(A151086(n))`
-/

namespace A150225.P5106416779394582110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151087 n - A004526 (A151086 n).toNat

end

end A150225.P5106416779394582110

/-!
# A150226: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150226, there is no canonical definition to state claims against.
-/

/-! ## A150226.P4943281989496635611

`A381610(A150205(n))`
-/

namespace A150226.P4943281989496635611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381610 (A150205 n).toNat

end

end A150226.P4943281989496635611

/-! ## A150226.P14455544682656781466

`∑[A080055(A328429(n))]`
-/

namespace A150226.P14455544682656781466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080055 (A328429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150226.P14455544682656781466

/-!
# A150227: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150227, there is no canonical definition to state claims against.
-/

/-! ## A150227.P9510612460107850365

`A128695(2*n)-∑{e}[A128697(n), #]`
-/

namespace A150227.P9510612460107850365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128695 (2 * n) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A150227.P9510612460107850365

/-! ## A150227.P4366820896592315530

`A325796(A055887(n))+A059502(n)`
-/

namespace A150227.P4366820896592315530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325796 (A055887 n).toNat + A059502 n

end

end A150227.P4366820896592315530

/-!
# A150228: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, 0)}.

The programs for A150228, there is no canonical definition to state claims against.
-/

/-! ## A150228.P1252597627052100584

`A052542(n)+A035327(A163774(n))`
-/

namespace A150228.P1252597627052100584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n + A035327 (A163774 n).toNat

end

end A150228.P1252597627052100584

/-! ## A150228.P16388208183211870612

`A100143(A013025(n))`
-/

namespace A150228.P16388208183211870612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A013025 n).toNat

end

end A150228.P16388208183211870612

/-!
# A150229: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150229, there is no canonical definition to state claims against.
-/

/-! ## A150229.P12449861334097956325

`A149434(n)+A107347(A150215(n))`
-/

namespace A150229.P12449861334097956325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149434 n + A107347 (A150215 n).toNat

end

end A150229.P12449861334097956325

/-! ## A150229.P2612645861311618722

`A244479(A017955(n))+A017988(n)`
-/

namespace A150229.P2612645861311618722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A017955 n).toNat + A017988 n

end

end A150229.P2612645861311618722

/-!
# A150230: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, 0)}.

The programs for A150230, there is no canonical definition to state claims against.
-/

/-! ## A150230.P5240941959919716287

`A302931(A051044(n))+A150229(n)`
-/

namespace A150230.P5240941959919716287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302931 (A051044 n).toNat + A150229 n

end

end A150230.P5240941959919716287

/-!
# A150231: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, 0)}.

The programs for A150231, there is no canonical definition to state claims against.
-/

/-! ## A150231.P7909380304346406972

`A019554(A084077(n)+A001045(n))`
-/

namespace A150231.P7909380304346406972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A084077 n + A001045 n).toNat

end

end A150231.P7909380304346406972

/-! ## A150231.P4111636599851194277

`A122449(n)-A055641(A122451(n))`
-/

namespace A150231.P4111636599851194277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122449 n - A055641 (A122451 n).toNat

end

end A150231.P4111636599851194277

/-!
# A150232: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150232, there is no canonical definition to state claims against.
-/

/-! ## A150232.P17407614623685876703

`A004151(A150233(n))`
-/

namespace A150232.P17407614623685876703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150233 n).toNat

end

end A150232.P17407614623685876703

/-! ## A150232.P14764084542579174165

`A150233(A073789(n))`
-/

namespace A150232.P14764084542579174165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150233 (A073789 n).toNat

end

end A150232.P14764084542579174165

/-! ## A150232.P669002471226472212

`A150233(A171644(n))`
-/

namespace A150232.P669002471226472212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150233 (A171644 n).toNat

end

end A150232.P669002471226472212

/-! ## A150232.P6930582294194071211

`A150233(A004869(n+1))`
-/

namespace A150232.P6930582294194071211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150233 (A004869 (n + 1)).toNat

end

end A150232.P6930582294194071211

/-!
# A150234: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150234, there is no canonical definition to state claims against.
-/

/-! ## A150234.P3076469126031665252

`A004526(A150236(n)+A150232(n))`
-/

namespace A150234.P3076469126031665252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150236 n + A150232 n).toNat

end

end A150234.P3076469126031665252

/-! ## A150234.P3275437628343288439

`A004526(A150236(n)+A150233(n))`
-/

namespace A150234.P3275437628343288439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150236 n + A150233 n).toNat

end

end A150234.P3275437628343288439

/-!
# A150235: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150235, there is no canonical definition to state claims against.
-/

/-! ## A150235.P5639104062118199949

`A151086(n)-A004526(A151073(n))`
-/

namespace A150235.P5639104062118199949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151086 n - A004526 (A151073 n).toNat

end

end A150235.P5639104062118199949

/-! ## A150235.P14778714698423523668

`A065033(A226061(n+1)+A102865(n))`
-/

namespace A150235.P14778714698423523668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A226061 (n + 1) + A102865 n).toNat

end

end A150235.P14778714698423523668

/-!
# A150236: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150236, there is no canonical definition to state claims against.
-/

/-! ## A150236.P5379437426347062030

`A192419(A150212(n))`
-/

namespace A150236.P5379437426347062030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A150212 n).toNat

end

end A150236.P5379437426347062030

/-! ## A150236.P11903435053537448683

`A124741(A006319(n))+A000225(n)`
-/

namespace A150236.P11903435053537448683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A006319 n).toNat + A000225 n

end

end A150236.P11903435053537448683

/-!
# A150237: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150237, there is no canonical definition to state claims against.
-/

/-! ## A150237.P16258077060063923538

`A107037(A145868(n))`
-/

namespace A150237.P16258077060063923538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A145868 n).toNat

end

end A150237.P16258077060063923538

/-! ## A150237.P2173663082961633793

`A054404(3*A150165(n))`
-/

namespace A150237.P2173663082961633793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (3 * A150165 n).toNat

end

end A150237.P2173663082961633793

/-!
# A150239: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150239, there is no canonical definition to state claims against.
-/

/-! ## A150239.P1796960903363016691

`A194920(A150141(n+1))`
-/

namespace A150239.P1796960903363016691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A150141 (n + 1)).toNat

end

end A150239.P1796960903363016691

/-! ## A150239.P9848235398304537509

`A150241(n)-A236109(2^n)`
-/

namespace A150239.P9848235398304537509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150241 n - A236109 (2 ^ n)

end

end A150239.P9848235398304537509

/-! ## A150239.P17414108840854231035

`A110654(A150244(n)+A150235(n))`
-/

namespace A150239.P17414108840854231035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150244 n + A150235 n).toNat

end

end A150239.P17414108840854231035

/-!
# A150240: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 0, 1)}.

The programs for A150240, there is no canonical definition to state claims against.
-/

/-! ## A150240.P1110201845844737125

`A150241(n^∑[char[10*n]])`
-/

namespace A150240.P1110201845844737125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150241 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A150240.P1110201845844737125

/-! ## A150240.P15431333472147527894

`A150241(n)%A125581(n+1)`
-/

namespace A150240.P15431333472147527894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150241 n) (A125581 (n + 1))

end

end A150240.P15431333472147527894

/-! ## A150240.P8406018572659673083

`lcm(A008683(4*3^n-1), A150241(n))`
-/

namespace A150240.P8406018572659673083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (4 * 3 ^ n - 1)) (A150241 n)

end

end A150240.P8406018572659673083

/-! ## A150240.P15864792272642298295

`A150241(n)+A006926(A006926(n))`
-/

namespace A150240.P15864792272642298295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150241 n + A006926 (A006926 n).toNat

end

end A150240.P15864792272642298295

/-! ## A150240.P16950317400417054487

`A343103(A212386(n))+A150241(n)`
-/

namespace A150240.P16950317400417054487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343103 (A212386 n).toNat + A150241 n

end

end A150240.P16950317400417054487

/-!
# A150242: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150242, there is no canonical definition to state claims against.
-/

/-! ## A150242.P9139668220936527431

`A076897(A264231(n+1))`
-/

namespace A150242.P9139668220936527431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076897 (A264231 (n + 1)).toNat

end

end A150242.P9139668220936527431

/-! ## A150242.P6827384859617211916

`A181834(A327876(n))+A150239(n)`
-/

namespace A150242.P6827384859617211916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A327876 n).toNat + A150239 n

end

end A150242.P6827384859617211916

/-! ## A150242.P6505387657650918274

`A167808(3*n)+A000194(A185334(n+3))`
-/

namespace A150242.P6505387657650918274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n) + A000194 (A185334 (n + 3)).toNat

end

end A150242.P6505387657650918274

/-!
# A150243: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150243, there is no canonical definition to state claims against.
-/

/-! ## A150243.P17374251634024401294

`A107742(n)+A002264(A033887(n))`
-/

namespace A150243.P17374251634024401294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107742 n + A002264 (A033887 n).toNat

end

end A150243.P17374251634024401294

/-! ## A150243.P4155863509565471910

`A004526(A339036(n)+A046697(n+2))`
-/

namespace A150243.P4155863509565471910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339036 n + A046697 (n + 2)).toNat

end

end A150243.P4155863509565471910

/-! ## A150243.P16241127226102389263

`A008620(A212804(3*n+2)+A000009(3*n))`
-/

namespace A150243.P16241127226102389263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A212804 (3 * n + 2) + A000009 (3 * n)).toNat

end

end A150243.P16241127226102389263

/-!
# A150244: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150244, there is no canonical definition to state claims against.
-/

/-! ## A150244.P3465989299037676039

`A227145(A098619(n)+A005097(n+1))`
-/

namespace A150244.P3465989299037676039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227145 (A098619 n + A005097 (n + 1)).toNat

end

end A150244.P3465989299037676039

/-! ## A150244.P16185518614340207925

`filter[A128723(n), A022930(#)]`
-/

namespace A150244.P16185518614340207925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A150244.P16185518614340207925

/-!
# A150245: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150245, there is no canonical definition to state claims against.
-/

/-! ## A150245.P1484949296678707075

`A194963(A150265(n))`
-/

namespace A150245.P1484949296678707075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194963 (A150265 n).toNat

end

end A150245.P1484949296678707075

/-! ## A150245.P13989031962085049320

`A195174(4*A151051(n))`
-/

namespace A150245.P13989031962085049320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (4 * A151051 n).toNat

end

end A150245.P13989031962085049320

/-! ## A150245.P1666672417851367546

`A334998(or(A150223(n), A305079(n+1)))`
-/

namespace A150245.P1666672417851367546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334998 (Int.lor (A150223 n) (A305079 (n + 1))).toNat

end

end A150245.P1666672417851367546

/-!
# A150246: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150246, there is no canonical definition to state claims against.
-/

/-! ## A150246.P16789796707859058677

`A149459(n)+A008615(A149459(n+1))`
-/

namespace A150246.P16789796707859058677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149459 n + A008615 (A149459 (n + 1)).toNat

end

end A150246.P16789796707859058677

/-! ## A150246.P7242393132899506114

`A267758(A150454(n))`
-/

namespace A150246.P7242393132899506114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267758 (A150454 n).toNat

end

end A150246.P7242393132899506114

/-!
# A150247: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150247, there is no canonical definition to state claims against.
-/

/-! ## A150247.P12057789234114782137

`∏{p}[(C(2*n+1, n+2)+1)², #]`
-/

namespace A150247.P12057789234114782137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (n + 2) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A150247.P12057789234114782137

/-! ## A150247.P10111529843159229253

`A105084(2*n²)`
-/

namespace A150247.P10111529843159229253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105084 (2 * n ^ 2)

end

end A150247.P10111529843159229253

/-!
# A150248: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150248, there is no canonical definition to state claims against.
-/

/-! ## A150248.P3839137288009525941

`A150249(n)-A307598(A008998(n))`
-/

namespace A150248.P3839137288009525941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150249 n - A307598 (A008998 n).toNat

end

end A150248.P3839137288009525941

/-! ## A150248.P12711018431691831202

`xor(A105871(n), A126176(A126182(n)))-A307598(A008998(n))`
-/

namespace A150248.P12711018431691831202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105871 n) (A126176 (A126182 n).toNat) - A307598 (A008998 n).toNat

end

end A150248.P12711018431691831202

/-! ## A150248.P13988240609843837520

`A008621(A109618(n+1)+A002054(n+1))-A307598(A008998(n))`
-/

namespace A150248.P13988240609843837520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A109618 (n + 1) + A002054 (n + 1)).toNat - A307598 (A008998 n).toNat

end

end A150248.P13988240609843837520

/-!
# A150249: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150249, there is no canonical definition to state claims against.
-/

/-! ## A150249.P12465733840437663251

`A307598(A008998(n))+A150248(n)`
-/

namespace A150249.P12465733840437663251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A008998 n).toNat + A150248 n

end

end A150249.P12465733840437663251

/-! ## A150249.P13124560986291844504

`xor(A105871(n), A126176(A126182(n)))`
-/

namespace A150249.P13124560986291844504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105871 n) (A126176 (A126182 n).toNat)

end

end A150249.P13124560986291844504

/-! ## A150249.P15524554073175361000

`A008621(A109618(n+1)+A002054(n+1))`
-/

namespace A150249.P15524554073175361000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A109618 (n + 1) + A002054 (n + 1)).toNat

end

end A150249.P15524554073175361000

/-!
# A150250: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150250, there is no canonical definition to state claims against.
-/

/-! ## A150250.P14292431177269409990

`A192543(A104632(n+2))`
-/

namespace A150250.P14292431177269409990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A104632 (n + 2)).toNat

end

end A150250.P14292431177269409990

/-! ## A150250.P11535241848557447228

`A192543(A192497(n+2))`
-/

namespace A150250.P11535241848557447228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A192497 (n + 2)).toNat

end

end A150250.P11535241848557447228

/-! ## A150250.P10900850729479254279

`A151288(n)+A119464(A120588(n))`
-/

namespace A150250.P10900850729479254279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151288 n + A119464 (A120588 n).toNat

end

end A150250.P10900850729479254279

/-!
# A150251: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150251, there is no canonical definition to state claims against.
-/

/-! ## A150251.P2418774026091077370

`A020913(A216494(n)+A123620(n))`
-/

namespace A150251.P2418774026091077370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A216494 n + A123620 n).toNat

end

end A150251.P2418774026091077370

/-! ## A150251.P10210465387450776490

`A350798(n)+A002265(A000079(n)²)`
-/

namespace A150251.P10210465387450776490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350798 n + A002265 (A000079 n ^ 2).toNat

end

end A150251.P10210465387450776490

/-! ## A150251.P6668875696993858228

`A350798(n)+A002265(A000079(2*n))`
-/

namespace A150251.P6668875696993858228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350798 n + A002265 (A000079 (2 * n)).toNat

end

end A150251.P6668875696993858228

/-!
# A150252: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150252, there is no canonical definition to state claims against.
-/

/-! ## A150252.P13857541522765545980

`floor(A014132(A000045(3*n+1)+1)/3)`
-/

namespace A150252.P13857541522765545980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014132 (A000045 (3 * n + 1) + 1).toNat : ℚ) / 3⌋

end

end A150252.P13857541522765545980

/-! ## A150252.P10226964837853565834

`A008619(A050383(n+1)+A000045(3*n))`
-/

namespace A150252.P10226964837853565834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A050383 (n + 1) + A000045 (3 * n)).toNat

end

end A150252.P10226964837853565834

/-!
# A150253: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150253, there is no canonical definition to state claims against.
-/

/-! ## A150253.P16806384470214514202

`A008620(A151484(n)+A002001(n))`
-/

namespace A150253.P16806384470214514202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A151484 n + A002001 n).toNat

end

end A150253.P16806384470214514202

/-! ## A150253.P7352125532986867725

`A342053(n+1)+A004526(A200030(n+2))`
-/

namespace A150253.P7352125532986867725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342053 (n + 1) + A004526 (A200030 (n + 2)).toNat

end

end A150253.P7352125532986867725

/-!
# A150254: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150254, there is no canonical definition to state claims against.
-/

/-! ## A150254.P1968203284576716142

`A276798(3*A026876(n))`
-/

namespace A150254.P1968203284576716142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (3 * A026876 n).toNat

end

end A150254.P1968203284576716142

/-! ## A150254.P16044638718972068206

`A215255(n)+A002265(A017958(n))`
-/

namespace A150254.P16044638718972068206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215255 n + A002265 (A017958 n).toNat

end

end A150254.P16044638718972068206

/-! ## A150254.P11603415783865927731

`A065033(A346505(n+1)-A002865(n))`
-/

namespace A150254.P11603415783865927731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A346505 (n + 1) - A002865 n).toNat

end

end A150254.P11603415783865927731

/-!
# A150255: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150255, there is no canonical definition to state claims against.
-/

/-! ## A150255.P17500580571222444045

`A194962(∑[ceil(2^(n-1))²])`
-/

namespace A150255.P17500580571222444045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150255.P17500580571222444045

/-! ## A150255.P3666832915098385877

`A109497(A002699(n))`
-/

namespace A150255.P3666832915098385877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A002699 n).toNat

end

end A150255.P3666832915098385877

/-!
# A150256: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150256, there is no canonical definition to state claims against.
-/

/-! ## A150256.P7516534964922903157

`A057355(A151051(n)+1)`
-/

namespace A150256.P7516534964922903157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A151051 n + 1).toNat

end

end A150256.P7516534964922903157

/-! ## A150256.P1452729410694093966

`A194920(A150155(n+1))`
-/

namespace A150256.P1452729410694093966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A150155 (n + 1)).toNat

end

end A150256.P1452729410694093966

/-! ## A150256.P15133785113569061935

`A020911(A150482(n)+A150468(n))`
-/

namespace A150256.P15133785113569061935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (A150482 n + A150468 n).toNat

end

end A150256.P15133785113569061935

/-!
# A150257: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150257, there is no canonical definition to state claims against.
-/

/-! ## A150257.P10098599130711546706

`A020911(2*A150469(n))`
-/

namespace A150257.P10098599130711546706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (2 * A150469 n).toNat

end

end A150257.P10098599130711546706

/-! ## A150257.P5384421897861946139

`A020911(2*A150468(n)+1)`
-/

namespace A150257.P5384421897861946139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (2 * A150468 n + 1).toNat

end

end A150257.P5384421897861946139

/-! ## A150257.P2900533164836759227

`A020911(A150469(n)+A150468(n))`
-/

namespace A150257.P2900533164836759227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (A150469 n + A150468 n).toNat

end

end A150257.P2900533164836759227

/-!
# A150258: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150258, there is no canonical definition to state claims against.
-/

/-! ## A150258.P18369759252883144590

`A004001(A015518(n)+A006139(n))`
-/

namespace A150258.P18369759252883144590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A015518 n + A006139 n).toNat

end

end A150258.P18369759252883144590

/-! ## A150258.P10292329456288535340

`A133789(n)+A103128(A090366(n))`
-/

namespace A150258.P10292329456288535340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n + A103128 (A090366 n).toNat

end

end A150258.P10292329456288535340

/-! ## A150258.P9222854421832208497

`A299021(n+1)-A006983(A299018(n+1))`
-/

namespace A150258.P9222854421832208497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299021 (n + 1) - A006983 (A299018 (n + 1)).toNat

end

end A150258.P9222854421832208497

/-!
# A150259: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150259, there is no canonical definition to state claims against.
-/

/-! ## A150259.P5887320750601059036

`A110654(A110224(n)+A001906(n))`
-/

namespace A150259.P5887320750601059036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110224 n + A001906 n).toNat

end

end A150259.P5887320750601059036

/-! ## A150259.P15133095293298324517

`A330728(A080014(n))+A002450(n)`
-/

namespace A150259.P15133095293298324517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330728 (A080014 n).toNat + A002450 n

end

end A150259.P15133095293298324517

/-!
# A150260: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150260, there is no canonical definition to state claims against.
-/

/-! ## A150260.P3157864695800842262

`A108141(A150405(n))`
-/

namespace A150260.P3157864695800842262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A150405 n).toNat

end

end A150260.P3157864695800842262

/-!
# A150261: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150261, there is no canonical definition to state claims against.
-/

/-! ## A150261.P5653026234743661946

`A008617((2^n+1)²)+Δ[A049137(n+1)]`
-/

namespace A150261.P5653026234743661946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 ((2 ^ n + 1) ^ 2) + (f1 (n + 1) - f1 n)

end

end A150261.P5653026234743661946

/-! ## A150261.P4289399105667724326

`A181734(n)+A025480(A006139(n))`
-/

namespace A150261.P4289399105667724326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181734 n + A025480 (A006139 n).toNat

end

end A150261.P4289399105667724326

/-! ## A150261.P10160125137744743889

`A263778(n)+A002265(A014210(2*n))`
-/

namespace A150261.P10160125137744743889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263778 n + A002265 (A014210 (2 * n)).toNat

end

end A150261.P10160125137744743889

/-!
# A150262: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150262, there is no canonical definition to state claims against.
-/

/-! ## A150262.P16135381712096925155

`A261221(A363548(n+1))`
-/

namespace A150262.P16135381712096925155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A363548 (n + 1)).toNat

end

end A150262.P16135381712096925155

/-! ## A150262.P922024140524695240

`A060384(A128746(n+1))+A000045(n)`
-/

namespace A150262.P922024140524695240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A128746 (n + 1)).toNat + A000045 n

end

end A150262.P922024140524695240

/-!
# A150263: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150263, there is no canonical definition to state claims against.
-/

/-! ## A150263.P4897164020195226006

`A065033(A150269(n)+A150254(n))`
-/

namespace A150263.P4897164020195226006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150269 n + A150254 n).toNat

end

end A150263.P4897164020195226006

/-! ## A150263.P9961288568869750734

`A056171(A163003(n+1)+A000142(n))`
-/

namespace A150263.P9961288568869750734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A163003 (n + 1) + A000142 n).toNat

end

end A150263.P9961288568869750734

/-!
# A150264: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A150264, there is no canonical definition to state claims against.
-/

/-! ## A150264.P8362154612188295388

`A092038(A151089(n))`
-/

namespace A150264.P8362154612188295388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A151089 n).toNat

end

end A150264.P8362154612188295388

/-! ## A150264.P9786127236461326194

`A005185(A150984(n)+n)`
-/

namespace A150264.P9786127236461326194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A150984 n + (n : ℤ)).toNat

end

end A150264.P9786127236461326194

/-! ## A150264.P2045711314618711790

`A008619(or(floor(n/2), A151089(n)))`
-/

namespace A150264.P2045711314618711790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor ⌊(n : ℚ) / 2⌋ (A151089 n)).toNat

end

end A150264.P2045711314618711790

/-!
# A150265: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150265, there is no canonical definition to state claims against.
-/

/-! ## A150265.P11457858970169450047

`A194962(A150245(n))`
-/

namespace A150265.P11457858970169450047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194962 (A150245 n).toNat

end

end A150265.P11457858970169450047

/-! ## A150265.P10198041842233995612

`A053632(C(A084587(n+1), 3))`
-/

namespace A150265.P10198041842233995612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (Nat.choose (A084587 (n + 1)).toNat 3)

end

end A150265.P10198041842233995612

/-!
# A150266: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150266, there is no canonical definition to state claims against.
-/

/-! ## A150266.P13999447554799397199

`A390395(A150529(n))`
-/

namespace A150266.P13999447554799397199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A150529 n).toNat

end

end A150266.P13999447554799397199

/-! ## A150266.P7714055580197395861

`A365067(A289378(n))+A002450(n)`
-/

namespace A150266.P7714055580197395861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365067 (A289378 n).toNat + A002450 n

end

end A150266.P7714055580197395861

/-!
# A150267: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150267, there is no canonical definition to state claims against.
-/

/-! ## A150267.P18085577208781639012

`A285735(A059278(n+1))`
-/

namespace A150267.P18085577208781639012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285735 (A059278 (n + 1)).toNat

end

end A150267.P18085577208781639012

/-! ## A150267.P5364213829712661061

`A008615(A293726(n+1)+A000032(3*n+1))`
-/

namespace A150267.P5364213829712661061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A293726 (n + 1) + A000032 (3 * n + 1)).toNat

end

end A150267.P5364213829712661061

/-!
# A150268: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A150268, there is no canonical definition to state claims against.
-/

/-! ## A150268.P6548672803980312297

`A065033(A151082(n)+n)`
-/

namespace A150268.P6548672803980312297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151082 n + (n : ℤ)).toNat

end

end A150268.P6548672803980312297

/-! ## A150268.P12629824944885594372

`A110654(A151082(n)+n)`
-/

namespace A150268.P12629824944885594372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151082 n + (n : ℤ)).toNat

end

end A150268.P12629824944885594372

/-! ## A150268.P2934147256404157674

`A354208(2*(A166099(n)+1))`
-/

namespace A150268.P2934147256404157674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354208 (2 * (A166099 n + 1)).toNat

end

end A150268.P2934147256404157674

/-!
# A150269: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150269, there is no canonical definition to state claims against.
-/

/-! ## A150269.P5792678875967365143

`A253559(A064641(n))+A150264(n)`
-/

namespace A150269.P5792678875967365143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (A064641 n).toNat + A150264 n

end

end A150269.P5792678875967365143

/-! ## A150269.P17980677367004349651

`A176606(n)-A051903(A185389(n+1))`
-/

namespace A150269.P17980677367004349651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176606 n - A051903 (A185389 (n + 1)).toNat

end

end A150269.P17980677367004349651

/-! ## A150269.P9034410598862068426

`A008619(xor(A151093(n), A317575(n+1)))`
-/

namespace A150269.P9034410598862068426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor (A151093 n) (A317575 (n + 1))).toNat

end

end A150269.P9034410598862068426

/-!
# A150270: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A150270, there is no canonical definition to state claims against.
-/

/-! ## A150270.P10108330077431611453

`A199822(n+1)+A184944(A137594(n))`
-/

namespace A150270.P10108330077431611453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199822 (n + 1) + A184944 (A137594 n).toNat

end

end A150270.P10108330077431611453

/-! ## A150270.P7194844603249266349

`record[A199822(Δ[A294849(n)])]`
-/

namespace A150270.P7194844603249266349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199822 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150270.P7194844603249266349

/-! ## A150270.P10992298860934389309

`A199822(A004901(n+1)+1)`
-/

namespace A150270.P10992298860934389309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199822 (A004901 (n + 1) + 1).toNat

end

end A150270.P10992298860934389309

/-!
# A150271: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150271, there is no canonical definition to state claims against.
-/

/-! ## A150271.P13078431428662202511

`A195119(A151062(n)-A000120(n))`
-/

namespace A150271.P13078431428662202511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A151062 n - A000120 n).toNat

end

end A150271.P13078431428662202511

/-! ## A150271.P9058178831647086453

`A195119(A151062(n)+A195119(n)-n)`
-/

namespace A150271.P9058178831647086453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A151062 n + (A195119 n - (n : ℤ))).toNat

end

end A150271.P9058178831647086453

/-! ## A150271.P5026794458503644967

`A195119(A151062(n)-(n-A195119(n)))`
-/

namespace A150271.P5026794458503644967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A151062 n - ((n : ℤ) - A195119 n)).toNat

end

end A150271.P5026794458503644967

/-!
# A150272: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150272, there is no canonical definition to state claims against.
-/

/-! ## A150272.P5020085771646747635

`A030037(n)+A004526(A103821(n))`
-/

namespace A150272.P5020085771646747635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030037 n + A004526 (A103821 n).toNat

end

end A150272.P5020085771646747635

/-! ## A150272.P3152172789345736071

`∑[A026741(A309694(n)+A006139(n))]`
-/

namespace A150272.P3152172789345736071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A309694 n + A006139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150272.P3152172789345736071

/-!
# A150273: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150273, there is no canonical definition to state claims against.
-/

/-! ## A150273.P17788032713048714950

`A129843(A270239(n))`
-/

namespace A150273.P17788032713048714950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129843 (A270239 n).toNat

end

end A150273.P17788032713048714950

/-! ## A150273.P11239686896748519046

`A268132(A150371(n))`
-/

namespace A150273.P11239686896748519046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (A150371 n).toNat

end

end A150273.P11239686896748519046

/-!
# A150274: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150274, there is no canonical definition to state claims against.
-/

/-! ## A150274.P15884771477294256787

`∑[A066926(A053498(n))]`
-/

namespace A150274.P15884771477294256787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (A053498 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150274.P15884771477294256787

/-! ## A150274.P4674754852045153595

`∑[A175299(round((n+4)*2^(n-3)))]`
-/

namespace A150274.P4674754852045153595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175299 (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150274.P4674754852045153595

/-!
# A150275: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150275, there is no canonical definition to state claims against.
-/

/-! ## A150275.P14308588899276671388

`A001955(A150024(n))`
-/

namespace A150275.P14308588899276671388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001955 (A150024 n).toNat

end

end A150275.P14308588899276671388

/-! ## A150275.P10539596558464298617

`A088462(∑[∑[A150718(n)]])`
-/

namespace A150275.P10539596558464298617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150275.P10539596558464298617

/-!
# A150276: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150276, there is no canonical definition to state claims against.
-/

/-! ## A150276.P8996727388340855785

`A004526(A150280(n)+A150275(n))`
-/

namespace A150276.P8996727388340855785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150280 n + A150275 n).toNat

end

end A150276.P8996727388340855785

/-! ## A150276.P353170918956150649

`A268132(A150392(n))`
-/

namespace A150276.P353170918956150649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268132 (A150392 n).toNat

end

end A150276.P353170918956150649

/-!
# A150277: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150277, there is no canonical definition to state claims against.
-/

/-! ## A150277.P17500713661433592104

`A004525(A150280(n)+A150275(n))`
-/

namespace A150277.P17500713661433592104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150280 n + A150275 n).toNat

end

end A150277.P17500713661433592104

/-! ## A150277.P1475525324407281784

`A004526(A150275(n)+A150280(n)+1)`
-/

namespace A150277.P1475525324407281784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150275 n + (A150280 n + 1)).toNat

end

end A150277.P1475525324407281784

/-!
# A150278: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150278, there is no canonical definition to state claims against.
-/

/-! ## A150278.P15564917325301318578

`A214701(A150281(n))`
-/

namespace A150278.P15564917325301318578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150281 n).toNat

end

end A150278.P15564917325301318578

/-! ## A150278.P8261214484861270247

`A248227(A094373(2*n))`
-/

namespace A150278.P8261214484861270247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A094373 (2 * n)).toNat

end

end A150278.P8261214484861270247

/-!
# A150279: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150279, there is no canonical definition to state claims against.
-/

/-! ## A150279.P1620229123761444746

`A053645(A000045(n+1))+A000463(A151090(n))`
-/

namespace A150279.P1620229123761444746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A000045 (n + 1)).toNat + A000463 (A151090 n).toNat

end

end A150279.P1620229123761444746

/-! ## A150279.P9385322103329089077

`A393971((n+1)²+n²)`
-/

namespace A150279.P9385322103329089077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393971 ((n + 1) ^ 2 + n ^ 2)

end

end A150279.P9385322103329089077

/-!
# A150280: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150280, there is no canonical definition to state claims against.
-/

/-! ## A150280.P7386474608976676825

`A057354(A149979(n+1)+A010872(n+1))`
-/

namespace A150280.P7386474608976676825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A149979 (n + 1) + A010872 (n + 1)).toNat

end

end A150280.P7386474608976676825

/-! ## A150280.P9103902325105312993

`A261585(A198693(n))`
-/

namespace A150280.P9103902325105312993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A198693 n).toNat

end

end A150280.P9103902325105312993

/-!
# A150281: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150281, there is no canonical definition to state claims against.
-/

/-! ## A150281.P17324308476077676421

`A020911(A345242(n+2))`
-/

namespace A150281.P17324308476077676421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (A345242 (n + 2)).toNat

end

end A150281.P17324308476077676421

/-! ## A150281.P443635454975956363

`A004526(A150286(n)+A150278(n))`
-/

namespace A150281.P443635454975956363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150286 n + A150278 n).toNat

end

end A150281.P443635454975956363

/-! ## A150281.P12561430873871378717

`A178798(A286782(n))+A150284(n)`
-/

namespace A150281.P12561430873871378717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A286782 n).toNat + A150284 n

end

end A150281.P12561430873871378717

/-!
# A150282: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150282, there is no canonical definition to state claims against.
-/

/-! ## A150282.P16646863004712978634

`A004525(A150285(n)+A150266(n))`
-/

namespace A150282.P16646863004712978634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150285 n + A150266 n).toNat

end

end A150282.P16646863004712978634

/-! ## A150282.P15807618170933655896

`A305313(2^n)+round(record[(-2)^n/3])`
-/

namespace A150282.P15807618170933655896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305313 (2 ^ n) + SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A150282.P15807618170933655896

/-!
# A150283: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150283, there is no canonical definition to state claims against.
-/

/-! ## A150283.P2467114926247129260

`A004396(ceil(sqrt(A150151(2*n))))`
-/

namespace A150283.P2467114926247129260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ⌈Real.sqrt (A150151 (2 * n) : ℝ)⌉.toNat

end

end A150283.P2467114926247129260

/-! ## A150283.P6253448103875829399

`A256502(A083692(n))`
-/

namespace A150283.P6253448103875829399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A083692 n).toNat

end

end A150283.P6253448103875829399

/-!
# A150284: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150284, there is no canonical definition to state claims against.
-/

/-! ## A150284.P17658367480512106718

`A004525(A150286(n)+A150278(n))`
-/

namespace A150284.P17658367480512106718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150286 n + A150278 n).toNat

end

end A150284.P17658367480512106718

/-! ## A150284.P7382170284425706565

`A151164(n)-A004524(A151180(n))`
-/

namespace A150284.P7382170284425706565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151164 n - A004524 (A151180 n).toNat

end

end A150284.P7382170284425706565

/-! ## A150284.P3694942926846642444

`A150281(n)-A178798(A286782(n))`
-/

namespace A150284.P3694942926846642444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150281 n - A178798 (A286782 n).toNat

end

end A150284.P3694942926846642444

/-!
# A150285: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150285, there is no canonical definition to state claims against.
-/

/-! ## A150285.P14725824732171965132

`A187182(A027193(3*n)+A026751(n+1))`
-/

namespace A150285.P14725824732171965132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A027193 (3 * n) + A026751 (n + 1)).toNat

end

end A150285.P14725824732171965132

/-! ## A150285.P8226882972747336353

`A117922(A150290(n))`
-/

namespace A150285.P8226882972747336353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (A150290 n).toNat

end

end A150285.P8226882972747336353

/-!
# A150286: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150286, there is no canonical definition to state claims against.
-/

/-! ## A150286.P11368664761921135344

`A135318(n)+A007599(A095939(n))`
-/

namespace A150286.P11368664761921135344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n + A007599 (A095939 n).toNat

end

end A150286.P11368664761921135344

/-! ## A150286.P11480840253796617785

`∑[A329702(∑{e}[∑{digits}[n, 10^#], #])-n]`
-/

namespace A150286.P11480840253796617785
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => 10 ^ x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329702 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150286.P11480840253796617785

/-!
# A150287: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150287, there is no canonical definition to state claims against.
-/

/-! ## A150287.P13702716414702719902

`or(12%A333362(n+1), A333080(n))`
-/

namespace A150287.P13702716414702719902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod 12 (A333362 (n + 1))) (A333080 n)

end

end A150287.P13702716414702719902

/-! ## A150287.P13087212493766803990

`A001281(A150295(n)+A150278(n))`
-/

namespace A150287.P13087212493766803990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150295 n + A150278 n).toNat

end

end A150287.P13087212493766803990

/-! ## A150287.P6049754376317730861

`A004525(A150295(n)+A150278(n))`
-/

namespace A150287.P6049754376317730861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150295 n + A150278 n).toNat

end

end A150287.P6049754376317730861

/-!
# A150288: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150288, there is no canonical definition to state claims against.
-/

/-! ## A150288.P9943409009596607049

`A110655(A150399(n+1))`
-/

namespace A150288.P9943409009596607049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A150399 (n + 1)).toNat

end

end A150288.P9943409009596607049

/-! ## A150288.P2087363547895201251

`A097992(A206229(n+2)+A206229(n))`
-/

namespace A150288.P2087363547895201251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A206229 (n + 2) + A206229 n).toNat

end

end A150288.P2087363547895201251

/-! ## A150288.P2954317382470605440

`A057361(A000045(3*n))+A000924(n+1)`
-/

namespace A150288.P2954317382470605440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A000045 (3 * n)).toNat + A000924 (n + 1)

end

end A150288.P2954317382470605440

/-!
# A150289: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150289, there is no canonical definition to state claims against.
-/

/-! ## A150289.P8467447677167138887

`A316626(A150261(n+1))`
-/

namespace A150289.P8467447677167138887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316626 (A150261 (n + 1)).toNat

end

end A150289.P8467447677167138887

/-! ## A150289.P15771736092620044541

`A150763(n)-A002265(A150775(n))`
-/

namespace A150289.P15771736092620044541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150763 n - A002265 (A150775 n).toNat

end

end A150289.P15771736092620044541

/-!
# A150290: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150290, there is no canonical definition to state claims against.
-/

/-! ## A150290.P6171171874617942573

`A029922(A151058(n))`
-/

namespace A150290.P6171171874617942573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A151058 n).toNat

end

end A150290.P6171171874617942573

/-! ## A150290.P17650118553314907025

`A108141(A150489(n))`
-/

namespace A150290.P17650118553314907025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A150489 n).toNat

end

end A150290.P17650118553314907025

/-!
# A150291: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150291, there is no canonical definition to state claims against.
-/

/-! ## A150291.P3598524223239661479

`A156301(A151058(n)+n)-n`
-/

namespace A150291.P3598524223239661479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A151058 n + (n : ℤ)).toNat - (n : ℤ)

end

end A150291.P3598524223239661479

/-! ## A150291.P8043840881006042542

`A008619(A150608(n)+A095940(n))`
-/

namespace A150291.P8043840881006042542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A150608 n + A095940 n).toNat

end

end A150291.P8043840881006042542

/-! ## A150291.P6803575516715301085

`A156301(A151058(n)-A083920(n))`
-/

namespace A150291.P6803575516715301085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A151058 n - A083920 n).toNat

end

end A150291.P6803575516715301085

/-!
# A150292: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150292, there is no canonical definition to state claims against.
-/

/-! ## A150292.P11861395734053319868

`A008619(A113174(n+1))`
-/

namespace A150292.P11861395734053319868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A113174 (n + 1)).toNat

end

end A150292.P11861395734053319868

/-! ## A150292.P8216214407303560531

`∑[A110655(record[A109034(n)])]`
-/

namespace A150292.P8216214407303560531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150292.P8216214407303560531

/-! ## A150292.P2135646666498614707

`∑[A110655(A109034(n+2))]`
-/

namespace A150292.P2135646666498614707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A109034 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150292.P2135646666498614707

/-!
# A150293: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150293, there is no canonical definition to state claims against.
-/

/-! ## A150293.P10092312709932758103

`A004396(A013155(n)+A006516(n))`
-/

namespace A150293.P10092312709932758103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A013155 n + A006516 n).toNat

end

end A150293.P10092312709932758103

/-! ## A150293.P5613353028823671698

`A084077(n)-A002264(A054108(n))`
-/

namespace A150293.P5613353028823671698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084077 n - A002264 (A054108 n).toNat

end

end A150293.P5613353028823671698

/-! ## A150293.P7378668378273775659

`A008619(A105309(2*n))+A002620(n)`
-/

namespace A150293.P7378668378273775659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A105309 (2 * n)).toNat + A002620 n

end

end A150293.P7378668378273775659

/-!
# A150294: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150294, there is no canonical definition to state claims against.
-/

/-! ## A150294.P7428089112998312728

`A226190(A151078(n))`
-/

namespace A150294.P7428089112998312728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A151078 n).toNat

end

end A150294.P7428089112998312728

/-! ## A150294.P10742060699322596984

`∑[A225086(A052545(n))]`
-/

namespace A150294.P10742060699322596984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A052545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150294.P10742060699322596984

/-!
# A150295: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150295, there is no canonical definition to state claims against.
-/

/-! ## A150295.P13944323298825984428

`A087866(A026748(n+1)-A123347(n))`
-/

namespace A150295.P13944323298825984428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A026748 (n + 1) - A123347 n).toNat

end

end A150295.P13944323298825984428

/-! ## A150295.P4964419025965219046

`A082583(A149914(n))`
-/

namespace A150295.P4964419025965219046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082583 (A149914 n).toNat

end

end A150295.P4964419025965219046

/-!
# A150296: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150296, there is no canonical definition to state claims against.
-/

/-! ## A150296.P1607611764590440351

`A004526(A071332(n+1)+A001207(n+1))`
-/

namespace A150296.P1607611764590440351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A071332 (n + 1) + A001207 (n + 1)).toNat

end

end A150296.P1607611764590440351

/-! ## A150296.P5395362296909883160

`A123108(A071332(n+1)+A001207(n+1))`
-/

namespace A150296.P5395362296909883160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A071332 (n + 1) + A001207 (n + 1)).toNat

end

end A150296.P5395362296909883160

/-! ## A150296.P4391849205171976566

`A004526(A071332(n+1)+A094165(n+1)/(n+1))`
-/

namespace A150296.P4391849205171976566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A071332 (n + 1) : ℚ) + (A094165 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A150296.P4391849205171976566

/-!
# A150297: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150297, there is no canonical definition to state claims against.
-/

/-! ## A150297.P15504818244105867082

`∑[A321408(2*n)-floor(n/2)]`
-/

namespace A150297.P15504818244105867082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321408 (2 * n) - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150297.P15504818244105867082

/-! ## A150297.P6844552788100510142

`A066508(A277251(n))`
-/

namespace A150297.P6844552788100510142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A277251 n).toNat

end

end A150297.P6844552788100510142

/-!
# A150298: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150298, there is no canonical definition to state claims against.
-/

/-! ## A150298.P13550309352701700950

`A056135(9*(6*a(n-1)-7*a(n-2)+1))` with `a(0)=1, a(1)=2`
-/

namespace A150298.P13550309352701700950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056135 (9 * (6 * a (n - 1) - 7 * a (n - 2) + 1)).toNat

end

end A150298.P13550309352701700950

/-! ## A150298.P12231428991451533926

`A157271(A083878(n))`
-/

namespace A150298.P12231428991451533926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A083878 n).toNat

end

end A150298.P12231428991451533926

/-!
# A150299: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150299, there is no canonical definition to state claims against.
-/

/-! ## A150299.P10942313905213347754

`A076885(A152187(n))`
-/

namespace A150299.P10942313905213347754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A152187 n).toNat

end

end A150299.P10942313905213347754

/-! ## A150299.P11658773308075694265

`A067100(A000045(3*(n+1))+1)+1`
-/

namespace A150299.P11658773308075694265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067100 (A000045 (3 * (n + 1)) + 1).toNat + 1

end

end A150299.P11658773308075694265

