import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A150100: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A150100, there is no canonical definition to state claims against.
-/

/-! ## A150100.P9076896396335804172

`A236573(A197272(n))+A234010(n+1)`
-/

namespace A150100.P9076896396335804172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236573 (A197272 n).toNat + A234010 (n + 1)

end

end A150100.P9076896396335804172

/-! ## A150100.P4015609023201435947

`A110656(A325482(n+2))+A006749(n+1)`
-/

namespace A150100.P4015609023201435947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A325482 (n + 2)).toNat + A006749 (n + 1)

end

end A150100.P4015609023201435947

/-!
# A150101: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A150101, there is no canonical definition to state claims against.
-/

/-! ## A150101.P15483429420082629814

`A349536(A008965(2*n+1))-ceil(log2(n+1))`
-/

namespace A150101.P15483429420082629814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A008965 (2 * n + 1)).toNat - ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A150101.P15483429420082629814

/-! ## A150101.P14727347448549341784

`A189663(A216454(n)+A150117(n))`
-/

namespace A150101.P14727347448549341784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A216454 n + A150117 n).toNat

end

end A150101.P14727347448549341784

/-!
# A150103: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150103, there is no canonical definition to state claims against.
-/

/-! ## A150103.P12944338420689938429

`A247983(∑[∑[A002212(n)]])`
-/

namespace A150103.P12944338420689938429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150103.P12944338420689938429

/-! ## A150103.P18333728075621270122

`record[A244479(∑[A052836(n)])]`
-/

namespace A150103.P18333728075621270122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150103.P18333728075621270122

/-! ## A150103.P5489861677519945293

`A247983(∑[A181768(n+1)])`
-/

namespace A150103.P5489861677519945293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150103.P5489861677519945293

/-!
# A150104: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150104, there is no canonical definition to state claims against.
-/

/-! ## A150104.P17013462751312709877

`or(A109925(A150937(n)), A150103(n))`
-/

namespace A150104.P17013462751312709877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109925 (A150937 n).toNat) (A150103 n)

end

end A150104.P17013462751312709877

/-! ## A150104.P119421092424718188

`or(A150103(n), A284975(A002478(n)))`
-/

namespace A150104.P119421092424718188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150103 n) (A284975 (A002478 n).toNat)

end

end A150104.P119421092424718188

/-!
# A150105: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150105, there is no canonical definition to state claims against.
-/

/-! ## A150105.P16058735986352066955

`A220658(A374487(n))`
-/

namespace A150105.P16058735986352066955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A374487 n).toNat

end

end A150105.P16058735986352066955

/-! ## A150105.P1935124211975740218

`A029917(Δ[A029892(n+1)]+1)`
-/

namespace A150105.P1935124211975740218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029917 (f1 (n + 1) - f1 n + 1).toNat

end

end A150105.P1935124211975740218

/-! ## A150105.P15374369530001943669

`A000984(n)-A229950(A103096(n+1))`
-/

namespace A150105.P15374369530001943669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A229950 (A103096 (n + 1)).toNat

end

end A150105.P15374369530001943669

/-!
# A150106: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150106, there is no canonical definition to state claims against.
-/

/-! ## A150106.P7845012849661444304

`∏{p}[A150107(n)², #]`
-/

namespace A150106.P7845012849661444304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150107 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150106.P7845012849661444304

/-! ## A150106.P857259227293118573

`A344601(2^n)+∑[n]+1`
-/

namespace A150106.P857259227293118573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344601 (2 ^ n) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A150106.P857259227293118573

/-!
# A150107: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150107, there is no canonical definition to state claims against.
-/

/-! ## A150107.P869821084705741182

`A304793(A036629(n)!)+A150106(n)`
-/

namespace A150107.P869821084705741182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (Nat.factorial (A036629 n).toNat) + A150106 n

end

end A150107.P869821084705741182

/-!
# A150108: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A150108, there is no canonical definition to state claims against.
-/

/-! ## A150108.P6783854201792122830

`A008620(A027127(n+5)+A001764(n))`
-/

namespace A150108.P6783854201792122830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A027127 (n + 5) + A001764 n).toNat

end

end A150108.P6783854201792122830

/-! ## A150108.P15054250339127007268

`∑[A157271(A114121(n))]`
-/

namespace A150108.P15054250339127007268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A114121 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150108.P15054250339127007268

/-!
# A150109: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150109, there is no canonical definition to state claims against.
-/

/-! ## A150109.P10124278529829910253

`A149434(n)+A008615(A006139(n))`
-/

namespace A150109.P10124278529829910253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149434 n + A008615 (A006139 n).toNat

end

end A150109.P10124278529829910253

/-! ## A150109.P7705350043579612993

`A008618(n)+Δ[A004526(A305621(n+1)+(2^n+1)*(2^n+2)/6)]`
-/

namespace A150109.P7705350043579612993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A305621 (n + 1) : ℚ) + (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n + (f1 (n + 1) - f1 n)

end

end A150109.P7705350043579612993

/-!
# A150110: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150110, there is no canonical definition to state claims against.
-/

/-! ## A150110.P14971872477105320612

`record[A278973(n²)+n]`
-/

namespace A150110.P14971872477105320612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278973 (n ^ 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150110.P14971872477105320612

/-! ## A150110.P14276563459466552690

`A214701(A150115(n))`
-/

namespace A150110.P14276563459466552690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150115 n).toNat

end

end A150110.P14276563459466552690

/-!
# A150111: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150111, there is no canonical definition to state claims against.
-/

/-! ## A150111.P5187680247468504463

`A057354(A190733(n+1))`
-/

namespace A150111.P5187680247468504463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A190733 (n + 1)).toNat

end

end A150111.P5187680247468504463

/-! ## A150111.P10074476863748118273

`A107998(A002212(n))-A000007(n)`
-/

namespace A150111.P10074476863748118273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (A002212 n).toNat - A000007 n

end

end A150111.P10074476863748118273

/-! ## A150111.P16483169791015318397

`A150112(n)-A205567(A017982(n))`
-/

namespace A150111.P16483169791015318397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150112 n - A205567 (A017982 n).toNat

end

end A150111.P16483169791015318397

/-!
# A150112: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150112, there is no canonical definition to state claims against.
-/

/-! ## A150112.P10505312234277225453

`A152194(n²)+A059590(n)`
-/

namespace A150112.P10505312234277225453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152194 (n ^ 2) + A059590 n

end

end A150112.P10505312234277225453

/-! ## A150112.P16349766973533070951

`A149442(n)+A054404(A150071(n))`
-/

namespace A150112.P16349766973533070951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149442 n + A054404 (A150071 n).toNat

end

end A150112.P16349766973533070951

/-! ## A150112.P2430738644461520721

`A205567(A017982(n))+A150111(n)`
-/

namespace A150112.P2430738644461520721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205567 (A017982 n).toNat + A150111 n

end

end A150112.P2430738644461520721

/-!
# A150113: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150113, there is no canonical definition to state claims against.
-/

/-! ## A150113.P17402572198912828908

`A340988(2^n)+A150112(n)`
-/

namespace A150113.P17402572198912828908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 (2 ^ n + 91) + A150112 n

end

end A150113.P17402572198912828908

/-! ## A150113.P8408982522895543823

`A150112(n)+A025469(A000351(n))`
-/

namespace A150113.P8408982522895543823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150112 n + A025469 (A000351 n).toNat

end

end A150113.P8408982522895543823

/-! ## A150113.P1845566848032243011

`A150112(n)+A025469(A083420(n))`
-/

namespace A150113.P1845566848032243011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150112 n + A025469 (A083420 n).toNat

end

end A150113.P1845566848032243011

/-!
# A150114: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150114, there is no canonical definition to state claims against.
-/

/-! ## A150114.P9702348791428214630

`A294524(n+1)+ceil(2^(n-1))²`
-/

namespace A150114.P9702348791428214630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294524 (n + 1) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2

end

end A150114.P9702348791428214630

/-! ## A150114.P16311582578662183465

`A205567(A113057(n+1))+A150112(n)`
-/

namespace A150114.P16311582578662183465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205567 (A113057 (n + 1)).toNat + A150112 n

end

end A150114.P16311582578662183465

/-! ## A150114.P4211852938396566242

`or(A122284(A223255(n+1)), A150112(n))`
-/

namespace A150114.P4211852938396566242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122284 (A223255 (n + 1)).toNat) (A150112 n)

end

end A150114.P4211852938396566242

/-!
# A150115: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A150115, there is no canonical definition to state claims against.
-/

/-! ## A150115.P12642237107487801915

`∑[A247971(ceil(2^(n-1))²)]`
-/

namespace A150115.P12642237107487801915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150115.P12642237107487801915

/-! ## A150115.P17237116872710625745

`A137442(A150762(n))`
-/

namespace A150115.P17237116872710625745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137442 (A150762 n).toNat

end

end A150115.P17237116872710625745

/-!
# A150116: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150116, there is no canonical definition to state claims against.
-/

/-! ## A150116.P17345672994507659185

`A233583((comp[∑[n]]+n)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A150116.P17345672994507659185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A233583 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) * a (n - 2)).toNat

end

end A150116.P17345672994507659185

/-! ## A150116.P14411968993960475418

`A117448(A162551(n+1))`
-/

namespace A150116.P14411968993960475418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A162551 (n + 1)).toNat

end

end A150116.P14411968993960475418

/-!
# A150117: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150117, there is no canonical definition to state claims against.
-/

/-! ## A150117.P5352844121858438265

`or(A125229(A308070(n+1)), A150110(n))`
-/

namespace A150117.P5352844121858438265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125229 (A308070 (n + 1)).toNat) (A150110 n)

end

end A150117.P5352844121858438265

/-! ## A150117.P16336046651884125676

`A247971(A150342(n))`
-/

namespace A150117.P16336046651884125676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A150342 n).toNat

end

end A150117.P16336046651884125676

/-!
# A150118: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 1, 0)}.

The programs for A150118, there is no canonical definition to state claims against.
-/

/-! ## A150118.P533283592686091847

`∑[A050296(A150239(n))]`
-/

namespace A150118.P533283592686091847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A150239 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150118.P533283592686091847

/-! ## A150118.P7794311314781618707

`A073137(A000522(n))+A052103(n)`
-/

namespace A150118.P7794311314781618707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A000522 n).toNat + A052103 n

end

end A150118.P7794311314781618707

/-! ## A150118.P17129530066676878871

`A008620(A197189(n)+A122746(n))`
-/

namespace A150118.P17129530066676878871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A197189 n + A122746 n).toNat

end

end A150118.P17129530066676878871

/-!
# A150119: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150119, there is no canonical definition to state claims against.
-/

/-! ## A150119.P13573501962002081682

`A248231(or(A018783(n), A192856(n)))`
-/

namespace A150119.P13573501962002081682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (Int.lor (A018783 n) (A192856 n)).toNat

end

end A150119.P13573501962002081682

/-! ## A150119.P2593199947032372664

`A248231(or(A082853(3*(n+1)), A192856(n)))`
-/

namespace A150119.P2593199947032372664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (Int.lor (A082853 (3 * (n + 1))) (A192856 n)).toNat

end

end A150119.P2593199947032372664

/-!
# A150120: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150120, there is no canonical definition to state claims against.
-/

/-! ## A150120.P16728012072555706822

`∑[A060384(A253067(n))]`
-/

namespace A150120.P16728012072555706822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A253067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150120.P16728012072555706822

/-! ## A150120.P17430259580366764695

`A127757(A026560(n+2))`
-/

namespace A150120.P17430259580366764695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A026560 (n + 2)).toNat

end

end A150120.P17430259580366764695

/-! ## A150120.P15776143059175415956

`Δ[A002264(∑[A150043(n)])]`
-/

namespace A150120.P15776143059175415956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A150120.P15776143059175415956

/-!
# A150121: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150121, there is no canonical definition to state claims against.
-/

/-! ## A150121.P11345550402567568143

`A047036(n)-A184156(A000111(n))`
-/

namespace A150121.P11345550402567568143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047036 n - A184156 (A000111 n).toNat

end

end A150121.P11345550402567568143

/-! ## A150121.P7407775736412247251

`A134758(n)-A274846(A006706(n))`
-/

namespace A150121.P7407775736412247251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n - A274846 (A006706 n).toNat

end

end A150121.P7407775736412247251

/-! ## A150121.P975430459409631503

`A000984(n)-A079203(A094511(n+1))`
-/

namespace A150121.P975430459409631503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A079203 (A094511 (n + 1)).toNat

end

end A150121.P975430459409631503

/-!
# A150122: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 1, 0)}.

The programs for A150122, there is no canonical definition to state claims against.
-/

/-! ## A150122.P1670541685365099897

`C(2*n, n)-A215970(n+1)%(n+1)-char[4]`
-/

namespace A150122.P1670541685365099897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - Int.tmod (A215970 (n + 1)) (n + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150122.P1670541685365099897

/-! ## A150122.P9300042899164286057

`A324685(A324671(n))+C(2*n, n)`
-/

namespace A150122.P9300042899164286057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324685 (A324671 n).toNat + (Nat.choose (2 * n) n : ℤ)

end

end A150122.P9300042899164286057

/-! ## A150122.P6275539761353241038

`abs(A007423(2*4^n-1)-A000984(n))`
-/

namespace A150122.P6275539761353241038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007423 (2 * 4 ^ n - 1) - A000984 n|

end

end A150122.P6275539761353241038

/-!
# A150123: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (0, 1, 1), (1, 0, 0)}.

The programs for A150123, there is no canonical definition to state claims against.
-/

/-! ## A150123.P4218502444687302815

`A004277(A151285(n))-A150130(n)`
-/

namespace A150123.P4218502444687302815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151285 n).toNat - A150130 n

end

end A150123.P4218502444687302815

/-! ## A150123.P14367509576193529625

`A060715(A087449(n)+A071817(n+1))`
-/

namespace A150123.P14367509576193529625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A087449 n + A071817 (n + 1)).toNat

end

end A150123.P14367509576193529625

/-!
# A150124: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150124, there is no canonical definition to state claims against.
-/

/-! ## A150124.P16102261660845260328

`A150122(n)+A215970(n+1)%2`
-/

namespace A150124.P16102261660845260328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150122 n + Int.tmod (A215970 (n + 1)) 2

end

end A150124.P16102261660845260328

/-! ## A150124.P3625177356793748996

`C(2*n, n)-A348613(A359328(n))`
-/

namespace A150124.P3625177356793748996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) - A348613 (A359328 n).toNat

end

end A150124.P3625177356793748996

/-! ## A150124.P17372308120600612495

`A000984(n)-A224447(A001333(n))`
-/

namespace A150124.P17372308120600612495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A224447 (A001333 n).toNat

end

end A150124.P17372308120600612495

/-!
# A150125: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150125, there is no canonical definition to state claims against.
-/

/-! ## A150125.P10495462365868867436

`A057359(A006134(n)+floor(1/(n+1)))`
-/

namespace A150125.P10495462365868867436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A006134 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A150125.P10495462365868867436

/-! ## A150125.P3493635296337315202

`A057359(A192490(2*(n+1))+A006134(n))`
-/

namespace A150125.P3493635296337315202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A192490 (2 * (n + 1)) + A006134 n).toNat

end

end A150125.P3493635296337315202

/-! ## A150125.P11889083289739029784

`A192490(A218982(n))+A057359(A006134(n))`
-/

namespace A150125.P11889083289739029784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (A218982 n).toNat + A057359 (A006134 n).toNat

end

end A150125.P11889083289739029784

/-! ## A150125.P10502870196152820138

`A192490(A320136(n))+A057359(A006134(n))`
-/

namespace A150125.P10502870196152820138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (A320136 n).toNat + A057359 (A006134 n).toNat

end

end A150125.P10502870196152820138

/-!
# A150126: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150126, there is no canonical definition to state claims against.
-/

/-! ## A150126.P26755909562087415

`∑[A137793(A004277(∑[n]))]`
-/

namespace A150126.P26755909562087415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137793 (A004277 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150126.P26755909562087415

/-! ## A150126.P2777097581160135000

`A008616(Δ[Δ[A047007(n)]])`
-/

namespace A150126.P2777097581160135000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A150126.P2777097581160135000

/-! ## A150126.P8327105263663802911

`A106680(A115981(n))+A000984(n)`
-/

namespace A150126.P8327105263663802911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106680 (A115981 n).toNat + A000984 n

end

end A150126.P8327105263663802911

/-!
# A150127: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150127, there is no canonical definition to state claims against.
-/

/-! ## A150127.P10504340489654379865

`A005843(A150149(n))-A150177(n)`
-/

namespace A150127.P10504340489654379865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150149 n).toNat - A150177 n

end

end A150127.P10504340489654379865

/-! ## A150127.P11515462736496499329

`A389596(A150337(n+1))`
-/

namespace A150127.P11515462736496499329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389596 (A150337 (n + 1)).toNat

end

end A150127.P11515462736496499329

/-! ## A150127.P18320979248509464432

`A260731(A121855(n)+A077829(n))`
-/

namespace A150127.P18320979248509464432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A121855 n + A077829 n).toNat

end

end A150127.P18320979248509464432

/-!
# A150128: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150128, there is no canonical definition to state claims against.
-/

/-! ## A150128.P12737164999503983059

`A008615(A300742(n)+A117614(n))`
-/

namespace A150128.P12737164999503983059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A300742 n + A117614 n).toNat

end

end A150128.P12737164999503983059

/-! ## A150128.P15257526377281639659

`A071356(n)-A049337(A005470(n))`
-/

namespace A150128.P15257526377281639659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n - A049337 (A005470 n).toNat

end

end A150128.P15257526377281639659

/-! ## A150128.P9259597410718547269

`A071356(n)-A189684(A006882(n))`
-/

namespace A150128.P9259597410718547269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n - A189684 (A006882 n).toNat

end

end A150128.P9259597410718547269

/-!
# A150129: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150129, there is no canonical definition to state claims against.
-/

/-! ## A150129.P7669453169679482558

`A131572(n)+A103627(A180142(n))`
-/

namespace A150129.P7669453169679482558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 n + A103627 (A180142 n).toNat

end

end A150129.P7669453169679482558

/-! ## A150129.P2537168662173605797

`A085862(A030235(n+1))+A000984(n)`
-/

namespace A150129.P2537168662173605797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A030235 (n + 1)).toNat + A000984 n

end

end A150129.P2537168662173605797

/-!
# A150130: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 1, 0)}.

The programs for A150130, there is no canonical definition to state claims against.
-/

/-! ## A150130.P4207303694636112203

`A004277(A151285(n))-A150123(n)`
-/

namespace A150130.P4207303694636112203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151285 n).toNat - A150123 n

end

end A150130.P4207303694636112203

/-! ## A150130.P10851720914494915020

`A110655(or(∑[n], A026639(n+1)))`
-/

namespace A150130.P10851720914494915020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A026639 (n + 1))).toNat

end

end A150130.P10851720914494915020

/-! ## A150130.P13493432690025498704

`A194960(A304662(n)+A020988(n))`
-/

namespace A150130.P13493432690025498704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194960 (A304662 n + A020988 n).toNat

end

end A150130.P13493432690025498704

/-!
# A150131: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150131, there is no canonical definition to state claims against.
-/

/-! ## A150131.P592143362534051992

`A016729(C(record[2-xor(1, -n)], n))`
-/

namespace A150131.P592143362534051992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat n)

end

end A150131.P592143362534051992

/-! ## A150131.P9102360376337134623

`A016729(A001791(n+1))`
-/

namespace A150131.P9102360376337134623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A001791 (n + 1)).toNat

end

end A150131.P9102360376337134623

/-! ## A150131.P3026644363494068669

`A016729(C(A103517(n), n))`
-/

namespace A150131.P3026644363494068669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (Nat.choose (A103517 n).toNat n)

end

end A150131.P3026644363494068669

/-!
# A150132: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150132, there is no canonical definition to state claims against.
-/

/-! ## A150132.P2960632548777805165

`A150133(A024643(n))`
-/

namespace A150132.P2960632548777805165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150133 (A024643 n).toNat

end

end A150132.P2960632548777805165

/-! ## A150132.P2683766080471044555

`A150133(A073788(n))`
-/

namespace A150132.P2683766080471044555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150133 (A073788 n).toNat

end

end A150132.P2683766080471044555

/-! ## A150132.P8810448034726979555

`A154125(A150133(n))`
-/

namespace A150132.P8810448034726979555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150133 n).toNat

end

end A150132.P8810448034726979555

/-!
# A150134: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A150134, there is no canonical definition to state claims against.
-/

/-! ## A150134.P12636925440537570887

`A214701(A150141(n))`
-/

namespace A150134.P12636925440537570887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150141 n).toNat

end

end A150134.P12636925440537570887

/-! ## A150134.P8858057754289226432

`(A182838(A000079(n))+1)/2`
-/

namespace A150134.P8858057754289226432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182838 (A000079 n).toNat + 1 : ℚ) / 2

end

end A150134.P8858057754289226432

/-!
# A150135: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150135, there is no canonical definition to state claims against.
-/

/-! ## A150135.P4565081708266410584

`∑[A130372(A345242(n+1))]`
-/

namespace A150135.P4565081708266410584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130372 (A345242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150135.P4565081708266410584

/-! ## A150135.P12581077277790073731

`∑[A345242(n+1)%A147302(n+1)]`
-/

namespace A150135.P12581077277790073731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345242 (n + 1)) (A147302 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150135.P12581077277790073731

/-! ## A150135.P1152032840291307906

`A354912(n)+A059169(A215076(n))`
-/

namespace A150135.P1152032840291307906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 n + A059169 (A215076 n).toNat

end

end A150135.P1152032840291307906

/-!
# A150136: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150136, there is no canonical definition to state claims against.
-/

/-! ## A150136.P7403104763488472348

`A236456(A276124(n))+A059279(n)`
-/

namespace A150136.P7403104763488472348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (A276124 n).toNat + A059279 n

end

end A150136.P7403104763488472348

/-! ## A150136.P135142815769276615

`or(A059279(n), A236456(A057993(n)))`
-/

namespace A150136.P135142815769276615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059279 n) (A236456 (A057993 n).toNat)

end

end A150136.P135142815769276615

/-! ## A150136.P6275697313293075761

`A088462(A339066(n)+A093653(n+1))`
-/

namespace A150136.P6275697313293075761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A339066 n + A093653 (n + 1)).toNat

end

end A150136.P6275697313293075761

/-!
# A150137: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 0, 1), (1, 1, 0)}.

The programs for A150137, there is no canonical definition to state claims against.
-/

/-! ## A150137.P11684428104993919329

`∑[or(4, A183992(a(n-1)+1))]` with `a(0)=1, a(1)=1`
-/

namespace A150137.P11684428104993919329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Int.lor 4 (A183992 (f1 (n - 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150137.P11684428104993919329

/-! ## A150137.P268333669559936395

`A150138(A001096(n))`
-/

namespace A150137.P268333669559936395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150138 (A001096 n).toNat

end

end A150137.P268333669559936395

/-!
# A150139: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150139, there is no canonical definition to state claims against.
-/

/-! ## A150139.P12272260588382660873

`A286337(A007317(n+1))-A123975(n+1)`
-/

namespace A150139.P12272260588382660873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286337 (A007317 (n + 1)).toNat - A123975 (n + 1)

end

end A150139.P12272260588382660873

/-! ## A150139.P4864300895594202057

`A137588(A150740(n+1))`
-/

namespace A150139.P4864300895594202057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A150740 (n + 1)).toNat

end

end A150139.P4864300895594202057

/-!
# A150140: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A150140, there is no canonical definition to state claims against.
-/

/-! ## A150140.P10526756101146845622

`A338265(A001006(n))+A071357(n)`
-/

namespace A150140.P10526756101146845622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338265 (A001006 n).toNat + A071357 n

end

end A150140.P10526756101146845622

/-! ## A150140.P11764079742775973282

`A150143(n)-A236456(A057993(n))`
-/

namespace A150140.P11764079742775973282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150143 n - A236456 (A057993 n).toNat

end

end A150140.P11764079742775973282

/-! ## A150140.P5339688134492099804

`A150141(n)-A181834(A327876(n))`
-/

namespace A150140.P5339688134492099804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150141 n - A181834 (A327876 n).toNat

end

end A150140.P5339688134492099804

/-!
# A150141: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150141, there is no canonical definition to state claims against.
-/

/-! ## A150141.P15404098789906020254

`A181834(A327876(n))+A150140(n)`
-/

namespace A150141.P15404098789906020254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A327876 n).toNat + A150140 n

end

end A150141.P15404098789906020254

/-! ## A150141.P14765931420190694450

`A150143(n)-A181834(A056606(n))`
-/

namespace A150141.P14765931420190694450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150143 n - A181834 (A056606 n).toNat

end

end A150141.P14765931420190694450

/-! ## A150141.P1776080063567533154

`A061396(n+1)+A031087(A059951(n+1))`
-/

namespace A150141.P1776080063567533154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061396 (n + 1) + A031087 (A059951 (n + 1)).toNat

end

end A150141.P1776080063567533154

/-!
# A150142: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A150142, there is no canonical definition to state claims against.
-/

/-! ## A150142.P13271145547527668840

`A154417(A276271(n))+A154381(n)`
-/

namespace A150142.P13271145547527668840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154417 (A276271 n).toNat + A154381 n

end

end A150142.P13271145547527668840

/-! ## A150142.P5170253591994436677

`A061070(A049169(n)+A049166(n+1))`
-/

namespace A150142.P5170253591994436677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A049169 n + A049166 (n + 1)).toNat

end

end A150142.P5170253591994436677

/-! ## A150142.P18288208090435797186

`A236456(A057993(n)+n)+A150140(n)`
-/

namespace A150142.P18288208090435797186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (A057993 n + (n : ℤ)).toNat + A150140 n

end

end A150142.P18288208090435797186

/-!
# A150143: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A150143, there is no canonical definition to state claims against.
-/

/-! ## A150143.P12119897230966655776

`A181834(A056606(n))+A150141(n)`
-/

namespace A150143.P12119897230966655776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A056606 n).toNat + A150141 n

end

end A150143.P12119897230966655776

/-! ## A150143.P6357660494499771322

`A236456(A057993(n))+A150140(n)`
-/

namespace A150143.P6357660494499771322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (A057993 n).toNat + A150140 n

end

end A150143.P6357660494499771322

/-! ## A150143.P2798770710004738228

`A150139(n)+A053186(A092651(n+1))`
-/

namespace A150143.P2798770710004738228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150139 n + A053186 (A092651 (n + 1)).toNat

end

end A150143.P2798770710004738228

/-!
# A150144: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A150144, there is no canonical definition to state claims against.
-/

/-! ## A150144.P1193621478631342203

`A285759(A150147(n)+A150135(n))`
-/

namespace A150144.P1193621478631342203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285759 (A150147 n + A150135 n).toNat

end

end A150144.P1193621478631342203

/-! ## A150144.P4983900947300946498

`A261224(A128223(n)+A006139(n))`
-/

namespace A150144.P4983900947300946498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261224 (A128223 n + A006139 n).toNat

end

end A150144.P4983900947300946498

/-! ## A150144.P13947510223300345104

`A065744(A353546(n))+A000984(n)`
-/

namespace A150144.P13947510223300345104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A353546 n).toNat + A000984 n

end

end A150144.P13947510223300345104

/-!
# A150145: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150145, there is no canonical definition to state claims against.
-/

/-! ## A150145.P6810109128743487650

`A372758(A149277(n+1))`
-/

namespace A150145.P6810109128743487650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A149277 (n + 1)).toNat

end

end A150145.P6810109128743487650

/-! ## A150145.P16720210840591135431

`A076436(A073485(n+1)+A006095(n))`
-/

namespace A150145.P16720210840591135431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A073485 (n + 1) + A006095 n).toNat

end

end A150145.P16720210840591135431

/-! ## A150145.P5732145411297008411

`or(A071356(n), A229950(A365698(3*n)))`
-/

namespace A150145.P5732145411297008411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071356 n) (A229950 (A365698 (3 * n)).toNat)

end

end A150145.P5732145411297008411

/-!
# A150146: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150146, there is no canonical definition to state claims against.
-/

/-! ## A150146.P7912543299988782301

`A077219(A382321(n+2))`
-/

namespace A150146.P7912543299988782301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077219 (A382321 (n + 2)).toNat

end

end A150146.P7912543299988782301

/-! ## A150146.P91818366296003379

`A236456(A057993(n))+A150144(n)`
-/

namespace A150146.P91818366296003379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236456 (A057993 n).toNat + A150144 n

end

end A150146.P91818366296003379

/-!
# A150147: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150147, there is no canonical definition to state claims against.
-/

/-! ## A150147.P8579980315141617497

`A269371(A158826(n+1))+A141334(n+1)`
-/

namespace A150147.P8579980315141617497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A158826 (n + 1)).toNat + A141334 (n + 1)

end

end A150147.P8579980315141617497

/-! ## A150147.P652281113660376273

`A329702(∑{e}[∑{digits}[n, 10^#], #])`
-/

namespace A150147.P652281113660376273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329702 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A150147.P652281113660376273

/-!
# A150148: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150148, there is no canonical definition to state claims against.
-/

/-! ## A150148.P16027322576649639227

`A335380(A108851(n))`
-/

namespace A150148.P16027322576649639227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A108851 n).toNat

end

end A150148.P16027322576649639227

/-! ## A150148.P10595958590346255380

`A246376(A000984(n)^A318717(n))`
-/

namespace A150148.P10595958590346255380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246376 (SequenceMachineLib.roundAway ((A000984 n : ℚ) ^ (A318717 n : ℤ))).toNat

end

end A150148.P10595958590346255380

/-!
# A150149: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150149, there is no canonical definition to state claims against.
-/

/-! ## A150149.P2881912200262873086

`A078898(A150177(n)+A150127(n))`
-/

namespace A150149.P2881912200262873086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A150177 n + A150127 n).toNat

end

end A150149.P2881912200262873086

/-! ## A150149.P462450207941432238

`A150151(n)^C(n, 6)!`
-/

namespace A150149.P462450207941432238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150151 n ^ Nat.factorial (Nat.choose n 6)

end

end A150149.P462450207941432238

/-! ## A150149.P3074182980817807068

`A150150(A073788(n))`
-/

namespace A150149.P3074182980817807068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150150 (A073788 n).toNat

end

end A150149.P3074182980817807068

/-!
# A150150: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, -1), (1, 0, 1)}.

The programs for A150150, there is no canonical definition to state claims against.
-/

/-! ## A150150.P11917514450126926416

`A150151(n^∑[char[10*n]])`
-/

namespace A150150.P11917514450126926416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150151 (n ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A150150.P11917514450126926416

/-! ## A150150.P4702504898425443613

`A052410(A150151(n))`
-/

namespace A150150.P4702504898425443613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A150151 n).toNat

end

end A150150.P4702504898425443613

/-!
# A150152: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150152, there is no canonical definition to state claims against.
-/

/-! ## A150152.P8476489813452679140

`A189663(A151040(n)+A047016(n))`
-/

namespace A150152.P8476489813452679140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A151040 n + A047016 n).toNat

end

end A150152.P8476489813452679140

/-! ## A150152.P15393010864051964726

`A248231(A219260(n)+A150102(n))`
-/

namespace A150152.P15393010864051964726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A219260 n + A150102 n).toNat

end

end A150152.P15393010864051964726

/-! ## A150152.P11505009948414353806

`A248231(A150102(n)+floor(A127384(2*n)^γ))`
-/

namespace A150152.P11505009948414353806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A150102 n + ⌊(A127384 (2 * n) : ℝ) ^ Real.eulerMascheroniConstant⌋).toNat

end

end A150152.P11505009948414353806

/-!
# A150153: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A150153, there is no canonical definition to state claims against.
-/

/-! ## A150153.P578624821021934524

`A077467(A149008(n+1))`
-/

namespace A150153.P578624821021934524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (A149008 (n + 1)).toNat

end

end A150153.P578624821021934524

/-! ## A150153.P6274747856334383664

`A002264(A026106(n+5)+A000108(n))`
-/

namespace A150153.P6274747856334383664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A026106 (n + 5) + A000108 n).toNat

end

end A150153.P6274747856334383664

/-! ## A150153.P5549199646830862146

`A098051(2*n+1)-A002264(A052102(2*n))`
-/

namespace A150153.P5549199646830862146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 (2 * n + 1) - A002264 (A052102 (2 * n)).toNat

end

end A150153.P5549199646830862146

/-!
# A150154: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150154, there is no canonical definition to state claims against.
-/

/-! ## A150154.P3944169915130187536

`∑[A110655(Δ[A150165(n)])]`
-/

namespace A150154.P3944169915130187536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150165 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150154.P3944169915130187536

/-! ## A150154.P6224162717750281051

`A008621(A158761(n)+A026531(n))`
-/

namespace A150154.P6224162717750281051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A158761 n + A026531 n).toNat

end

end A150154.P6224162717750281051

/-!
# A150155: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A150155, there is no canonical definition to state claims against.
-/

/-! ## A150155.P14718689732881321809

`A020725(A150166(n))-A005253(n)`
-/

namespace A150155.P14718689732881321809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A150166 n).toNat - A005253 n

end

end A150155.P14718689732881321809

/-! ## A150155.P16897971402783403180

`A001281(A150157(n)+A150154(n))`
-/

namespace A150155.P16897971402783403180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150157 n + A150154 n).toNat

end

end A150155.P16897971402783403180

/-! ## A150155.P14307241933406641176

`A004525(A150157(n)+A150154(n))`
-/

namespace A150155.P14307241933406641176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150157 n + A150154 n).toNat

end

end A150155.P14307241933406641176

/-!
# A150156: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150156, there is no canonical definition to state claims against.
-/

/-! ## A150156.P14813064141044967765

`A083219(A151052(n)+n)`
-/

namespace A150156.P14813064141044967765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A151052 n + (n : ℤ)).toNat

end

end A150156.P14813064141044967765

/-! ## A150156.P5842294354045990387

`A065033(A151052(n)+∑[∑{e}[n, #]])`
-/

namespace A150156.P5842294354045990387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151052 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A150156.P5842294354045990387

/-! ## A150156.P10626442122058103579

`A150157(n)-A184955(2*n+3)`
-/

namespace A150156.P10626442122058103579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150157 n - A184955 (2 * n + 3)

end

end A150156.P10626442122058103579

/-!
# A150157: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150157, there is no canonical definition to state claims against.
-/

/-! ## A150157.P12087038784083188290

`A004526(A150158(n)+A150154(n))`
-/

namespace A150157.P12087038784083188290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150158 n + A150154 n).toNat

end

end A150157.P12087038784083188290

/-! ## A150157.P3508652326486951196

`A123108(A150158(n)+A150154(n))`
-/

namespace A150157.P3508652326486951196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150158 n + A150154 n).toNat

end

end A150157.P3508652326486951196

/-! ## A150157.P16499260272001087174

`A145867(n)-A184944(A184944(2*n))`
-/

namespace A150157.P16499260272001087174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145867 n - A184944 (A184944 (2 * n)).toNat

end

end A150157.P16499260272001087174

/-!
# A150158: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150158, there is no canonical definition to state claims against.
-/

/-! ## A150158.P2202750025628058520

`A145867(n)+A145806(A145863(n+1))`
-/

namespace A150158.P2202750025628058520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145867 n + A145806 (A145863 (n + 1)).toNat

end

end A150158.P2202750025628058520

/-! ## A150158.P5313925905403324341

`A185237(A168390(n+1))+A145867(n)`
-/

namespace A150158.P5313925905403324341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 (A168390 (n + 1)).toNat + A145867 n

end

end A150158.P5313925905403324341

/-! ## A150158.P48297349637412242

`A150167(n)-A001842(A030930(n+1))`
-/

namespace A150158.P48297349637412242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150167 n - A001842 (A030930 (n + 1)).toNat

end

end A150158.P48297349637412242

/-!
# A150159: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150159, there is no canonical definition to state claims against.
-/

/-! ## A150159.P17994427007399904827

`A166444(2*n)+A103254(A006882(n))`
-/

namespace A150159.P17994427007399904827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (2 * n) + A103254 (A006882 n).toNat

end

end A150159.P17994427007399904827

/-! ## A150159.P16212760421667149428

`or(A033665(A002426(n)), A061396(n+1))`
-/

namespace A150159.P16212760421667149428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033665 (A002426 n).toNat) (A061396 (n + 1))

end

end A150159.P16212760421667149428

/-! ## A150159.P9455050503258848378

`or(A061396(n+1), A095269(A014106(n)))`
-/

namespace A150159.P9455050503258848378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061396 (n + 1)) (A095269 (A014106 n).toNat)

end

end A150159.P9455050503258848378

/-!
# A150160: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150160, there is no canonical definition to state claims against.
-/

/-! ## A150160.P3321842386560623863

`xor(A001222(A276124(n)), A150144(n))`
-/

namespace A150160.P3321842386560623863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A276124 n).toNat) (A150144 n)

end

end A150160.P3321842386560623863

/-! ## A150160.P2087628448337103077

`xor(A150143(A004901(n+1)), A346776(n))`
-/

namespace A150160.P2087628448337103077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150143 (A004901 (n + 1)).toNat) (A346776 n)

end

end A150160.P2087628448337103077

/-! ## A150160.P14013709614747545379

`xor(A150139(n)+A053186(A092651(n+1)), A346776(n))`
-/

namespace A150160.P14013709614747545379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150139 n + A053186 (A092651 (n + 1)).toNat) (A346776 n)

end

end A150160.P14013709614747545379

/-!
# A150161: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150161, there is no canonical definition to state claims against.
-/

/-! ## A150161.P12198733278683221119

`A150162(A001096(n))`
-/

namespace A150161.P12198733278683221119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150162 (A001096 n).toNat

end

end A150161.P12198733278683221119

/-! ## A150161.P16895205321376352332

`A001462(A086581(2*n))`
-/

namespace A150161.P16895205321376352332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A086581 (2 * n)).toNat

end

end A150161.P16895205321376352332

/-!
# A150162: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150162, there is no canonical definition to state claims against.
-/

/-! ## A150162.P5911345917025376457

`A243148(A127131(n))+A003000(2*n)`
-/

namespace A150162.P5911345917025376457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A127131 n).toNat + A003000 (2 * n)

end

end A150162.P5911345917025376457

/-! ## A150162.P12417614696295524752

`A337635(A000302(n)+A000265(3*n+1))`
-/

namespace A150162.P12417614696295524752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A000302 n + A000265 (3 * n + 1)).toNat

end

end A150162.P12417614696295524752

/-!
# A150163: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150163, there is no canonical definition to state claims against.
-/

/-! ## A150163.P6287864115466650649

`A289436(A211100(n)+A063023(n+3))`
-/

namespace A150163.P6287864115466650649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A211100 n + A063023 (n + 3)).toNat

end

end A150163.P6287864115466650649

/-! ## A150163.P9650759183285346086

`A248148(A026558(n))-A323248(A296075(n+4))`
-/

namespace A150163.P9650759183285346086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A026558 n).toNat - A323248 (A296075 (n + 4)).toNat

end

end A150163.P9650759183285346086

/-!
# A150164: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150164, there is no canonical definition to state claims against.
-/

/-! ## A150164.P12023690801754113864

`or(A150153(n), A230877(A065412(n)))`
-/

namespace A150164.P12023690801754113864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150153 n) (A230877 (A065412 n).toNat)

end

end A150164.P12023690801754113864

/-!
# A150165: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150165, there is no canonical definition to state claims against.
-/

/-! ## A150165.P11210581242695447179

`A248148(A026558(n))`
-/

namespace A150165.P11210581242695447179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A026558 n).toNat

end

end A150165.P11210581242695447179

/-! ## A150165.P138306868614346929

`A008611(A179610(n)+1+n)`
-/

namespace A150165.P138306868614346929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A179610 n + 1 + (n : ℤ)).toNat

end

end A150165.P138306868614346929

/-! ## A150165.P8337416141896285162

`∑[A300763(A015249(n+2)+1)]`
-/

namespace A150165.P8337416141896285162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A015249 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150165.P8337416141896285162

/-!
# A150166: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150166, there is no canonical definition to state claims against.
-/

/-! ## A150166.P11973802965901524646

`A383511(A383496(n))+A383480(n)`
-/

namespace A150166.P11973802965901524646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 (A383496 n).toNat + A383480 n

end

end A150166.P11973802965901524646

/-! ## A150166.P17665278843207521253

`A008619(A151052(n)+A000071(n+1))`
-/

namespace A150166.P17665278843207521253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A151052 n + A000071 (n + 1)).toNat

end

end A150166.P17665278843207521253

/-! ## A150166.P3401367208840621872

`A004524(A119016(n)+2*A150156(n))`
-/

namespace A150166.P3401367208840621872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A119016 n + 2 * A150156 n).toNat

end

end A150166.P3401367208840621872

/-!
# A150167: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A150167, there is no canonical definition to state claims against.
-/

/-! ## A150167.P4765031532473317916

`A089792(A299501(n))`
-/

namespace A150167.P4765031532473317916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 (A299501 n).toNat

end

end A150167.P4765031532473317916

/-! ## A150167.P7712103009701434159

`A110656(7*A150250(n))`
-/

namespace A150167.P7712103009701434159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (7 * A150250 n).toNat

end

end A150167.P7712103009701434159

/-! ## A150167.P4080053789941494849

`A110656(lcm(7, A150250(n)))`
-/

namespace A150167.P4080053789941494849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lcm 7 (A150250 n))

end

end A150167.P4080053789941494849

/-!
# A150168: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A150168, there is no canonical definition to state claims against.
-/

/-! ## A150168.P15748391812542474676

`A254528(A149365(n+1))`
-/

namespace A150168.P15748391812542474676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254528 (A149365 (n + 1)).toNat

end

end A150168.P15748391812542474676

/-! ## A150168.P2507979845298225423

`A070564(2*A151171(n))`
-/

namespace A150168.P2507979845298225423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (2 * A151171 n).toNat

end

end A150168.P2507979845298225423

/-! ## A150168.P17867417468844071159

`A004526(A299501(n)+round(sqrt(2*(n²+1))))`
-/

namespace A150168.P17867417468844071159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A299501 n + SequenceMachineLib.roundAway (Real.sqrt (2 * (n ^ 2 + 1) : ℝ))).toNat

end

end A150168.P17867417468844071159

/-!
# A150169: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150169, there is no canonical definition to state claims against.
-/

/-! ## A150169.P17829649901786403579

`A150174(n)-A257994(A205235(n+1))`
-/

namespace A150169.P17829649901786403579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150174 n - A257994 (A205235 (n + 1)).toNat

end

end A150169.P17829649901786403579

/-! ## A150169.P9547336579682391870

`A008621(or(A064796(n+1), A307426(n+2)))`
-/

namespace A150169.P9547336579682391870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A064796 (n + 1)) (A307426 (n + 2))).toNat

end

end A150169.P9547336579682391870

/-! ## A150169.P13316552178383384607

`A008621(or(A240835(3*(n+1)), A307426(n+2)))`
-/

namespace A150169.P13316552178383384607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A240835 (3 * (n + 1))) (A307426 (n + 2))).toNat

end

end A150169.P13316552178383384607

/-!
# A150170: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150170, there is no canonical definition to state claims against.
-/

/-! ## A150170.P1895199553732785970

`record[A112689(A059710(n))]`
-/

namespace A150170.P1895199553732785970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A059710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150170.P1895199553732785970

/-! ## A150170.P13297818591423623003

`A103221(A059710(n+4)+char[∑[n]])`
-/

namespace A150170.P13297818591423623003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A059710 (n + 4) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A150170.P13297818591423623003

/-! ## A150170.P5512643092157900727

`A150171(n)-A231037(A221693(n+1))`
-/

namespace A150170.P5512643092157900727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150171 n - A231037 (A221693 (n + 1)).toNat

end

end A150170.P5512643092157900727

/-!
# A150171: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A150171, there is no canonical definition to state claims against.
-/

/-! ## A150171.P13622311746547889855

`A198627(n+1)+A004525(A151055(n))`
-/

namespace A150171.P13622311746547889855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198627 (n + 1) + A004525 (A151055 n).toNat

end

end A150171.P13622311746547889855

/-! ## A150171.P17028478418563212476

`A231037(A221693(n+1))+A150170(n)`
-/

namespace A150171.P17028478418563212476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A221693 (n + 1)).toNat + A150170 n

end

end A150171.P17028478418563212476

/-!
# A150172: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150172, there is no canonical definition to state claims against.
-/

/-! ## A150172.P1355408598435467711

`A378548(A150170(n))`
-/

namespace A150172.P1355408598435467711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378548 (A150170 n).toNat

end

end A150172.P1355408598435467711

/-! ## A150172.P13775530721041293283

`A261221(A326513(n)+A099781(n))`
-/

namespace A150172.P13775530721041293283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A326513 n + A099781 n).toNat

end

end A150172.P13775530721041293283

/-! ## A150172.P17971315242509278197

`or(A000005(A153394(n)), A083691(n))`
-/

namespace A150172.P17971315242509278197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A153394 n).toNat) (A083691 n)

end

end A150172.P17971315242509278197

/-!
# A150173: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150173, there is no canonical definition to state claims against.
-/

/-! ## A150173.P5966244001229299030

`A047751(n+1)+A150337(n)-A008618(2*A150337(n)+n)`
-/

namespace A150173.P5966244001229299030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (n + 1) + (A150337 n - A008618 (2 * A150337 n + (n : ℤ)).toNat)

end

end A150173.P5966244001229299030

/-! ## A150173.P17068042768195656621

`A150174(A001096(n))`
-/

namespace A150173.P17068042768195656621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150174 (A001096 n).toNat

end

end A150173.P17068042768195656621

/-!
# A150174: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150174, there is no canonical definition to state claims against.
-/

/-! ## A150174.P7472508005796360433

`A257994(A205235(n+1))+A150169(n)`
-/

namespace A150174.P7472508005796360433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A205235 (n + 1)).toNat + A150169 n

end

end A150174.P7472508005796360433

/-! ## A150174.P15877857737201993383

`A004525(A345207(n+9)*A345211(n+1))`
-/

namespace A150174.P15877857737201993383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A345207 (n + 9) * A345211 (n + 1)).toNat

end

end A150174.P15877857737201993383

/-! ## A150174.P15072793366279391717

`A004526(A345207(n+9)*A345211(n+1))`
-/

namespace A150174.P15072793366279391717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A345207 (n + 9) * A345211 (n + 1)).toNat

end

end A150174.P15072793366279391717

/-!
# A150175: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150175, there is no canonical definition to state claims against.
-/

/-! ## A150175.P5114113535697221352

`A280498(A149340(n+1))`
-/

namespace A150175.P5114113535697221352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A149340 (n + 1)).toNat

end

end A150175.P5114113535697221352

/-! ## A150175.P14883692461869480829

`A002264(A374742(3*n))+A000010(n+1)`
-/

namespace A150175.P14883692461869480829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A374742 (3 * n)).toNat + A000010 (n + 1)

end

end A150175.P14883692461869480829

/-!
# A150176: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150176, there is no canonical definition to state claims against.
-/

/-! ## A150176.P3851276532778086276

`or(A025437(Δ[n!]), A150175(n))`
-/

namespace A150176.P3851276532778086276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025437 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A150175 n)

end

end A150176.P3851276532778086276

/-! ## A150176.P16965088493414802918

`or(A025437(A052655(n)), A150175(n))`
-/

namespace A150176.P16965088493414802918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025437 (A052655 n).toNat) (A150175 n)

end

end A150176.P16965088493414802918

/-! ## A150176.P3222938804927754166

`or(A150175(n), A319759(A309807(n)))`
-/

namespace A150176.P3222938804927754166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150175 n) (A319759 (A309807 n).toNat)

end

end A150176.P3222938804927754166

/-!
# A150177: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150177, there is no canonical definition to state claims against.
-/

/-! ## A150177.P6332937353166060035

`A005843(A150149(n))-A150127(n)`
-/

namespace A150177.P6332937353166060035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150149 n).toNat - A150127 n

end

end A150177.P6332937353166060035

/-! ## A150177.P10527387167909232633

`2*A150149(n)-A002264(A019309(n)+A014234(n+1))`
-/

namespace A150177.P10527387167909232633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A150149 n - A002264 (A019309 n + A014234 (n + 1)).toNat

end

end A150177.P10527387167909232633

/-!
# A150178: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150178, there is no canonical definition to state claims against.
-/

/-! ## A150178.P11898392993285000472

`A149689(n)+A055631(A166229(n))`
-/

namespace A150178.P11898392993285000472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149689 n + A055631 (A166229 n).toNat

end

end A150178.P11898392993285000472

/-! ## A150178.P4985738893228185069

`A211316(A211304(n)+A001835(n))`
-/

namespace A150178.P4985738893228185069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211316 (A211304 n + A001835 n).toNat

end

end A150178.P4985738893228185069

/-!
# A150179: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, -1), (1, 0, 1)}.

The programs for A150179, there is no canonical definition to state claims against.
-/

/-! ## A150179.P6807024672325499238

`A028310(A150180(n))`
-/

namespace A150179.P6807024672325499238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150180 n).toNat

end

end A150179.P6807024672325499238

/-! ## A150179.P789289877471412872

`A150180(A073789(n))`
-/

namespace A150179.P789289877471412872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150180 (A073789 n).toNat

end

end A150179.P789289877471412872

/-! ## A150179.P15299181035229163198

`A150180(A171644(n))`
-/

namespace A150179.P15299181035229163198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150180 (A171644 n).toNat

end

end A150179.P15299181035229163198

/-! ## A150179.P7592088632040125433

`A150180(A004869(n+1))`
-/

namespace A150179.P7592088632040125433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150180 (A004869 (n + 1)).toNat

end

end A150179.P7592088632040125433

/-!
# A150181: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150181, there is no canonical definition to state claims against.
-/

/-! ## A150181.P15792099267312716117

`A002264(A148416(n+2)+1)`
-/

namespace A150181.P15792099267312716117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A148416 (n + 2) + 1).toNat

end

end A150181.P15792099267312716117

/-! ## A150181.P13751960088351834968

`A008619(or(A122117(n), A140960(n)))`
-/

namespace A150181.P13751960088351834968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (A122117 n) (A140960 n)).toNat

end

end A150181.P13751960088351834968

/-! ## A150181.P722189866015096280

`A008621(A149664(n+1)+A149662(n))`
-/

namespace A150181.P722189866015096280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A149664 (n + 1) + A149662 n).toNat

end

end A150181.P722189866015096280

/-!
# A150182: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A150182, there is no canonical definition to state claims against.
-/

/-! ## A150182.P11736160863749092303

`A276341(A370797(n))`
-/

namespace A150182.P11736160863749092303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276341 (A370797 n).toNat

end

end A150182.P11736160863749092303

/-! ## A150182.P14211348379755467142

`A105700(n)+A065033(A151060(n))`
-/

namespace A150182.P14211348379755467142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n + A065033 (A151060 n).toNat

end

end A150182.P14211348379755467142

/-! ## A150182.P17809779774368459558

`A065033(A197207(n+1)+A151060(n))`
-/

namespace A150182.P17809779774368459558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A197207 (n + 1) + A151060 n).toNat

end

end A150182.P17809779774368459558

/-!
# A150183: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150183, there is no canonical definition to state claims against.
-/

/-! ## A150183.P17054919297238650491

`A150184(n)-A010894(A325755(n+1))`
-/

namespace A150183.P17054919297238650491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150184 n - A010894 ((A325755 (n + 1)).toNat + 21)

end

end A150183.P17054919297238650491

/-! ## A150183.P613438085746526692

`A150184(n)-A231037(A221693(n+1))`
-/

namespace A150183.P613438085746526692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150184 n - A231037 (A221693 (n + 1)).toNat

end

end A150183.P613438085746526692

/-!
# A150184: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150184, there is no canonical definition to state claims against.
-/

/-! ## A150184.P12393150863742659236

`A150183(n)+A010894(6*n+4)`
-/

namespace A150184.P12393150863742659236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150183 n + A010894 (6 * n + 4 + 21)

end

end A150184.P12393150863742659236

/-! ## A150184.P15616213713563081309

`or(A010894(A191531(n)), A150183(n))`
-/

namespace A150184.P15616213713563081309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A191531 n).toNat + 21)) (A150183 n)

end

end A150184.P15616213713563081309

/-! ## A150184.P14269100514981019543

`A231037(A221693(n+1))+A150183(n)`
-/

namespace A150184.P14269100514981019543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A221693 (n + 1)).toNat + A150183 n

end

end A150184.P14269100514981019543

/-!
# A150185: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150185, there is no canonical definition to state claims against.
-/

/-! ## A150185.P11853680324145256245

`A343131(A137829(n))`
-/

namespace A150185.P11853680324145256245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343131 (A137829 n).toNat

end

end A150185.P11853680324145256245

/-! ## A150185.P2576778722038934241

`A122345(A181665(n))*A302680(2*n+1)`
-/

namespace A150185.P2576778722038934241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122345 (A181665 n).toNat * A302680 (2 * n + 1)

end

end A150185.P2576778722038934241

/-!
# A150186: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150186, there is no canonical definition to state claims against.
-/

/-! ## A150186.P13842792846125369147

`A150187(n)%p?[2^n-1]`
-/

namespace A150186.P13842792846125369147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150187 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150186.P13842792846125369147

/-! ## A150186.P2042294176151049387

`A150187(A073788(n))`
-/

namespace A150186.P2042294176151049387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150187 (A073788 n).toNat

end

end A150186.P2042294176151049387

/-! ## A150186.P11319569076321340842

`A150187(A171596(n))`
-/

namespace A150186.P11319569076321340842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150187 (A171596 n).toNat

end

end A150186.P11319569076321340842

/-!
# A150187: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150187, there is no canonical definition to state claims against.
-/

/-! ## A150187.P9015843777229290685

`or(A150186(n), A286324(A150184(n)))`
-/

namespace A150187.P9015843777229290685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150186 n) (A286324 (A150184 n).toNat)

end

end A150187.P9015843777229290685

/-! ## A150187.P15304087178251532639

`or(A150186(n), A286324(A150185(n)))`
-/

namespace A150187.P15304087178251532639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150186 n) (A286324 (A150185 n).toNat)

end

end A150187.P15304087178251532639

/-! ## A150187.P14673954755190866068

`or(A150186(n), A299701(A150200(n)))`
-/

namespace A150187.P14673954755190866068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150186 n) (A299701 (A150200 n).toNat)

end

end A150187.P14673954755190866068

/-! ## A150187.P13312252701050449131

`or(A063863(A335974(n+1)), A150186(n))`
-/

namespace A150187.P13312252701050449131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063863 (A335974 (n + 1)).toNat) (A150186 n)

end

end A150187.P13312252701050449131

/-!
# A150188: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 0, 1), (1, 1, 0)}.

The programs for A150188, there is no canonical definition to state claims against.
-/

/-! ## A150188.P2022198242120985048

`A091732(n+1)+A002265(floor(8*4^n/7))`
-/

namespace A150188.P2022198242120985048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1) + A002265 ⌊8 * ((4 ^ n : ℚ) / 7)⌋.toNat

end

end A150188.P2022198242120985048

/-! ## A150188.P8358816002722318029

`A329143(A052101(n))+A150165(n)`
-/

namespace A150188.P8358816002722318029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329143 (A052101 n).toNat + A150165 n

end

end A150188.P8358816002722318029

/-! ## A150188.P11357629728615840761

`A047994(n+1)+A008615(A037604(n+1))`
-/

namespace A150188.P11357629728615840761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + A008615 (A037604 (n + 1)).toNat

end

end A150188.P11357629728615840761

/-!
# A150189: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150189, there is no canonical definition to state claims against.
-/

/-! ## A150189.P4094694126449679574

`A090735(A150548(n+1))`
-/

namespace A150189.P4094694126449679574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090735 (A150548 (n + 1)).toNat

end

end A150189.P4094694126449679574

/-! ## A150189.P14076970681038144417

`A289133(A243601(n+1))`
-/

namespace A150189.P14076970681038144417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A243601 (n + 1)).toNat

end

end A150189.P14076970681038144417

/-! ## A150189.P6541972966724770909

`A289133(∑[A319857(n)+A129527(n+1)]+4)`
-/

namespace A150189.P6541972966724770909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319857 n + A129527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A150189.P6541972966724770909

/-!
# A150190: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150190, there is no canonical definition to state claims against.
-/

/-! ## A150190.P3666513629512773314

`A138999(A187178(n+1)+∑[2^n]+2*4^n)`
-/

namespace A150190.P3666513629512773314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A187178 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 * 4 ^ n : ℕ) : ℤ)).toNat

end

end A150190.P3666513629512773314

/-! ## A150190.P10088898188268553830

`A065033(A150198(n)+A150176(n))`
-/

namespace A150190.P10088898188268553830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150198 n + A150176 n).toNat

end

end A150190.P10088898188268553830

/-! ## A150190.P6753367870680434555

`A110654(A150198(n)+A150176(n))`
-/

namespace A150190.P6753367870680434555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150198 n + A150176 n).toNat

end

end A150190.P6753367870680434555

/-!
# A150191: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 0), (1, 0, 1)}.

The programs for A150191, there is no canonical definition to state claims against.
-/

/-! ## A150191.P4859606285622002077

`A150192(n)%p?[∑[2^n]]`
-/

namespace A150191.P4859606285622002077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150192 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A150191.P4859606285622002077

/-! ## A150191.P8907220336181822632

`A150192(A073788(n))`
-/

namespace A150191.P8907220336181822632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150192 (A073788 n).toNat

end

end A150191.P8907220336181822632

/-! ## A150191.P5912015632021945226

`A154470(A150192(n))`
-/

namespace A150191.P5912015632021945226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A150192 n).toNat

end

end A150191.P5912015632021945226

/-!
# A150192: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150192, there is no canonical definition to state claims against.
-/

/-! ## A150192.P15274574953626151635

`or(A150191(n), A237452(A150183(n)))`
-/

namespace A150192.P15274574953626151635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150191 n) (A237452 (A150183 n).toNat)

end

end A150192.P15274574953626151635

/-!
# A150193: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150193, there is no canonical definition to state claims against.
-/

/-! ## A150193.P13868776922973938647

`∑[A248610(A176612(n))]`
-/

namespace A150193.P13868776922973938647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A176612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150193.P13868776922973938647

/-! ## A150193.P9821040300762556714

`A175387(A150165(n+1))`
-/

namespace A150193.P9821040300762556714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175387 (A150165 (n + 1)).toNat

end

end A150193.P9821040300762556714

/-! ## A150193.P2015705003889239765

`A195177(A151035(n+1))`
-/

namespace A150193.P2015705003889239765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A151035 (n + 1)).toNat

end

end A150193.P2015705003889239765

/-!
# A150194: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150194, there is no canonical definition to state claims against.
-/

/-! ## A150194.P1944222947120180817

`A127763(A271790(n+3)+A000079(n))`
-/

namespace A150194.P1944222947120180817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A271790 (n + 3) + A000079 n).toNat

end

end A150194.P1944222947120180817

/-! ## A150194.P15152021445829967292

`or(A145867(n), A239430(A076327(n+1)))`
-/

namespace A150194.P15152021445829967292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A145867 n) (A239430 (A076327 (n + 1)).toNat)

end

end A150194.P15152021445829967292

/-!
# A150195: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150195, there is no canonical definition to state claims against.
-/

/-! ## A150195.P5560197550406098803

`A065033(A150194(n)+A150191(n))`
-/

namespace A150195.P5560197550406098803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150194 n + A150191 n).toNat

end

end A150195.P5560197550406098803

/-! ## A150195.P17423860363554788786

`A065033(A150194(n)+A150192(n))`
-/

namespace A150195.P17423860363554788786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150194 n + A150192 n).toNat

end

end A150195.P17423860363554788786

/-! ## A150195.P1233613909182239213

`A110654(A150194(n)+A150192(n))`
-/

namespace A150195.P1233613909182239213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150194 n + A150192 n).toNat

end

end A150195.P1233613909182239213

/-!
# A150196: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150196, there is no canonical definition to state claims against.
-/

/-! ## A150196.P2134853877891416067

`A028310(xor(A150197(n), A277275(n+1)))`
-/

namespace A150196.P2134853877891416067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A150197 n) (A277275 (n + 1))).toNat

end

end A150196.P2134853877891416067

/-! ## A150196.P10017757515537419057

`xor(A107475(n)+A011371(A150194(n)), A277275(n+1))`
-/

namespace A150196.P10017757515537419057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107475 n + A011371 (A150194 n).toNat) (A277275 (n + 1))

end

end A150196.P10017757515537419057

/-! ## A150196.P16643688637192601339

`A004525(A150202(n)+A150192(n))`
-/

namespace A150196.P16643688637192601339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150202 n + A150192 n).toNat

end

end A150196.P16643688637192601339

/-!
# A150197: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150197, there is no canonical definition to state claims against.
-/

/-! ## A150197.P8591220027989442332

`A107475(n)+A011371(A150194(n))`
-/

namespace A150197.P8591220027989442332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107475 n + A011371 (A150194 n).toNat

end

end A150197.P8591220027989442332

/-! ## A150197.P17629733309719021100

`A028310(xor(A150196(n), A277275(n+1)))`
-/

namespace A150197.P17629733309719021100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.xor (A150196 n) (A277275 (n + 1))).toNat

end

end A150197.P17629733309719021100

/-! ## A150197.P5579589774662242934

`A350389(xor(A150196(n), A277275(n+1)))`
-/

namespace A150197.P5579589774662242934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (Int.xor (A150196 n) (A277275 (n + 1))).toNat

end

end A150197.P5579589774662242934

/-! ## A150197.P756409808160237452

`A350390(xor(A150196(n), A277275(n+1)))`
-/

namespace A150197.P756409808160237452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (Int.xor (A150196 n) (A277275 (n + 1))).toNat

end

end A150197.P756409808160237452

/-!
# A150198: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150198, there is no canonical definition to state claims against.
-/

/-! ## A150198.P13388819674848669053

`A064542(A149041(n+1))`
-/

namespace A150198.P13388819674848669053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A149041 (n + 1)).toNat

end

end A150198.P13388819674848669053

/-! ## A150198.P10220393913815860802

`A150197(n)+A025458(A174136(n))`
-/

namespace A150198.P10220393913815860802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150197 n + A025458 (A174136 n).toNat

end

end A150198.P10220393913815860802

/-! ## A150198.P8085041861542553230

`A150197(n)+A025458(A373280(n+1))`
-/

namespace A150198.P8085041861542553230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150197 n + A025458 (A373280 (n + 1)).toNat

end

end A150198.P8085041861542553230

/-!
# A150199: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150199, there is no canonical definition to state claims against.
-/

/-! ## A150199.P8108413933452549789

`A123108(A122122(n)+A071736(n))`
-/

namespace A150199.P8108413933452549789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A122122 n + A071736 n).toNat

end

end A150199.P8108413933452549789

/-! ## A150199.P1899691636154281969

`A110654(A157418(n+1)+A150538(n))`
-/

namespace A150199.P1899691636154281969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A157418 (n + 1) + A150538 n).toNat

end

end A150199.P1899691636154281969

/-! ## A150199.P3851272219196297494

`A029115(n)+A002264(A148416(n+2))`
-/

namespace A150199.P3851272219196297494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + A002264 (A148416 (n + 2)).toNat

end

end A150199.P3851272219196297494

