import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A392200: a(n) = gcd(A381466(n-1), n).

The programs for A392200, there is no canonical definition to state claims against.
-/

/-! ## A392200.P5555230271413910501

`gcd(A381466(n), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392200.P5555230271413910501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A381466 n) (n + 1 : ℤ)

end

end A392200.P5555230271413910501

/-! ## A392200.P13151625871367561637

`A334968(A083914(n+1)*A102365(n))`
-/

namespace A392200.P13151625871367561637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 (A083914 (n + 1) * A102365 n).toNat

end

end A392200.P13151625871367561637

/-! ## A392200.P11034217929847019777

`A178522(A000463(2*n+3)^A083914(n+1))`
-/

namespace A392200.P11034217929847019777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 (SequenceMachineLib.roundAway ((A000463 (2 * n + 3) : ℚ) ^ (A083914 (n + 1) : ℤ))).toNat

end

end A392200.P11034217929847019777

/-! ## A392200.P18426532440260191796

`gcd(A135569(n), A380652(A000265(3*n+1)))`
-/

namespace A392200.P18426532440260191796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135569 n) (A380652 (A000265 (3 * n + 1)).toNat)

end

end A392200.P18426532440260191796

/-! ## A392200.P14258589983332111338

`A104888(12*A299201(n+5))`
-/

namespace A392200.P14258589983332111338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104888 (12 * A299201 (n + 5)).toNat

end

end A392200.P14258589983332111338

/-!
# A392201: Positive k such that the quadratic Diophantine equation x^2 + y^2 + z^2 = k * (x*y - x*z + y*z) has nontrivial integer solutions.

The programs for A392201, there is no canonical definition to state claims against.
-/

/-! ## A392201.P18266309084965098453

`A331605(n+1)+1`
-/

namespace A392201.P18266309084965098453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331605 (n + 1) + 1

end

end A392201.P18266309084965098453

/-! ## A392201.P17769605932844553651

`A020725(A331605(n+1))`
-/

namespace A392201.P17769605932844553651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A331605 (n + 1)).toNat

end

end A392201.P17769605932844553651

/-!
# A392203: G.f. A(x) satisfies A(x - A(x)) = x^2 + x*A(x).

The programs for A392203, there is no canonical definition to state claims against.
-/

/-! ## A392203.P12633556824109184996

`A074286(A001515(n+1))-A343341(n+3)`
-/

namespace A392203.P12633556824109184996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A001515 (n + 1)).toNat - A343341 (n + 3)

end

end A392203.P12633556824109184996

/-!
# A392204: G.f. A(x) satisfies A(x - A(x)) = x^2 + x^3.

The programs for A392204, there is no canonical definition to state claims against.
-/

/-! ## A392204.P14146057449010436438

`A016729(A052203(n))`
-/

namespace A392204.P14146057449010436438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A052203 n).toNat

end

end A392204.P14146057449010436438

/-!
# A392205: G.f. A(x) satisfies A(x - A(x)) = x^3 + x^4.

The programs for A392205, there is no canonical definition to state claims against.
-/

/-! ## A392205.P11570905558992380133

`A216265(A150547(n+1))`
-/

namespace A392205.P11570905558992380133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216265 (A150547 (n + 1)).toNat

end

end A392205.P11570905558992380133

/-!
# A392206: E.g.f. A(x) satisfies A'(x) = exp( A(x)*A'(x)^2 ), with A(0)=0.

The programs for A392206, there is no canonical definition to state claims against.
-/

/-! ## A392206.P12302330670391977312

`A026144(A177385(n))`
-/

namespace A392206.P12302330670391977312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (A177385 n).toNat

end

end A392206.P12302330670391977312

/-!
# A392207: G.f. satisfies A(x) = A( x^3 + 2*x*A(x)^3 ) / A( x^2 + x*A(x)^2 ).

The programs for A392207, there is no canonical definition to state claims against.
-/

/-! ## A392207.P6844486994897564886

`A037918(A001181(n))`
-/

namespace A392207.P6844486994897564886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A001181 n).toNat

end

end A392207.P6844486994897564886

/-! ## A392207.P16588220274962423566

`A195174(A049152(n+1))`
-/

namespace A392207.P16588220274962423566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A049152 (n + 1)).toNat

end

end A392207.P16588220274962423566

/-! ## A392207.P3737272580795601529

`A261221(A192403(n)-A000129(n))`
-/

namespace A392207.P3737272580795601529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A192403 n - A000129 n).toNat

end

end A392207.P3737272580795601529

/-!
# A392209: G.f. A(x) satisfies A( x*A(x)^3 + A(x)^5 ) = A(x)^4.

The programs for A392209, there is no canonical definition to state claims against.
-/

/-! ## A392209.P2538196828914310579

`A320841(A124777(n))+A063021(n+1)`
-/

namespace A392209.P2538196828914310579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A124777 n).toNat + A063021 (n + 1)

end

end A392209.P2538196828914310579

/-! ## A392209.P6118951468441395071

`A370813(A255203(n+1))+A063021(n+1)`
-/

namespace A392209.P6118951468441395071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370813 (A255203 (n + 1)).toNat + A063021 (n + 1)

end

end A392209.P6118951468441395071

/-! ## A392209.P7484305278805538076

`A337541(A385768(n+5))+A063021(n+1)`
-/

namespace A392209.P7484305278805538076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (A385768 (n + 5)).toNat + A063021 (n + 1)

end

end A392209.P7484305278805538076

/-! ## A392209.P16078310703014395584

`A063021(A043320(n+1))`
-/

namespace A392209.P16078310703014395584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063021 (A043320 (n + 1)).toNat

end

end A392209.P16078310703014395584

/-! ## A392209.P6053985070993788933

`A063021(A044917(n+1))`
-/

namespace A392209.P6053985070993788933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063021 (A044917 (n + 1)).toNat

end

end A392209.P6053985070993788933

/-!
# A392210: G.f.: x + sq(x/(1-x) + sq(x/(1-2*x) + sq(x/(1-3*x) + sq(x/(1-4*x) + ...)))) where sq(x) = x^2, an infinitely nested square.

The programs for A392210, there is no canonical definition to state claims against.
-/

/-! ## A392210.P3927686531051129252

`A152392(n)-A211225(A047863(n))`
-/

namespace A392210.P3927686531051129252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152392 n - A211225 (A047863 n).toNat

end

end A392210.P3927686531051129252

/-! ## A392210.P10771841483284401912

`A152392(n)-A373791(A028389(n))`
-/

namespace A392210.P10771841483284401912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152392 n - A373791 (A028389 n).toNat

end

end A392210.P10771841483284401912

/-!
# A392212: G.f. A(x) satisfies A(x) - A(x)^2 - x is an even function and A(x) - 2*A(x)^2 + x^2 is an odd function.

The programs for A392212, there is no canonical definition to state claims against.
-/

/-! ## A392212.P11638403247862757462

`A154788(A041033(n))`
-/

namespace A392212.P11638403247862757462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154788 (A041033 n).toNat

end

end A392212.P11638403247862757462

/-! ## A392212.P8473662100189827995

`A364828(A000108(n))+2*and(n, 2*n)`
-/

namespace A392212.P8473662100189827995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364828 (A000108 n).toNat + (2 * Nat.land n (2 * n) : ℤ)

end

end A392212.P8473662100189827995

/-!
# A392214: G.f. A(x) satisfies [x^n] A(x)^prime(n) = prime(n)^n for n >= 1.

The programs for A392214, there is no canonical definition to state claims against.
-/

/-! ## A392214.P14895449140353385976

`A320536(n^(n+1)+1)`
-/

namespace A392214.P14895449140353385976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (n ^ (n + 1) + 1)

end

end A392214.P14895449140353385976

/-!
# A392217: Irregular triangle read by rows: the n-th row gives the divisors of phi(n).

The programs for A392217, there is no canonical definition to state claims against.
-/

/-! ## A392217.P5642618981625275192

`A069288(A069011(n)+A001642(n+2))`
-/

namespace A392217.P5642618981625275192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A069011 n + A001642 (n + 2)).toNat

end

end A392217.P5642618981625275192

/-! ## A392217.P11372601228069008743

`A086435(A270882(n+4)+A050376(n+1))`
-/

namespace A392217.P11372601228069008743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A270882 (n + 4) + A050376 (n + 1)).toNat

end

end A392217.P11372601228069008743

/-! ## A392217.P17020794971082896157

`A220482(A324173(2*(n+1))+A324173(n))`
-/

namespace A392217.P17020794971082896157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220482 (A324173 (2 * (n + 1)) + A324173 n).toNat

end

end A392217.P17020794971082896157

/-! ## A392217.P1563136587561922910

`gcd(A096199(n+1), A324983(A000055(n+3)))`
-/

namespace A392217.P1563136587561922910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096199 (n + 1)) (A324983 (A000055 (n + 3)).toNat)

end

end A392217.P1563136587561922910

/-! ## A392217.P17476180688511515287

`A124768(A037201(n+2)/2*A269361(n+1))`
-/

namespace A392217.P17476180688511515287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (SequenceMachineLib.roundAway ((A037201 (n + 2) : ℚ) / 2 * (A269361 (n + 1) : ℚ))).toNat

end

end A392217.P17476180688511515287

/-!
# A392218: Product of the divisors of phi(n).

The programs for A392218, the canonical program `A392218.P16910627991504591076` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392218 has offset 1).

The definition of A392218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392218.P3804689490055636934

`∏{d}[A000010(n+1), #]`
-/

namespace A392218.P3804689490055636934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P3804689490055636934

namespace A392218

/-- `∏{d}[A000010(n+1), #]` -/
def P3804689490055636934.Spec : Prop :=
  ∀ n, (P3804689490055636934.a n : ℤ) = A392218 (n + 1)

end A392218

/-! ## A392218.P16910627991504591076

`∏{d}[A349137(2*n+1), #]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A392218

/-- `∏{d}[A349137(2*n+1), #]` -/
def P16910627991504591076.Spec : Prop :=
  ∀ n, (P16910627991504591076.a n : ℤ) = A392218 (n + 1)

theorem P16910627991504591076.correct : P16910627991504591076.Spec := by
  intro n
  simp only [A392218, Nat.add_sub_cancel]

end A392218

/-! ## A392218.P43129084746375905

`A007955(A000010(n+1))`
-/

namespace A392218.P43129084746375905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A000010 (n + 1)).toNat

end

end A392218.P43129084746375905

namespace A392218

/-- `A007955(A000010(n+1))` -/
def P43129084746375905.Spec : Prop :=
  ∀ n, P43129084746375905.a n = A392218 (n + 1)

end A392218

/-! ## A392218.P11757637109832592413

`∏{d}[A067541(2*n+1), #]`
-/

namespace A392218.P11757637109832592413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P11757637109832592413

namespace A392218

/-- `∏{d}[A067541(2*n+1), #]` -/
def P11757637109832592413.Spec : Prop :=
  ∀ n, (P11757637109832592413.a n : ℤ) = A392218 (n + 1)

end A392218

/-! ## A392218.P3433092281579239205

`∏{d}[A309563(2*n+1), #]`
-/

namespace A392218.P3433092281579239205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309563 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A392218.P3433092281579239205

namespace A392218

/-- `∏{d}[A309563(2*n+1), #]` -/
def P3433092281579239205.Spec : Prop :=
  ∀ n, (P3433092281579239205.a n : ℤ) = A392218 (n + 1)

end A392218

/-!
# A392219: Primes p such that the Chebyshev distance from 1 to p in the Ulam spiral is a prime number.

The programs for A392219, there is no canonical definition to state claims against.
-/

/-! ## A392219.P16115265622170183330

`p?[A029612(n+1)]`
-/

namespace A392219.P16115265622170183330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A392219.P16115265622170183330

/-! ## A392219.P7450494472951461995

`p?[A029634(n+1)]`
-/

namespace A392219.P7450494472951461995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A392219.P7450494472951461995

/-! ## A392219.P13614140714858607813

`p?[A029664(n+2)]`
-/

namespace A392219.P13614140714858607813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A392219.P13614140714858607813

/-! ## A392219.P13798051073357741959

`A332382(2^(n+3))`
-/

namespace A392219.P13798051073357741959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332382 (2 ^ (n + 3))

end

end A392219.P13798051073357741959

/-!
# A392220: A modified Sisyphus function: a(n) = concatenation of (number of digits in n) (number of odd digits in n) (number of even digits in n).

The programs for A392220, there is no canonical definition to state claims against.
-/

/-! ## A392220.P17764795170808551735

`A171797(A032559(n+1))`
-/

namespace A392220.P17764795170808551735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A032559 (n + 1)).toNat

end

end A392220.P17764795170808551735

/-! ## A392220.P6753230134024236048

`A171797(A276142(n+1))`
-/

namespace A392220.P6753230134024236048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A276142 (n + 1)).toNat

end

end A392220.P6753230134024236048

/-! ## A392220.P10175765513680411460

`A171797(A227549(n+2))`
-/

namespace A392220.P10175765513680411460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A227549 (n + 2)).toNat

end

end A392220.P10175765513680411460

/-! ## A392220.P3693589175558323375

`A171797(A396204(n+2))`
-/

namespace A392220.P3693589175558323375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171797 (A396204 (n + 2)).toNat

end

end A392220.P3693589175558323375

/-!
# A392221: Sum of depths of leaves in a complete binary tree with n nodes.

The programs for A392221, the canonical program `A392221.P1263781422373612323` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392221 has offset 1).

The definition of A392221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392221.P1263781422373612323

`A070939(n)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A392221

/-- `A070939(n)+a(n-2)` -/
def P1263781422373612323.Spec : Prop :=
  ∀ n, P1263781422373612323.a n = A392221 (n + 1)

theorem P1263781422373612323.correct : P1263781422373612323.Spec := by
  intro n
  simp only [A392221, Nat.add_sub_cancel]

end A392221

/-! ## A392221.P11458475315671318312

`∑[gcd(n%2, A000523(n+1))]`
-/

namespace A392221.P11458475315671318312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A000523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392221.P11458475315671318312

namespace A392221

/-- `∑[gcd(n%2, A000523(n+1))]` -/
def P11458475315671318312.Spec : Prop :=
  ∀ n, (P11458475315671318312.a n : ℤ) = A392221 (n + 1)

end A392221

/-! ## A392221.P16079450851372924490

`A001855(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A392221.P16079450851372924490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001855 (n + 1) - a (n - 1)

end

end A392221.P16079450851372924490

namespace A392221

/-- `A001855(n+1)-a(n-1)` -/
def P16079450851372924490.Spec : Prop :=
  ∀ n, P16079450851372924490.a n = A392221 (n + 1)

end A392221

/-! ## A392221.P16004594495073061420

`∑[C(A000523(n), a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A392221.P16004594495073061420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.choose (A000523 n).toNat (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392221.P16004594495073061420

namespace A392221

/-- `∑[C(A000523(n), a(n-1))]` -/
def P16004594495073061420.Spec : Prop :=
  ∀ n, (P16004594495073061420.a n : ℤ) = A392221 (n + 1)

end A392221

/-! ## A392221.P1233471846278049600

`A029837(n+1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A392221.P1233471846278049600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A029837 (n + 1) + a (n - 2)

end

end A392221.P1233471846278049600

namespace A392221

/-- `A029837(n+1)+a(n-2)` -/
def P1233471846278049600.Spec : Prop :=
  ∀ n, P1233471846278049600.a n = A392221 (n + 1)

end A392221

/-! ## A392221.P17952788186194472355

`∪[A003314(n+1), A123753(n)]`
-/

namespace A392221.P17952788186194472355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392221.P17952788186194472355

namespace A392221

/-- `∪[A003314(n+1), A123753(n)]` -/
def P17952788186194472355.Spec : Prop :=
  ∀ n, (P17952788186194472355.a n : ℤ) = A392221 (n + 1)

end A392221

/-! ## A392221.P10555601528023281755

`eq[1, A306297(n)]`
-/

namespace A392221.P10555601528023281755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392221.P10555601528023281755

namespace A392221

/-- `eq[1, A306297(n)]` -/
def P10555601528023281755.Spec : Prop :=
  ∀ n, (P10555601528023281755.a n : ℤ) = A392221 (n + 1)

end A392221

/-! ## A392221.P12724121028727310752

`A392681(∑[n]+1)`
-/

namespace A392221.P12724121028727310752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392681 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A392221.P12724121028727310752

namespace A392221

/-- `A392681(∑[n]+1)` -/
def P12724121028727310752.Spec : Prop :=
  ∀ n, P12724121028727310752.a n = A392221 (n + 1)

end A392221

/-! ## A392221.P6225542978430040340

`record[A392681(n+1)]`
-/

namespace A392221.P6225542978430040340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392221.P6225542978430040340

namespace A392221

/-- `record[A392681(n+1)]` -/
def P6225542978430040340.Spec : Prop :=
  ∀ n, P6225542978430040340.a n = A392221 (n + 1)

end A392221

/-!
# A392223: Let P(m,k) = 1-(m-1)*...*(m-k+1)/m^(k-1) be the probability that at least two out of k people share a birthday out of m possible days. Sequence gives values of m for which P(m,k(m)) sets a new maximum, where k(m) = A033810(m)-1 is the largest k such that P(m,k) < 1/2.

The programs for A392223, there is no canonical definition to state claims against.
-/

/-! ## A392223.P8096891302803620575

`∑[∑[A194270(A028945(n))]]`
-/

namespace A392223.P8096891302803620575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194270 (A028945 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392223.P8096891302803620575

/-! ## A392223.P2484369326008578943

`∩[A094739(n+1), A308699(n)]`
-/

namespace A392223.P2484369326008578943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392223.P2484369326008578943

/-!
# A392224: A set of 46 squarefree numbers whose reciprocals add to a number that is close to 1, with the property that each number has exactly two distinct prime factors.

The programs for A392224, there is no canonical definition to state claims against.
-/

/-! ## A392224.P13983903296489233506

`lt[A337787(n+1), A378527(n+1)]+1`
-/

namespace A392224.P13983903296489233506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378527 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A392224.P13983903296489233506

/-! ## A392224.P10246127161070614735

`∩[A006881(n+1), A357304(n+1)]`
-/

namespace A392224.P10246127161070614735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392224.P10246127161070614735

/-! ## A392224.P559564179769323796

`∩[A350486(n+1), A357304(n+1)]`
-/

namespace A392224.P559564179769323796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392224.P559564179769323796

/-! ## A392224.P4889542183278606804

`∩[A357304(n+1), A367590(n+1)]`
-/

namespace A392224.P4889542183278606804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392224.P4889542183278606804

/-! ## A392224.P13024099544087387680

`∩[A357304(n+1), A397800(n+1)]`
-/

namespace A392224.P13024099544087387680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392224.P13024099544087387680

/-!
# A392227: Primes that are the concatenation of x, 1 and x for some x.

The programs for A392227, there is no canonical definition to state claims against.
-/

/-! ## A392227.P17391812577757711835

`A392225(A103967(n+1))`
-/

namespace A392227.P17391812577757711835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (A103967 (n + 1)).toNat

end

end A392227.P17391812577757711835

/-! ## A392227.P2662463295362307112

`∩[A154270(n+1), A392225(n+1)]`
-/

namespace A392227.P2662463295362307112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392227.P2662463295362307112

/-! ## A392227.P4207988399314489567

`p?[A392225(n+1)]`
-/

namespace A392227.P4207988399314489567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A392227.P4207988399314489567

/-! ## A392227.P12953097269298373665

`filter[A392225(n+1), A010051(#)]`
-/

namespace A392227.P12953097269298373665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A392227.P12953097269298373665

/-! ## A392227.P15010216920301131666

`filter[A392225(2*n+1), A358672(#)]`
-/

namespace A392227.P15010216920301131666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392225 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A392227.P15010216920301131666

/-!
# A392233: Composite numbers (not multiples of 10) whose constant congruence speed equals the product of the constant congruence speeds of all their prime factors.

The programs for A392233, there is no canonical definition to state claims against.
-/

/-! ## A392233.P6709995773651680070

`A391434(A062399(n+1))`
-/

namespace A392233.P6709995773651680070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391434 (A062399 (n + 1)).toNat

end

end A392233.P6709995773651680070

/-! ## A392233.P5794011435549085666

`A391434(A351870(n+1))`
-/

namespace A392233.P5794011435549085666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391434 (A351870 (n + 1)).toNat

end

end A392233.P5794011435549085666

/-! ## A392233.P12408289303607041981

`A391434(n+1)+A000007(A049614(n))`
-/

namespace A392233.P12408289303607041981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391434 (n + 1) + A000007 (A049614 n).toNat

end

end A392233.P12408289303607041981

/-! ## A392233.P5460541260028608960

`A391434(n+1)+A000007(A102866(n))`
-/

namespace A392233.P5460541260028608960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391434 (n + 1) + A000007 (A102866 n).toNat

end

end A392233.P5460541260028608960

/-! ## A392233.P3477199993333000745

`A391434(n+1)+A000007(A057469(n+1))`
-/

namespace A392233.P3477199993333000745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391434 (n + 1) + A000007 (A057469 (n + 1)).toNat

end

end A392233.P3477199993333000745

/-!
# A392234: Number of partitions of [n] having a gapless set of block sizes.

The programs for A392234, there is no canonical definition to state claims against.
-/

/-! ## A392234.P136658547844247479

`A309326(A027423(n))+A278908(n+1)`
-/

namespace A392234.P136658547844247479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309326 (A027423 n).toNat + A278908 (n + 1)

end

end A392234.P136658547844247479

/-! ## A392234.P7114983943170921422

`A367908(A257386(n)^A202735(n+1))`
-/

namespace A392234.P7114983943170921422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367908 (SequenceMachineLib.roundAway ((A257386 n : ℚ) ^ (A202735 (n + 1) : ℤ))).toNat

end

end A392234.P7114983943170921422

/-!
# A392236: Positions of zeros in A309983.

The programs for A392236, the canonical program `A392236.P3767480464349034148` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392236 has offset 1).

The definition of A392236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392236.P3767480464349034148

`eq[A145037(n), A393336(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A392236

/-- `eq[A145037(n), A393336(n)]` -/
def P3767480464349034148.Spec : Prop :=
  ∀ n, (P3767480464349034148.a n : ℤ) = A392236 (n + 1)

theorem P3767480464349034148.correct : P3767480464349034148.Spec := by
  intro n
  simp only [A392236, Nat.add_sub_cancel]

end A392236

/-!
# A392237: Number of maximal irredundant sets in the n-double cone graph.

The programs for A392237, there is no canonical definition to state claims against.
-/

/-! ## A392237.P2178225879805223355

`A286954(n+1)²+1`
-/

namespace A392237.P2178225879805223355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286954 (n + 1) ^ 2 + 1

end

end A392237.P2178225879805223355

/-! ## A392237.P1687921406833797767

`A002522(A286954(n+1))`
-/

namespace A392237.P1687921406833797767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A286954 (n + 1)).toNat

end

end A392237.P1687921406833797767

/-! ## A392237.P18136787113928260958

`A098749(A291063(n+2))`
-/

namespace A392237.P18136787113928260958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098749 (A291063 (n + 2)).toNat

end

end A392237.P18136787113928260958

/-!
# A392240: Largest prime factor of 6*n+1.

The programs for A392240, the canonical program `A392240.P12035626656294445076` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392240 has offset 1).

The definition of A392240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392240.P12035626656294445076

`A006530(A016921(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A392240

/-- `A006530(A016921(n+1))` -/
def P12035626656294445076.Spec : Prop :=
  ∀ n, P12035626656294445076.a n = A392240 (n + 1)

theorem P12035626656294445076.correct : P12035626656294445076.Spec := by
  intro n
  simp only [A392240, Nat.add_sub_cancel]

end A392240

/-! ## A392240.P7147358536161925650

`A006530(6*(n+1)+1)`
-/

namespace A392240.P7147358536161925650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (6 * (n + 1) + 1)

end

end A392240.P7147358536161925650

namespace A392240

/-- `A006530(6*(n+1)+1)` -/
def P7147358536161925650.Spec : Prop :=
  ∀ n, P7147358536161925650.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P479232782503684535

`A076569(3*n+1)`
-/

namespace A392240.P479232782503684535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (3 * n + 1)

end

end A392240.P479232782503684535

namespace A392240

/-- `A076569(3*n+1)` -/
def P479232782503684535.Spec : Prop :=
  ∀ n, P479232782503684535.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P3185961973629736937

`A076565(3*(n+1))`
-/

namespace A392240.P3185961973629736937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (3 * (n + 1))

end

end A392240.P3185961973629736937

namespace A392240

/-- `A076565(3*(n+1))` -/
def P3185961973629736937.Spec : Prop :=
  ∀ n, P3185961973629736937.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P13712415801294780330

`A076567(3*n+2)`
-/

namespace A392240.P13712415801294780330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (3 * n + 2)

end

end A392240.P13712415801294780330

namespace A392240

/-- `A076567(3*n+2)` -/
def P13712415801294780330.Spec : Prop :=
  ∀ n, P13712415801294780330.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P2945910523485993189

`A076566(6*(n+1))`
-/

namespace A392240.P2945910523485993189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (6 * (n + 1))

end

end A392240.P2945910523485993189

namespace A392240

/-- `A076566(6*(n+1))` -/
def P2945910523485993189.Spec : Prop :=
  ∀ n, P2945910523485993189.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P9490756645162592296

`A076568(A016969(n))`
-/

namespace A392240.P9490756645162592296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076568 (A016969 n).toNat

end

end A392240.P9490756645162592296

namespace A392240

/-- `A076568(A016969(n))` -/
def P9490756645162592296.Spec : Prop :=
  ∀ n, P9490756645162592296.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P1161279689109264535

`A076568(A008594(n+1))`
-/

namespace A392240.P1161279689109264535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076568 (A008594 (n + 1)).toNat

end

end A392240.P1161279689109264535

namespace A392240

/-- `A076568(A008594(n+1))` -/
def P1161279689109264535.Spec : Prop :=
  ∀ n, P1161279689109264535.a n = A392240 (n + 1)

end A392240

/-! ## A392240.P7652019660959686562

`A076568(A161705(n+1))`
-/

namespace A392240.P7652019660959686562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076568 (A161705 (n + 1)).toNat

end

end A392240.P7652019660959686562

namespace A392240

/-- `A076568(A161705(n+1))` -/
def P7652019660959686562.Spec : Prop :=
  ∀ n, P7652019660959686562.a n = A392240 (n + 1)

end A392240

/-!
# A392244: Number of primes of the form b^2 + (b+1)^2 for b <= 10^n.

The programs for A392244, there is no canonical definition to state claims against.
-/

/-! ## A392244.P11069892447113418333

`A361102(A262977(n)-A006068(n))`
-/

namespace A392244.P11069892447113418333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A262977 n - A006068 n).toNat

end

end A392244.P11069892447113418333

/-!
# A392245: Number computed by Wolfram's 2-state 2-symbol Turing machine 1285 when started with n on the tape.

The programs for A392245, there is no canonical definition to state claims against.
-/

/-! ## A392245.P395708936261862026

`and(n+1, A396674(n+1))`
-/

namespace A392245.P395708936261862026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A396674 (n + 1))

end

end A392245.P395708936261862026

/-! ## A392245.P239726585236143045

`A129760(A396674(n+1))`
-/

namespace A392245.P239726585236143045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A396674 (n + 1)).toNat

end

end A392245.P239726585236143045

/-!
# A392249: Numbers k such that k-1 is a perfect square and k+1 is prime.

The programs for A392249, there is no canonical definition to state claims against.
-/

/-! ## A392249.P8642381195824117070

`A067201(n+1)²+1`
-/

namespace A392249.P8642381195824117070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1) ^ 2 + 1

end

end A392249.P8642381195824117070

/-! ## A392249.P10348693499512564357

`A056899(n+1)-1`
-/

namespace A392249.P10348693499512564357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056899 (n + 1) - 1

end

end A392249.P10348693499512564357

/-! ## A392249.P1799150219903325469

`A002522(A067201(n+1))`
-/

namespace A392249.P1799150219903325469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A067201 (n + 1)).toNat

end

end A392249.P1799150219903325469

/-! ## A392249.P4405651057299867865

`∩[A163492(n+1), A002522(n)]`
-/

namespace A392249.P4405651057299867865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P4405651057299867865

/-! ## A392249.P1395292575447445110

`∩[A163492(n+1), A081346(n)]`
-/

namespace A392249.P1395292575447445110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P1395292575447445110

/-! ## A392249.P13116278934915482710

`∩[A163492(n+1), A105770(n)]`
-/

namespace A392249.P13116278934915482710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105770 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P13116278934915482710

/-! ## A392249.P310212440318797523

`∩[A329582(n+1), A002522(n)]`
-/

namespace A392249.P310212440318797523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P310212440318797523

/-! ## A392249.P302960248026127211

`∩[A329582(n+1), A081346(n)]`
-/

namespace A392249.P302960248026127211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P302960248026127211

/-! ## A392249.P1733312882680358114

`∩[A163492(n+1), A363283(n+1)]`
-/

namespace A392249.P1733312882680358114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P1733312882680358114

/-! ## A392249.P2163735132241108429

`∩[A329582(n+1), A363283(n+1)]`
-/

namespace A392249.P2163735132241108429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329582 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392249.P2163735132241108429

/-!
# A392250: a(n) = Sum_{k=0..floor(n/2)} binomial(k,2*(n-2*k)).

The programs for A392250, the canonical program `A392250.P897853649052432994` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392250 has offset 0).

The definition of A392250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392250.P897853649052432994

`2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392250

/-- `2*a(n-2)-a(n-4)+a(n-5)` -/
def P897853649052432994.Spec : Prop :=
  ∀ n, P897853649052432994.a n = A392250 n

theorem P897853649052432994.correct : P897853649052432994.Spec := by
  intro n
  simp only [A392250]

end A392250

/-! ## A392250.P6934271358359371202

`A017827(2*n)`
-/

namespace A392250.P6934271358359371202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (2 * n)

end

end A392250.P6934271358359371202

namespace A392250

/-- `A017827(2*n)` -/
def P6934271358359371202.Spec : Prop :=
  ∀ n, P6934271358359371202.a n = A392250 n

end A392250

/-! ## A392250.P13823596905291538380

`A127839(2*(n+3))`
-/

namespace A392250.P13823596905291538380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (2 * (n + 3))

end

end A392250.P13823596905291538380

namespace A392250

/-- `A127839(2*(n+3))` -/
def P13823596905291538380.Spec : Prop :=
  ∀ n, P13823596905291538380.a n = A392250 n

end A392250

/-! ## A392250.P6072758794283169649

`Δ[A124789(2*n+3)]`
-/

namespace A392250.P6072758794283169649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392250.P6072758794283169649

namespace A392250

/-- `Δ[A124789(2*n+3)]` -/
def P6072758794283169649.Spec : Prop :=
  ∀ n, P6072758794283169649.a n = A392250 n

end A392250

/-! ## A392250.P14246665019976080639

`A124746(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A392250.P14246665019976080639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124746 (2 * n) - a (n - 1)

end

end A392250.P14246665019976080639

namespace A392250

/-- `A124746(2*n)-a(n-1)` -/
def P14246665019976080639.Spec : Prop :=
  ∀ n, P14246665019976080639.a n = A392250 n

end A392250

/-!
# A392253: a(n) = Sum_{k=0..floor(n/2)} binomial(k,3*(n-2*k)).

The programs for A392253, the canonical program `A392253.P1575022005452008621` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392253 has offset 0).

The definition of A392253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392253.P1575022005452008621

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392253

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` -/
def P1575022005452008621.Spec : Prop :=
  ∀ n, P1575022005452008621.a n = A392253 n

theorem P1575022005452008621.correct : P1575022005452008621.Spec := by
  intro n
  simp only [A392253]

end A392253

/-! ## A392253.P9167821167718504147

`A017847(3*n)`
-/

namespace A392253.P9167821167718504147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (3 * n)

end

end A392253.P9167821167718504147

namespace A392253

/-- `A017847(3*n)` -/
def P9167821167718504147.Spec : Prop :=
  ∀ n, P9167821167718504147.a n = A392253 n

end A392253

/-! ## A392253.P14595219527544951452

`A127841(A180486(n+2))`
-/

namespace A392253.P14595219527544951452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (A180486 (n + 2)).toNat

end

end A392253.P14595219527544951452

namespace A392253

/-- `A127841(A180486(n+2))` -/
def P14595219527544951452.Spec : Prop :=
  ∀ n, P14595219527544951452.a n = A392253 n

end A392253

/-! ## A392253.P17037754536007430145

`Δ[A376647(3*n+4)]`
-/

namespace A392253.P17037754536007430145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376647 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392253.P17037754536007430145

namespace A392253

/-- `Δ[A376647(3*n+4)]` -/
def P17037754536007430145.Spec : Prop :=
  ∀ n, P17037754536007430145.a n = A392253 n

end A392253

/-! ## A392253.P7150499216868732630

`A123580(A392355(n))`
-/

namespace A392253.P7150499216868732630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A392355 n).toNat

end

end A392253.P7150499216868732630

namespace A392253

/-- `A123580(A392355(n))` -/
def P7150499216868732630.Spec : Prop :=
  ∀ n, P7150499216868732630.a n = A392253 n

end A392253

/-!
# A392257: Smallest value of rad(t*(n-t)) where t is coprime to n and in the range 1 <= t <= n/2 where rad = A007947.

The programs for A392257, there is no canonical definition to state claims against.
-/

/-! ## A392257.P1889332883771129803

`A147298(n+2)/A007947(n+2)`
-/

namespace A392257.P1889332883771129803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147298 (n + 2) : ℚ) / (A007947 (n + 2) : ℚ)

end

end A392257.P1889332883771129803

/-! ## A392257.P13641806730913490602

`gcd(A084715(n+2), A147298(n+2))`
-/

namespace A392257.P13641806730913490602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084715 (n + 2)) (A147298 (n + 2))

end

end A392257.P13641806730913490602

/-! ## A392257.P8856440690596486374

`∏{p}[n+1, #]-A122287(A356302(2*(n+1)))`
-/

namespace A392257.P8856440690596486374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - A122287 (A356302 (2 * (n + 1))).toNat

end

end A392257.P8856440690596486374

/-! ## A392257.P17029913903909691944

`A007947(n+1)-A053603(A157211(2*n+1))`
-/

namespace A392257.P17029913903909691944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - A053603 (A157211 (2 * n + 1)).toNat

end

end A392257.P17029913903909691944

/-! ## A392257.P12689898275538742708

`A007947(A187829(n+1)+A122698(3*n+5))`
-/

namespace A392257.P12689898275538742708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A187829 (n + 1) + A122698 (3 * n + 5)).toNat

end

end A392257.P12689898275538742708

/-!
# A392262: Even composite numbers that are squarefree or powers of 2.

The programs for A392262, the canonical program `A392262.P13598658566703554878` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392262 has offset 1).

The definition of A392262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392262.P11490453526054986570

`∩[2*n, A388427(n+1)]`
-/

namespace A392262.P11490453526054986570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P11490453526054986570

namespace A392262

/-- `∩[2*n, A388427(n+1)]` -/
def P11490453526054986570.Spec : Prop :=
  ∀ n, (P11490453526054986570.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P13598658566703554878

`filter[A388427(n+1), A373252(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A392262

/-- `filter[A388427(n+1), A373252(#)]` -/
def P13598658566703554878.Spec : Prop :=
  ∀ n, P13598658566703554878.a n = A392262 (n + 1)

theorem P13598658566703554878.correct : P13598658566703554878.Spec := by
  intro n
  simp only [A392262, Nat.add_sub_cancel]

end A392262

/-! ## A392262.P1708998092224013502

`∩[A388427(n+1), A004271(n)]`
-/

namespace A392262.P1708998092224013502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P1708998092224013502

namespace A392262

/-- `∩[A388427(n+1), A004271(n)]` -/
def P1708998092224013502.Spec : Prop :=
  ∀ n, (P1708998092224013502.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P2083201707489456882

`∩[A388427(n+1), A004275(n)]`
-/

namespace A392262.P2083201707489456882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P2083201707489456882

namespace A392262

/-- `∩[A388427(n+1), A004275(n)]` -/
def P2083201707489456882.Spec : Prop :=
  ∀ n, (P2083201707489456882.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P3612479344462314783

`∩[A388427(n+1), A004277(n)]`
-/

namespace A392262.P3612479344462314783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P3612479344462314783

namespace A392262

/-- `∩[A388427(n+1), A004277(n)]` -/
def P3612479344462314783.Spec : Prop :=
  ∀ n, (P3612479344462314783.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P17390087333756224136

`∩[A388427(n+1), A004279(n)]`
-/

namespace A392262.P17390087333756224136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P17390087333756224136

namespace A392262

/-- `∩[A388427(n+1), A004279(n)]` -/
def P17390087333756224136.Spec : Prop :=
  ∀ n, (P17390087333756224136.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P4299788025443669750

`∩[A388427(n+1), A005843(n)]`
-/

namespace A392262.P4299788025443669750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P4299788025443669750

namespace A392262

/-- `∩[A388427(n+1), A005843(n)]` -/
def P4299788025443669750.Spec : Prop :=
  ∀ n, (P4299788025443669750.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P2377146003772777252

`∩[A388427(n+1), A103517(n)]`
-/

namespace A392262.P2377146003772777252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P2377146003772777252

namespace A392262

/-- `∩[A388427(n+1), A103517(n)]` -/
def P2377146003772777252.Spec : Prop :=
  ∀ n, (P2377146003772777252.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P2734621177657543361

`∩[A388427(n+1), A004272(n)]`
-/

namespace A392262.P2734621177657543361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P2734621177657543361

namespace A392262

/-- `∩[A388427(n+1), A004272(n)]` -/
def P2734621177657543361.Spec : Prop :=
  ∀ n, (P2734621177657543361.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P9176375899692788319

`∩[2*n, A303554(n+3)]`
-/

namespace A392262.P9176375899692788319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392262.P9176375899692788319

namespace A392262

/-- `∩[2*n, A303554(n+3)]` -/
def P9176375899692788319.Spec : Prop :=
  ∀ n, (P9176375899692788319.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P5659127533121904425

`filter[A303554(n+3), A373252(#)]`
-/

namespace A392262.P5659127533121904425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A392262.P5659127533121904425

namespace A392262

/-- `filter[A303554(n+3), A373252(#)]` -/
def P5659127533121904425.Spec : Prop :=
  ∀ n, P5659127533121904425.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P17911141922317807782

`filter[A065200(n+3), A373252(#)]`
-/

namespace A392262.P17911141922317807782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A392262.P17911141922317807782

namespace A392262

/-- `filter[A065200(n+3), A373252(#)]` -/
def P17911141922317807782.Spec : Prop :=
  ∀ n, P17911141922317807782.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P17147573349440686778

`eq[A105234(n), A111113(n)]`
-/

namespace A392262.P17147573349440686778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392262.P17147573349440686778

namespace A392262

/-- `eq[A105234(n), A111113(n)]` -/
def P17147573349440686778.Spec : Prop :=
  ∀ n, (P17147573349440686778.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P11872349272491250875

`eq[A131731(n), A388303(n)]`
-/

namespace A392262.P11872349272491250875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392262.P11872349272491250875

namespace A392262

/-- `eq[A131731(n), A388303(n)]` -/
def P11872349272491250875.Spec : Prop :=
  ∀ n, (P11872349272491250875.a n : ℤ) = A392262 (n + 1)

end A392262

/-! ## A392262.P1179431305456086831

`filter[A388427(n+1), A059841(#)]`
-/

namespace A392262.P1179431305456086831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A392262.P1179431305456086831

namespace A392262

/-- `filter[A388427(n+1), A059841(#)]` -/
def P1179431305456086831.Spec : Prop :=
  ∀ n, P1179431305456086831.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P10362528571933943907

`filter[A388427(n+1), A135528(#)]`
-/

namespace A392262.P10362528571933943907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A392262.P10362528571933943907

namespace A392262

/-- `filter[A388427(n+1), A135528(#)]` -/
def P10362528571933943907.Spec : Prop :=
  ∀ n, P10362528571933943907.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P2863096725165425125

`filter[A303554(n+1), A267043(#)]`
-/

namespace A392262.P2863096725165425125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A392262.P2863096725165425125

namespace A392262

/-- `filter[A303554(n+1), A267043(#)]` -/
def P2863096725165425125.Spec : Prop :=
  ∀ n, P2863096725165425125.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P15581868295269686397

`filter[A388427(n+1), A260393(#)]`
-/

namespace A392262.P15581868295269686397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260393 (f1 j).toNat = 1) n)

end

end A392262.P15581868295269686397

namespace A392262

/-- `filter[A388427(n+1), A260393(#)]` -/
def P15581868295269686397.Spec : Prop :=
  ∀ n, P15581868295269686397.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P16991377689271504705

`filter[A388427(n+1), A266591(#)]`
-/

namespace A392262.P16991377689271504705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A392262.P16991377689271504705

namespace A392262

/-- `filter[A388427(n+1), A266591(#)]` -/
def P16991377689271504705.Spec : Prop :=
  ∀ n, P16991377689271504705.a n = A392262 (n + 1)

end A392262

/-! ## A392262.P4417800631627503639

`filter[A388427(n+1), A267043(#)]`
-/

namespace A392262.P4417800631627503639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A392262.P4417800631627503639

namespace A392262

/-- `filter[A388427(n+1), A267043(#)]` -/
def P4417800631627503639.Spec : Prop :=
  ∀ n, P4417800631627503639.a n = A392262 (n + 1)

end A392262

/-!
# A392263: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k)^3.

The programs for A392263, there is no canonical definition to state claims against.
-/

/-! ## A392263.P3610081116564058315

`∩[A030515(n+1), A152742(n)]`
-/

namespace A392263.P3610081116564058315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392263.P3610081116564058315

/-! ## A392263.P14951827909368607711

`filter[A152742(n+1), A353798(#)]`
-/

namespace A392263.P14951827909368607711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A392263.P14951827909368607711

/-! ## A392263.P13240545309860191468

`filter[A152742(n+1), A359474(#)]`
-/

namespace A392263.P13240545309860191468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A392263.P13240545309860191468

/-! ## A392263.P10984371682571523990

`filter[A152742(n+1), A359475(#)]`
-/

namespace A392263.P10984371682571523990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A392263.P10984371682571523990

/-! ## A392263.P354108948027304136

`filter[A152742(n+2), A359471(#)]`
-/

namespace A392263.P354108948027304136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152742 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A392263.P354108948027304136

/-!
# A392265: Number of divisors d | A286708(n) such that d is also in A286708.

The programs for A392265, there is no canonical definition to state claims against.
-/

/-! ## A392265.P2132327220006286158

`A005361(A286708(n+1))-A046660(A286708(n+1))-1`
-/

namespace A392265.P2132327220006286158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A286708 (n + 1)).toNat - A046660 (A286708 (n + 1)).toNat - 1

end

end A392265.P2132327220006286158

/-! ## A392265.P5935011170604051375

`A343660(A365787(n+1))`
-/

namespace A392265.P5935011170604051375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343660 (A365787 (n + 1)).toNat

end

end A392265.P5935011170604051375

/-!
# A392266: a(n) = (3^n + 2*n*3^(n-1) - 1)/4.

The programs for A392266, the canonical program `A392266.P17295911882647806289` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392266 has offset 0).

The definition of A392266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392266.P17295911882647806289

`(3^n+2*n*3^(n-1)-1)/4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392266

/-- `(3^n+2*n*3^(n-1)-1)/4` -/
def P17295911882647806289.Spec : Prop :=
  ∀ n, P17295911882647806289.a n = (A392266 n : ℚ)

end A392266

/-! ## A392266.P12054567637472284099

`∑[ogf((x-2x^2)/(1-6x+9x^2))]`
-/

namespace A392266.P12054567637472284099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392266.P12054567637472284099

namespace A392266

/-- `∑[ogf((x-2x^2)/(1-6x+9x^2))]` -/
def P12054567637472284099.Spec : Prop :=
  ∀ n, P12054567637472284099.a n = A392266 n

end A392266

/-! ## A392266.P4315134815052723120

`∑[(3/(n+1)+3)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A392266.P4315134815052723120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (3 / (n + 1 : ℚ) + 3) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392266.P4315134815052723120

namespace A392266

/-- `∑[(3/(n+1)+3)*a(n-1)]` -/
def P4315134815052723120.Spec : Prop :=
  ∀ n, P4315134815052723120.a n = (A392266 n : ℚ)

end A392266

/-! ## A392266.P6139038396248535461

`A087448(n)-A111277(n)`
-/

namespace A392266.P6139038396248535461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087448 n - A111277 n

end

end A392266.P6139038396248535461

namespace A392266

/-- `A087448(n)-A111277(n)` -/
def P6139038396248535461.Spec : Prop :=
  ∀ n, P6139038396248535461.a n = A392266 n

end A392266

/-! ## A392266.P15276248407647475416

`A082306(n)-A164039(n)`
-/

namespace A392266.P15276248407647475416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082306 n - A164039 n

end

end A392266.P15276248407647475416

namespace A392266

/-- `A082306(n)-A164039(n)` -/
def P15276248407647475416.Spec : Prop :=
  ∀ n, P15276248407647475416.a n = A392266 n

end A392266

/-! ## A392266.P12939711897781372032

`A372874(n+1)-A360715(n+1)`
-/

namespace A392266.P12939711897781372032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372874 (n + 1) - A360715 (n + 1)

end

end A392266.P12939711897781372032

namespace A392266

/-- `A372874(n+1)-A360715(n+1)` -/
def P12939711897781372032.Spec : Prop :=
  ∀ n, P12939711897781372032.a n = A392266 n

end A392266

/-! ## A392266.P3901336880151413428

`A113071(n+1)-(A081038(n)+A014915(n+2))`
-/

namespace A392266.P3901336880151413428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (n + 1) - (A081038 n + A014915 (n + 2))

end

end A392266.P3901336880151413428

namespace A392266

/-- `A113071(n+1)-(A081038(n)+A014915(n+2))` -/
def P3901336880151413428.Spec : Prop :=
  ∀ n, P3901336880151413428.a n = A392266 n

end A392266

/-! ## A392266.P17124901686799186406

`A020988(n)-A083586(n)`
-/

namespace A392266.P17124901686799186406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n - A083586 n

end

end A392266.P17124901686799186406

namespace A392266

/-- `A020988(n)-A083586(n)` -/
def P17124901686799186406.Spec : Prop :=
  ∀ n, P17124901686799186406.a n = A392266 n

end A392266

/-!
# A392271: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k,3*n-5*k).

The programs for A392271, the canonical program `A392271.P3563500365068188376` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392271 has offset 0).

The definition of A392271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392271.P3563500365068188376

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392271

/-- `3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P3563500365068188376.Spec : Prop :=
  ∀ n, P3563500365068188376.a n = A392271 n

theorem P3563500365068188376.correct : P3563500365068188376.Spec := by
  intro n
  simp only [A392271]

end A392271

/-! ## A392271.P10936099474981386750

`A017837(3*n)`
-/

namespace A392271.P10936099474981386750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (3 * n)

end

end A392271.P10936099474981386750

namespace A392271

/-- `A017837(3*n)` -/
def P10936099474981386750.Spec : Prop :=
  ∀ n, P10936099474981386750.a n = A392271 n

end A392271

/-! ## A392271.P10377484218340072270

`A127840(A112414(n))`
-/

namespace A392271.P10377484218340072270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A112414 n).toNat

end

end A392271.P10377484218340072270

namespace A392271

/-- `A127840(A112414(n))` -/
def P10377484218340072270.Spec : Prop :=
  ∀ n, P10377484218340072270.a n = A392271 n

end A392271

/-! ## A392271.P9349431636624331358

`A017837(A008585(n))%A129696(n+5)`
-/

namespace A392271.P9349431636624331358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017837 (A008585 n).toNat) (A129696 (n + 5))

end

end A392271.P9349431636624331358

namespace A392271

/-- `A017837(A008585(n))%A129696(n+5)` -/
def P9349431636624331358.Spec : Prop :=
  ∀ n, P9349431636624331358.a n = A392271 n

end A392271

/-!
# A392272: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k,3*n-8*k).

The programs for A392272, the canonical program `A392272.P715007451280986353` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392272 has offset 0).

The definition of A392272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392272.P715007451280986353

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1, a(7)=0, a(8)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392272

/-- `3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` -/
def P715007451280986353.Spec : Prop :=
  ∀ n, P715007451280986353.a n = A392272 n

theorem P715007451280986353.correct : P715007451280986353.Spec := by
  intro n
  simp only [A392272]

end A392272

/-! ## A392272.P13858886122191168193

`A017867(3*n)`
-/

namespace A392272.P13858886122191168193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (3 * n)

end

end A392272.P13858886122191168193

namespace A392272

/-- `A017867(3*n)` -/
def P13858886122191168193.Spec : Prop :=
  ∀ n, P13858886122191168193.a n = A392272 n

end A392272

/-! ## A392272.P13489773182742765118

`A127843(A112414(n+1))`
-/

namespace A392272.P13489773182742765118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (A112414 (n + 1)).toNat

end

end A392272.P13489773182742765118

namespace A392272

/-- `A127843(A112414(n+1))` -/
def P13489773182742765118.Spec : Prop :=
  ∀ n, P13489773182742765118.a n = A392272 n

end A392272

/-! ## A392272.P2563583935452157826

`A078088(A392316(n))`
-/

namespace A392272.P2563583935452157826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078088 (A392316 n).toNat

end

end A392272.P2563583935452157826

namespace A392272

/-- `A078088(A392316(n))` -/
def P2563583935452157826.Spec : Prop :=
  ∀ n, P2563583935452157826.a n = A392272 n

end A392272

/-! ## A392272.P2351654033362292651

`A387908(A307050(n+1))`
-/

namespace A392272.P2351654033362292651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 (A307050 (n + 1)).toNat

end

end A392272.P2351654033362292651

namespace A392272

/-- `A387908(A307050(n+1))` -/
def P2351654033362292651.Spec : Prop :=
  ∀ n, P2351654033362292651.a n = A392272 n

end A392272

/-!
# A392273: a(n) = Sum_{k=0..floor(n/3)} binomial(k,3*n-9*k).

The programs for A392273, the canonical program `A392273.P11078980793188720100` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392273 has offset 0).

The definition of A392273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392273.P11078980793188720100

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1, a(7)=0, a(8)=0, a(9)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A392273

/-- `3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` -/
def P11078980793188720100.Spec : Prop :=
  ∀ n, P11078980793188720100.a n = A392273 n

theorem P11078980793188720100.correct : P11078980793188720100.Spec := by
  intro n
  simp only [A392273]

end A392273

/-! ## A392273.P15410946697400783007

`A017877(3*n)`
-/

namespace A392273.P15410946697400783007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (3 * n)

end

end A392273.P15410946697400783007

namespace A392273

/-- `A017877(3*n)` -/
def P15410946697400783007.Spec : Prop :=
  ∀ n, P15410946697400783007.a n = A392273 n

end A392273

/-! ## A392273.P9052334554643571435

`A239928(n)^A002203(A035363(n))`
-/

namespace A392273.P9052334554643571435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239928 n : ℚ) ^ (A002203 (A035363 n).toNat : ℤ)

end

end A392273.P9052334554643571435

namespace A392273

/-- `A239928(n)^A002203(A035363(n))` -/
def P9052334554643571435.Spec : Prop :=
  ∀ n, P9052334554643571435.a n = (A392273 n : ℚ)

end A392273

/-! ## A392273.P4135881483947243547

`and(A000069(2*n+1), A304038(A084582(n+5)))`
-/

namespace A392273.P4135881483947243547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000069 (2 * n + 1)) (A304038 (A084582 (n + 5)).toNat)

end

end A392273.P4135881483947243547

namespace A392273

/-- `and(A000069(2*n+1), A304038(A084582(n+5)))` -/
def P4135881483947243547.Spec : Prop :=
  ∀ n, P4135881483947243547.a n = A392273 n

end A392273

/-! ## A392273.P7441713999180904877

`A239928(n)*A268727(A204518(n+1))`
-/

namespace A392273.P7441713999180904877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239928 n * A268727 (A204518 (n + 1)).toNat

end

end A392273.P7441713999180904877

namespace A392273

/-- `A239928(n)*A268727(A204518(n+1))` -/
def P7441713999180904877.Spec : Prop :=
  ∀ n, P7441713999180904877.a n = A392273 n

end A392273

/-!
# A392274: Number of length n words over the alphabet [5] such that any prefix satisfies c(1) >= c(2), c(1) >= c(3), c(2) >= c(4), c(3) >= c(5), and c(4) >= c(5), where c(i) is the number of occurrences of the letter i.

The programs for A392274, there is no canonical definition to state claims against.
-/

/-! ## A392274.P7585879244147939436

`A024417(A149771(n))`
-/

namespace A392274.P7585879244147939436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149771 n).toNat

end

end A392274.P7585879244147939436

/-! ## A392274.P7760636417871558004

`A321018(A363441(n+1))`
-/

namespace A392274.P7760636417871558004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A363441 (n + 1)).toNat

end

end A392274.P7760636417871558004

/-!
# A392275: The maximum exponent in the prime factorization of the smallest number whose cube is divisible by n.

The programs for A392275, the canonical program `A392275.P6230307979190573459` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392275 has offset 1).

The definition of A392275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392275.P6230307979190573459

`ceil(A051903(n+1)/3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A392275

/-- `ceil(A051903(n+1)/3)` -/
def P6230307979190573459.Spec : Prop :=
  ∀ n, P6230307979190573459.a n = A392275 (n + 1)

theorem P6230307979190573459.correct : P6230307979190573459.Spec := by
  intro n
  simp only [A392275, Nat.add_sub_cancel]

end A392275

/-! ## A392275.P14418153660078406711

`A051903(A019555(n+1))`
-/

namespace A392275.P14418153660078406711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A019555 (n + 1)).toNat

end

end A392275.P14418153660078406711

namespace A392275

/-- `A051903(A019555(n+1))` -/
def P14418153660078406711.Spec : Prop :=
  ∀ n, P14418153660078406711.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P15349827896123103501

`A051903(A053149(n+1))/3`
-/

namespace A392275.P15349827896123103501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (A053149 (n + 1)).toNat : ℚ) / 3

end

end A392275.P15349827896123103501

namespace A392275

/-- `A051903(A053149(n+1))/3` -/
def P15349827896123103501.Spec : Prop :=
  ∀ n, P15349827896123103501.a n = (A392275 (n + 1) : ℚ)

end A392275

/-! ## A392275.P6775266836534640535

`floor((A067132(n+1)+1)/3)`
-/

namespace A392275.P6775266836534640535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067132 (n + 1) + 1 : ℚ) / 3⌋

end

end A392275.P6775266836534640535

namespace A392275

/-- `floor((A067132(n+1)+1)/3)` -/
def P6775266836534640535.Spec : Prop :=
  ∀ n, P6775266836534640535.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P7266293281963332366

`A002264(A051903(n+1)+2)`
-/

namespace A392275.P7266293281963332366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A051903 (n + 1) + 2).toNat

end

end A392275.P7266293281963332366

namespace A392275

/-- `A002264(A051903(n+1)+2)` -/
def P7266293281963332366.Spec : Prop :=
  ∀ n, P7266293281963332366.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P14747937860889276258

`A375359((n+1)/A053150(n+1))`
-/

namespace A392275.P14747937860889276258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A053150 (n + 1) : ℚ))).toNat

end

end A392275.P14747937860889276258

namespace A392275

/-- `A375359((n+1)/A053150(n+1))` -/
def P14747937860889276258.Spec : Prop :=
  ∀ n, P14747937860889276258.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P1723705743505560230

`A008621(A007814(n+1))%A178861(n+1)`
-/

namespace A392275.P1723705743505560230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008621 (A007814 (n + 1)).toNat) (A178861 (n + 1))

end

end A392275.P1723705743505560230

namespace A392275

/-- `A008621(A007814(n+1))%A178861(n+1)` -/
def P1723705743505560230.Spec : Prop :=
  ∀ n, P1723705743505560230.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P3097035917005522594

`A069010(A220497(n))`
-/

namespace A392275.P3097035917005522594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A220497 n).toNat

end

end A392275.P3097035917005522594

namespace A392275

/-- `A069010(A220497(n))` -/
def P3097035917005522594.Spec : Prop :=
  ∀ n, P3097035917005522594.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P15018510291807054962

`A355150(A194443(n))`
-/

namespace A392275.P15018510291807054962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (A194443 n).toNat

end

end A392275.P15018510291807054962

namespace A392275

/-- `A355150(A194443(n))` -/
def P15018510291807054962.Spec : Prop :=
  ∀ n, P15018510291807054962.a n = A392275 (n + 1)

end A392275

/-! ## A392275.P484365650815587312

`A355150(A194445(n))`
-/

namespace A392275.P484365650815587312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355150 (A194445 n).toNat

end

end A392275.P484365650815587312

namespace A392275

/-- `A355150(A194445(n))` -/
def P484365650815587312.Spec : Prop :=
  ∀ n, P484365650815587312.a n = A392275 (n + 1)

end A392275

/-!
# A392276: The maximum exponent in the prime factorization of the square root of the largest square dividing n.

The programs for A392276, the canonical program `A392276.P5223539805736873685` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392276 has offset 1).

The definition of A392276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392276.P5223539805736873685

`floor(A051903(n+1)/2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A392276

/-- `floor(A051903(n+1)/2)` -/
def P5223539805736873685.Spec : Prop :=
  ∀ n, P5223539805736873685.a n = A392276 (n + 1)

theorem P5223539805736873685.correct : P5223539805736873685.Spec := by
  intro n
  simp only [A392276, Nat.add_sub_cancel]

end A392276

/-! ## A392276.P16753283500768106537

`A051903(A000188(n+1))`
-/

namespace A392276.P16753283500768106537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000188 (n + 1)).toNat

end

end A392276.P16753283500768106537

namespace A392276

/-- `A051903(A000188(n+1))` -/
def P16753283500768106537.Spec : Prop :=
  ∀ n, P16753283500768106537.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P14280053380641311018

`A051903(A008833(n+1))/2`
-/

namespace A392276.P14280053380641311018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (A008833 (n + 1)).toNat : ℚ) / 2

end

end A392276.P14280053380641311018

namespace A392276

/-- `A051903(A008833(n+1))/2` -/
def P14280053380641311018.Spec : Prop :=
  ∀ n, P14280053380641311018.a n = (A392276 (n + 1) : ℚ)

end A392276

/-! ## A392276.P14305464390495861878

`A372602(n+1)/2`
-/

namespace A392276.P14305464390495861878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372602 (n + 1) : ℚ) / 2

end

end A392276.P14305464390495861878

namespace A392276

/-- `A372602(n+1)/2` -/
def P14305464390495861878.Spec : Prop :=
  ∀ n, P14305464390495861878.a n = (A392276 (n + 1) : ℚ)

end A392276

/-! ## A392276.P4233564809241091256

`val(A046523(n+1), 4)`
-/

namespace A392276.P4233564809241091256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (n + 1)).toNat 4

end

end A392276.P4233564809241091256

namespace A392276

/-- `val(A046523(n+1), 4)` -/
def P4233564809241091256.Spec : Prop :=
  ∀ n, (P4233564809241091256.a n : ℤ) = A392276 (n + 1)

end A392276

/-! ## A392276.P9541133425983454842

`val(A212173(n+1), 4)`
-/

namespace A392276.P9541133425983454842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A212173 (n + 1)).toNat 4

end

end A392276.P9541133425983454842

namespace A392276

/-- `val(A212173(n+1), 4)` -/
def P9541133425983454842.Spec : Prop :=
  ∀ n, (P9541133425983454842.a n : ℤ) = A392276 (n + 1)

end A392276

/-! ## A392276.P3608751722791311129

`val(A328400(n+1), 4)`
-/

namespace A392276.P3608751722791311129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (n + 1)).toNat 4

end

end A392276.P3608751722791311129

namespace A392276

/-- `val(A328400(n+1), 4)` -/
def P3608751722791311129.Spec : Prop :=
  ∀ n, (P3608751722791311129.a n : ℤ) = A392276 (n + 1)

end A392276

/-! ## A392276.P5583685198084265700

`val(A359600(n+1), 9)`
-/

namespace A392276.P5583685198084265700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359600 (n + 1)).toNat 9

end

end A392276.P5583685198084265700

namespace A392276

/-- `val(A359600(n+1), 9)` -/
def P5583685198084265700.Spec : Prop :=
  ∀ n, (P5583685198084265700.a n : ℤ) = A392276 (n + 1)

end A392276

/-! ## A392276.P10350400253744253486

`A004526(A051903(n+1))`
-/

namespace A392276.P10350400253744253486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A051903 (n + 1)).toNat

end

end A392276.P10350400253744253486

namespace A392276

/-- `A004526(A051903(n+1))` -/
def P10350400253744253486.Spec : Prop :=
  ∀ n, P10350400253744253486.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P1980208245061029065

`A375359(A008833(n+1))`
-/

namespace A392276.P1980208245061029065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A008833 (n + 1)).toNat

end

end A392276.P1980208245061029065

namespace A392276

/-- `A375359(A008833(n+1))` -/
def P1980208245061029065.Spec : Prop :=
  ∀ n, P1980208245061029065.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P5531418688026704656

`A110654(A372602(n+1))`
-/

namespace A392276.P5531418688026704656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A372602 (n + 1)).toNat

end

end A392276.P5531418688026704656

namespace A392276

/-- `A110654(A372602(n+1))` -/
def P5531418688026704656.Spec : Prop :=
  ∀ n, P5531418688026704656.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P10578469746696658855

`A375359(A000188(n+1)²)`
-/

namespace A392276.P10578469746696658855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A000188 (n + 1) ^ 2).toNat

end

end A392276.P10578469746696658855

namespace A392276

/-- `A375359(A000188(n+1)²)` -/
def P10578469746696658855.Spec : Prop :=
  ∀ n, P10578469746696658855.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P15497678600831473595

`A051903(n+1)-A375359(n+1)`
-/

namespace A392276.P15497678600831473595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A375359 (n + 1)

end

end A392276.P15497678600831473595

namespace A392276

/-- `A051903(n+1)-A375359(n+1)` -/
def P15497678600831473595.Spec : Prop :=
  ∀ n, P15497678600831473595.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P4538495773758363330

`val(A073039(n+1), 4)`
-/

namespace A392276.P4538495773758363330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073039 (n + 1)).toNat 4

end

end A392276.P4538495773758363330

namespace A392276

/-- `val(A073039(n+1), 4)` -/
def P4538495773758363330.Spec : Prop :=
  ∀ n, (P4538495773758363330.a n : ℤ) = A392276 (n + 1)

end A392276

/-! ## A392276.P11540358059359058997

`A375359(A295658((n+1)²))`
-/

namespace A392276.P11540358059359058997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A295658 ((n + 1) ^ 2)).toNat

end

end A392276.P11540358059359058997

namespace A392276

/-- `A375359(A295658((n+1)²))` -/
def P11540358059359058997.Spec : Prop :=
  ∀ n, P11540358059359058997.a n = A392276 (n + 1)

end A392276

/-! ## A392276.P10608039399749134580

`A375359((n+1)²)-A375359(n+1)`
-/

namespace A392276.P10608039399749134580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 ((n + 1) ^ 2) - A375359 (n + 1)

end

end A392276.P10608039399749134580

namespace A392276

/-- `A375359((n+1)²)-A375359(n+1)` -/
def P10608039399749134580.Spec : Prop :=
  ∀ n, P10608039399749134580.a n = A392276 (n + 1)

end A392276

/-!
# A392277: 

The programs for A392277, there is no canonical definition to state claims against.
-/

/-! ## A392277.P7607711306588657949

`floor(A051903(n+1)/3)`
-/

namespace A392277.P7607711306588657949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 3⌋

end

end A392277.P7607711306588657949

/-! ## A392277.P7631200085309531290

`A051903(A053150(n+1))`
-/

namespace A392277.P7631200085309531290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A053150 (n + 1)).toNat

end

end A392277.P7631200085309531290

/-! ## A392277.P1194395534602126606

`A051903(A008834(n+1))/3`
-/

namespace A392277.P1194395534602126606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (A008834 (n + 1)).toNat : ℚ) / 3

end

end A392277.P1194395534602126606

/-! ## A392277.P8227381735902598428

`val(A046523(n+1), 8)`
-/

namespace A392277.P8227381735902598428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (n + 1)).toNat 8

end

end A392277.P8227381735902598428

/-! ## A392277.P15288047650461591183

`A051900(n)%A061704(n+1)`
-/

namespace A392277.P15288047650461591183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051900 n) (A061704 (n + 1))

end

end A392277.P15288047650461591183

/-! ## A392277.P10539724182667207017

`A048694(n)%A061704(n+1)`
-/

namespace A392277.P10539724182667207017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048694 n) (A061704 (n + 1))

end

end A392277.P10539724182667207017

/-! ## A392277.P12511559225797754864

`A077242(n)%A061704(n+1)`
-/

namespace A392277.P12511559225797754864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077242 n) (A061704 (n + 1))

end

end A392277.P12511559225797754864

/-! ## A392277.P7263389738714483051

`val(A073039(n+1), 8)`
-/

namespace A392277.P7263389738714483051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A073039 (n + 1)).toNat 8

end

end A392277.P7263389738714483051

/-! ## A392277.P9198493811342851582

`A062737(A367620(n+1))%A061704(n+1)`
-/

namespace A392277.P9198493811342851582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062737 (A367620 (n + 1)).toNat) (A061704 (n + 1))

end

end A392277.P9198493811342851582

/-! ## A392277.P5269893719807266007

`A022184(n)%A061704(n+1)`
-/

namespace A392277.P5269893719807266007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022184 n) (A061704 (n + 1))

end

end A392277.P5269893719807266007

/-! ## A392277.P13570247669663360473

`A025235(n)%A061704(n+1)`
-/

namespace A392277.P13570247669663360473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025235 n) (A061704 (n + 1))

end

end A392277.P13570247669663360473

/-! ## A392277.P1904248399787682152

`∑{d}[n+1, A080953(#-1)*A366123((n+1)/#)]`
-/

namespace A392277.P1904248399787682152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080953 (d - 1) * A366123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392277.P1904248399787682152

/-! ## A392277.P8402012939456765516

`A033566(A194399(n+1))%A061704(n+1)`
-/

namespace A392277.P8402012939456765516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033566 (A194399 (n + 1)).toNat) (A061704 (n + 1))

end

end A392277.P8402012939456765516

/-! ## A392277.P7351060883809347121

`A000040(A194399(n+3))%A061704(n+1)`
-/

namespace A392277.P7351060883809347121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A194399 (n + 3)).toNat) (A061704 (n + 1))

end

end A392277.P7351060883809347121

/-! ## A392277.P13193629771957425672

`∑{d}[n+1, A076710(#-1)*A366123((n+1)/#)]`
-/

namespace A392277.P13193629771957425672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076710 (d - 1) * A366123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392277.P13193629771957425672

/-! ## A392277.P13938914313474965994

`A338974(n)%A061704(n+1)`
-/

namespace A392277.P13938914313474965994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338974 n) (A061704 (n + 1))

end

end A392277.P13938914313474965994

/-!
# A392278: The maximum exponent in the prime factorization of the smallest multiple of n that is an exponentially squarefree number.

The programs for A392278, there is no canonical definition to state claims against.
-/

/-! ## A392278.P5625323097585873196

`A051903(A365684(n+1))`
-/

namespace A392278.P5625323097585873196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A365684 (n + 1)).toNat

end

end A392278.P5625323097585873196

/-! ## A392278.P15333657719399343616

`A386468(A365684(2*n+1-n))`
-/

namespace A392278.P15333657719399343616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386468 (A365684 (2 * n + 1 - n)).toNat

end

end A392278.P15333657719399343616

/-! ## A392278.P6264635327654100929

`or(A051903(n+1), A354996(A219282(n)))`
-/

namespace A392278.P6264635327654100929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (n + 1)) (A354996 (A219282 n).toNat)

end

end A392278.P6264635327654100929

/-! ## A392278.P16056769264099776247

`or(A051903(n+1), A354996(A213383(n+2)))`
-/

namespace A392278.P16056769264099776247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051903 (n + 1)) (A354996 (A213383 (n + 2)).toNat)

end

end A392278.P16056769264099776247

/-! ## A392278.P8891098212969881601

`A113730(A000688(n+1))%A115761(3*n+1)`
-/

namespace A392278.P8891098212969881601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113730 (A000688 (n + 1)).toNat) (A115761 (3 * n + 1))

end

end A392278.P8891098212969881601

/-!
# A392280: The maximum exponent in the prime factorization of the smallest multiple of n whose prime factorization exponents are all powers of 2.

The programs for A392280, there is no canonical definition to state claims against.
-/

/-! ## A392280.P6297109615180636612

`A051903(A356194(n+1))`
-/

namespace A392280.P6297109615180636612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A356194 (n + 1)).toNat

end

end A392280.P6297109615180636612

/-! ## A392280.P2238331727437911252

`A368781(A356194(2*n+1-n))`
-/

namespace A392280.P2238331727437911252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (A356194 (2 * n + 1 - n)).toNat

end

end A392280.P2238331727437911252

/-! ## A392280.P15623644036450585101

`A368781(A102631(n+1))`
-/

namespace A392280.P15623644036450585101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (A102631 (n + 1)).toNat

end

end A392280.P15623644036450585101

/-! ## A392280.P956351630009911289

`A051903(n+1)+A051903(A365297(n+1)+A165560(n²))`
-/

namespace A392280.P956351630009911289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A051903 (A365297 (n + 1) + A165560 (n ^ 2)).toNat

end

end A392280.P956351630009911289

/-! ## A392280.P2535540238498080411

`A053644(A372601((n+1)²))`
-/

namespace A392280.P2535540238498080411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A372601 ((n + 1) ^ 2)).toNat

end

end A392280.P2535540238498080411

/-! ## A392280.P5915543609138007756

`A368781(A350390((n+1)²))`
-/

namespace A392280.P5915543609138007756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (A350390 ((n + 1) ^ 2)).toNat

end

end A392280.P5915543609138007756

/-! ## A392280.P13914223931453086144

`A053644(A053644(A372601((n+1)*(n+1))))`
-/

namespace A392280.P13914223931453086144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A053644 (A372601 ((n + 1) * (n + 1))).toNat).toNat

end

end A392280.P13914223931453086144

/-! ## A392280.P17574772578176463893

`A368781(A270436(n+1))`
-/

namespace A392280.P17574772578176463893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368781 (A270436 (n + 1)).toNat

end

end A392280.P17574772578176463893

/-!
# A392281: a(n) = log_2(A392280(n)).

The programs for A392281, the canonical program `A392281.P15155535942076632488` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392281 has offset 2).

The definition of A392281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392281.P15155535942076632488

`A029837(A051903(n+2))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A392281

/-- `A029837(A051903(n+2))` -/
def P15155535942076632488.Spec : Prop :=
  ∀ n, P15155535942076632488.a n = A392281 (n + 2)

theorem P15155535942076632488.correct : P15155535942076632488.Spec := by
  intro n
  simp only [A392281, Nat.add_sub_cancel]

end A392281

/-! ## A392281.P6805196790114589237

`log2(A392280(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392281.P6805196790114589237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A392280 (n + 2) : ℝ)

end

end A392281.P6805196790114589237

namespace A392281

/-- `log2(A392280(n+2))` -/
def P6805196790114589237.Spec : Prop :=
  ∀ n, P6805196790114589237.a n = (A392281 (n + 2) : ℝ)

end A392281

/-! ## A392281.P9536040921800571239

`A007814(A051903(A356194(n+2)))`
-/

namespace A392281.P9536040921800571239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051903 (A356194 (n + 2)).toNat).toNat

end

end A392281.P9536040921800571239

namespace A392281

/-- `A007814(A051903(A356194(n+2)))` -/
def P9536040921800571239.Spec : Prop :=
  ∀ n, P9536040921800571239.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P13487075056190066876

`ceil(log2(Δ[A129132(n+1)]))`
-/

namespace A392281.P13487075056190066876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (f1 (n + 1) - f1 n : ℝ)⌉

end

end A392281.P13487075056190066876

namespace A392281

/-- `ceil(log2(Δ[A129132(n+1)]))` -/
def P13487075056190066876.Spec : Prop :=
  ∀ n, P13487075056190066876.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P16915484448975236324

`A029837(A066301(n+2)+1)`
-/

namespace A392281.P16915484448975236324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A066301 (n + 2) + 1).toNat

end

end A392281.P16915484448975236324

namespace A392281

/-- `A029837(A066301(n+2)+1)` -/
def P16915484448975236324.Spec : Prop :=
  ∀ n, P16915484448975236324.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P6541935604498842317

`A066301(2*A392280(n+2))`
-/

namespace A392281.P6541935604498842317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (2 * A392280 (n + 2)).toNat

end

end A392281.P6541935604498842317

namespace A392281

/-- `A066301(2*A392280(n+2))` -/
def P6541935604498842317.Spec : Prop :=
  ∀ n, P6541935604498842317.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P1304490764294943580

`A049087(A124859(n+2))`
-/

namespace A392281.P1304490764294943580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A124859 (n + 2)).toNat

end

end A392281.P1304490764294943580

namespace A392281

/-- `A049087(A124859(n+2))` -/
def P1304490764294943580.Spec : Prop :=
  ∀ n, P1304490764294943580.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P1859620492002828409

`A066301(A392280((n+2)²))`
-/

namespace A392281.P1859620492002828409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A392280 ((n + 2) ^ 2)).toNat

end

end A392281.P1859620492002828409

namespace A392281

/-- `A066301(A392280((n+2)²))` -/
def P1859620492002828409.Spec : Prop :=
  ∀ n, P1859620492002828409.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P12837268795363834306

`A056239(A051903(n+2))*A318809(n+1)`
-/

namespace A392281.P12837268795363834306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A051903 (n + 2)).toNat * A318809 (n + 1)

end

end A392281.P12837268795363834306

namespace A392281

/-- `A056239(A051903(n+2))*A318809(n+1)` -/
def P12837268795363834306.Spec : Prop :=
  ∀ n, P12837268795363834306.a n = A392281 (n + 2)

end A392281

/-! ## A392281.P6067329180074125931

`A058062(A037291(n+2))`
-/

namespace A392281.P6067329180074125931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058062 (A037291 (n + 2)).toNat

end

end A392281.P6067329180074125931

namespace A392281

/-- `A058062(A037291(n+2))` -/
def P6067329180074125931.Spec : Prop :=
  ∀ n, P6067329180074125931.a n = A392281 (n + 2)

end A392281

/-!
# A392285: a(n) = omega(n) * (-1)^(bigomega(n) + 1).

The programs for A392285, the canonical program `A392285.P2958692523418785165` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392285 has offset 1).

The definition of A392285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392285.P2958692523418785165

`A001221(n+1)*(-1)^A073093(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A392285

/-- `A001221(n+1)*(-1)^A073093(n+1)` -/
def P2958692523418785165.Spec : Prop :=
  ∀ n, P2958692523418785165.a n = (A392285 (n + 1) : ℚ)

end A392285

/-! ## A392285.P14336393094200423612

`A001221(n+1)*(-1)^(A001222(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392285.P14336393094200423612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) * (-1 : ℚ) ^ (A001222 (n + 1) + 1 : ℤ)

end

end A392285.P14336393094200423612

namespace A392285

/-- `A001221(n+1)*(-1)^(A001222(n+1)+1)` -/
def P14336393094200423612.Spec : Prop :=
  ∀ n, P14336393094200423612.a n = (A392285 (n + 1) : ℚ)

end A392285

/-! ## A392285.P18432983926789937022

`∑{d}[n+1, A008836(#)*A010051((n+1)/#)]`
-/

namespace A392285.P18432983926789937022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P18432983926789937022

namespace A392285

/-- `∑{d}[n+1, A008836(#)*A010051((n+1)/#)]` -/
def P18432983926789937022.Spec : Prop :=
  ∀ n, P18432983926789937022.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P2559892284711711093

`∑{d}[n+1, A001221(#)*A158522((n+1)/#)]`
-/

namespace A392285.P2559892284711711093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P2559892284711711093

namespace A392285

/-- `∑{d}[n+1, A001221(#)*A158522((n+1)/#)]` -/
def P2559892284711711093.Spec : Prop :=
  ∀ n, P2559892284711711093.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P13964212243372927824

`∑{d}[n+1, A007427(#)*A345345((n+1)/#)]`
-/

namespace A392285.P13964212243372927824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A345345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P13964212243372927824

namespace A392285

/-- `∑{d}[n+1, A007427(#)*A345345((n+1)/#)]` -/
def P13964212243372927824.Spec : Prop :=
  ∀ n, P13964212243372927824.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P10014883997756637285

`∑{d}[n+1, A008683(#)*A358769((n+1)/#)]`
-/

namespace A392285.P10014883997756637285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A358769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P10014883997756637285

namespace A392285

/-- `∑{d}[n+1, A008683(#)*A358769((n+1)/#)]` -/
def P10014883997756637285.Spec : Prop :=
  ∀ n, P10014883997756637285.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P12138639955722455685

`∑{d}[n+1, A062799(#)*A326415((n+1)/#)]`
-/

namespace A392285.P12138639955722455685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P12138639955722455685

namespace A392285

/-- `∑{d}[n+1, A062799(#)*A326415((n+1)/#)]` -/
def P12138639955722455685.Spec : Prop :=
  ∀ n, P12138639955722455685.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P5032190879387221058

`∑{d}[n+1, A069359(#)*A323363((n+1)/#)]`
-/

namespace A392285.P5032190879387221058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069359 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P5032190879387221058

namespace A392285

/-- `∑{d}[n+1, A069359(#)*A323363((n+1)/#)]` -/
def P5032190879387221058.Spec : Prop :=
  ∀ n, P5032190879387221058.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P789398555783739764

`∑{d}[n+1, A166698(#)*A304438((n+1)/#)]`
-/

namespace A392285.P789398555783739764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166698 d * A304438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P789398555783739764

namespace A392285

/-- `∑{d}[n+1, A166698(#)*A304438((n+1)/#)]` -/
def P789398555783739764.Spec : Prop :=
  ∀ n, P789398555783739764.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P6643601205306204827

`∑{d}[n+1, A238950(#)*A378453((n+1)/#)]`
-/

namespace A392285.P6643601205306204827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238950 d * A378453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P6643601205306204827

namespace A392285

/-- `∑{d}[n+1, A238950(#)*A378453((n+1)/#)]` -/
def P6643601205306204827.Spec : Prop :=
  ∀ n, P6643601205306204827.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P12110695021965457478

`∑{d}[n+1, A322078(#)*A328639((n+1)/#)]`
-/

namespace A392285.P12110695021965457478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322078 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P12110695021965457478

namespace A392285

/-- `∑{d}[n+1, A322078(#)*A328639((n+1)/#)]` -/
def P12110695021965457478.Spec : Prop :=
  ∀ n, P12110695021965457478.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P7977587592311060108

`∑{d}[n+1, A328640(#)*A351242((n+1)/#)]`
-/

namespace A392285.P7977587592311060108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328640 d * A351242 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P7977587592311060108

namespace A392285

/-- `∑{d}[n+1, A328640(#)*A351242((n+1)/#)]` -/
def P7977587592311060108.Spec : Prop :=
  ∀ n, P7977587592311060108.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P1699942053773662506

`∑{d}[n+1, A347092(#)*A347134((n+1)/#)]`
-/

namespace A392285.P1699942053773662506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347092 d * A347134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A392285.P1699942053773662506

namespace A392285

/-- `∑{d}[n+1, A347092(#)*A347134((n+1)/#)]` -/
def P1699942053773662506.Spec : Prop :=
  ∀ n, P1699942053773662506.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P1597276647248791613

`(A002819(n)-A002819(n+1))*A001221(n+1)`
-/

namespace A392285.P1597276647248791613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002819 n - A002819 (n + 1)) * A001221 (n + 1)

end

end A392285.P1597276647248791613

namespace A392285

/-- `(A002819(n)-A002819(n+1))*A001221(n+1)` -/
def P1597276647248791613.Spec : Prop :=
  ∀ n, P1597276647248791613.a n = A392285 (n + 1)

end A392285

/-! ## A392285.P14195356037707750417

`A001221(n+1)*A008836(2*(n+1))`
-/

namespace A392285.P14195356037707750417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A008836 (2 * (n + 1))

end

end A392285.P14195356037707750417

namespace A392285

/-- `A001221(n+1)*A008836(2*(n+1))` -/
def P14195356037707750417.Spec : Prop :=
  ∀ n, P14195356037707750417.a n = A392285 (n + 1)

end A392285

/-!
# A392286: a(n) = Sum_{k=1..n} binomial(n+1, k+1)*A000272(k).

The programs for A392286, there is no canonical definition to state claims against.
-/

/-! ## A392286.P8184568580585956198

`2*a(n-1)-a(n-2)+A088957(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A392286.P8184568580585956198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + A088957 (n - 1)

end

end A392286.P8184568580585956198

/-! ## A392286.P17095035029706112654

`∑[A270593(n)]`
-/

namespace A392286.P17095035029706112654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392286.P17095035029706112654

/-!
# A392287: Number of distinct descendants of [1] in the n-th degree, where a list L has two children: L with a 1 appended; L + (L reversed).

The programs for A392287, there is no canonical definition to state claims against.
-/

/-! ## A392287.P4516086926213517021

`A195120(A267210(n+1))`
-/

namespace A392287.P4516086926213517021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A267210 (n + 1)).toNat

end

end A392287.P4516086926213517021

/-! ## A392287.P14866273504629237414

`A000079(n)-A124767(A165877(n))`
-/

namespace A392287.P14866273504629237414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A124767 (A165877 n).toNat

end

end A392287.P14866273504629237414

/-! ## A392287.P9542437197201128904

`A251760(A045918(n))`
-/

namespace A392287.P9542437197201128904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (A045918 n).toNat

end

end A392287.P9542437197201128904

/-! ## A392287.P13174981949205270736

`A251760(A047842(n))`
-/

namespace A392287.P13174981949205270736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (A047842 n).toNat

end

end A392287.P13174981949205270736

/-! ## A392287.P14415404805214477184

`A251760(A097598(n))`
-/

namespace A392287.P14415404805214477184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251760 (A097598 n).toNat

end

end A392287.P14415404805214477184

/-!
# A392288: Nonsquarefree numbers whose canonical prime factorization has at least two prime power factors with equal exponents.

The programs for A392288, the canonical program `A392288.P4097606183012622653` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392288 has offset 1).

The definition of A392288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392288.P4097606183012622653

`∩[A013929(n+1), A130092(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A392288

/-- `∩[A013929(n+1), A130092(n+1)]` -/
def P4097606183012622653.Spec : Prop :=
  ∀ n, (P4097606183012622653.a n : ℤ) = A392288 (n + 1)

theorem P4097606183012622653.correct : P4097606183012622653.Spec := by
  intro n
  simp only [A392288, Nat.add_sub_cancel]

end A392288

/-! ## A392288.P13652243630552635466

`∩[A049199(n+1), A130092(n+1)]`
-/

namespace A392288.P13652243630552635466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P13652243630552635466

namespace A392288

/-- `∩[A049199(n+1), A130092(n+1)]` -/
def P13652243630552635466.Spec : Prop :=
  ∀ n, (P13652243630552635466.a n : ℤ) = A392288 (n + 1)

end A392288

/-! ## A392288.P16882601396195267608

`∩[A062171(n+1), A130092(n+1)]`
-/

namespace A392288.P16882601396195267608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P16882601396195267608

namespace A392288

/-- `∩[A062171(n+1), A130092(n+1)]` -/
def P16882601396195267608.Spec : Prop :=
  ∀ n, (P16882601396195267608.a n : ℤ) = A392288 (n + 1)

end A392288

/-! ## A392288.P17955252137840708014

`∩[A080756(n+1), A130092(n+1)]`
-/

namespace A392288.P17955252137840708014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P17955252137840708014

namespace A392288

/-- `∩[A080756(n+1), A130092(n+1)]` -/
def P17955252137840708014.Spec : Prop :=
  ∀ n, (P17955252137840708014.a n : ℤ) = A392288 (n + 1)

end A392288

/-! ## A392288.P7809910940273138298

`∩[A126706(n+1), A130092(n+1)]`
-/

namespace A392288.P7809910940273138298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P7809910940273138298

namespace A392288

/-- `∩[A126706(n+1), A130092(n+1)]` -/
def P7809910940273138298.Spec : Prop :=
  ∀ n, (P7809910940273138298.a n : ℤ) = A392288 (n + 1)

end A392288

/-! ## A392288.P16828845603460464382

`∩[A130092(n+1), A162966(n+1)]`
-/

namespace A392288.P16828845603460464382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P16828845603460464382

namespace A392288

/-- `∩[A130092(n+1), A162966(n+1)]` -/
def P16828845603460464382.Spec : Prop :=
  ∀ n, (P16828845603460464382.a n : ℤ) = A392288 (n + 1)

end A392288

/-! ## A392288.P10976061282220232418

`∩[A130092(n+1), A363597(n+1)]`
-/

namespace A392288.P10976061282220232418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P10976061282220232418

namespace A392288

/-- `∩[A130092(n+1), A363597(n+1)]` -/
def P10976061282220232418.Spec : Prop :=
  ∀ n, (P10976061282220232418.a n : ℤ) = A392288 (n + 1)

end A392288

/-! ## A392288.P13580704143647905444

`∩[A130092(n+1), A376271(n+1)]`
-/

namespace A392288.P13580704143647905444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392288.P13580704143647905444

namespace A392288

/-- `∩[A130092(n+1), A376271(n+1)]` -/
def P13580704143647905444.Spec : Prop :=
  ∀ n, (P13580704143647905444.a n : ℤ) = A392288 (n + 1)

end A392288

/-!
# A392291: List of all possible composition numbers of graphs.

The programs for A392291, there is no canonical definition to state claims against.
-/

/-! ## A392291.P13650715065079433781

`∑[A101211(A103371(3*n))]`
-/

namespace A392291.P13650715065079433781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101211 (A103371 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392291.P13650715065079433781

/-!
# A392292: Composition numbers of biconnected graphs.

The programs for A392292, there is no canonical definition to state claims against.
-/

/-! ## A392292.P2417484080867026236

`A392293(A043315(n+1))`
-/

namespace A392292.P2417484080867026236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392293 (A043315 (n + 1)).toNat

end

end A392292.P2417484080867026236

/-! ## A392292.P5077395020013582523

`A392293(A044912(n+1))`
-/

namespace A392292.P5077395020013582523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392293 (A044912 (n + 1)).toNat

end

end A392292.P5077395020013582523

/-! ## A392292.P16816418781965710521

`A392293(A055649(n+1))`
-/

namespace A392292.P16816418781965710521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392293 (A055649 (n + 1)).toNat

end

end A392292.P16816418781965710521

/-! ## A392292.P10567033059624527615

`A392293(A061378(n+1))`
-/

namespace A392292.P10567033059624527615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392293 (A061378 (n + 1)).toNat

end

end A392292.P10567033059624527615

/-! ## A392292.P6785558639325239892

`A392293(A062399(n+1))`
-/

namespace A392292.P6785558639325239892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392293 (A062399 (n + 1)).toNat

end

end A392292.P6785558639325239892

/-!
# A392293: Primitive terms of A392291.

The programs for A392293, there is no canonical definition to state claims against.
-/

/-! ## A392293.P498304090372340798

`∩[A028785(n+1), A392292(n+1)]`
-/

namespace A392293.P498304090372340798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392293.P498304090372340798

/-!
# A392299: Primes p such that Pi_{5,2}(p) + Pi_{5,3}(p) - Pi_{5,1}(p) - Pi_{5,4}(p) = 3, where Pi_{m,n}(p) denotes the number of primes q <= p with q == n (mod m).

The programs for A392299, there is no canonical definition to state claims against.
-/

/-! ## A392299.P2970471432214769047

`filter[A038613(2*n+1), A137161(#)]`
-/

namespace A392299.P2970471432214769047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137161 (f1 j).toNat = 1) n)

end

end A392299.P2970471432214769047

/-! ## A392299.P9708205488599574086

`∩[A020633(n+1), A324929(n+1)]`
-/

namespace A392299.P9708205488599574086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392299.P9708205488599574086

/-! ## A392299.P2681634080958688713

`∩[A020633(n+1), A372439(n+1)]`
-/

namespace A392299.P2681634080958688713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392299.P2681634080958688713

/-! ## A392299.P5029404482513930337

`∩[A233518(n+1), A324929(n+1)]`
-/

namespace A392299.P5029404482513930337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392299.P5029404482513930337

/-! ## A392299.P9760530167768132626

`∩[A233518(n+1), A372439(n+1)]`
-/

namespace A392299.P9760530167768132626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392299.P9760530167768132626

