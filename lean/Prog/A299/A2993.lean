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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A299300: Values of k such that A065358(k-1) = 0.

The programs for A299300, there is no canonical definition to state claims against.
-/

/-! ## A299300.P3252378507527550644

`A064940(1+n)+1`
-/

namespace A299300.P3252378507527550644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064940 (1 + n) + 1

end

end A299300.P3252378507527550644

/-! ## A299300.P8390486662707362646

`eq[1, A278603(n)]`
-/

namespace A299300.P8390486662707362646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299300.P8390486662707362646

/-! ## A299300.P908967777300697014

`lt[A065358(n)², 1]+1`
-/

namespace A299300.P908967777300697014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A299300.P908967777300697014

/-! ## A299300.P15571061310638981882

`filter[2*n+1, A278603(#)]`
-/

namespace A299300.P15571061310638981882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A278603 (f1 j) = 1) n)

end

end A299300.P15571061310638981882

/-! ## A299300.P11954044024794349203

`A004442(A064940(n+1))`
-/

namespace A299300.P11954044024794349203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A064940 (n + 1)).toNat

end

end A299300.P11954044024794349203

/-! ## A299300.P378454495186929873

`eq[A065357(n), A065358(n)]`
-/

namespace A299300.P378454495186929873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A299300.P378454495186929873

/-! ## A299300.P1388280302769391647

`eq[A001281(n), A131808(n)]+1`
-/

namespace A299300.P1388280302769391647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299300.P1388280302769391647

/-! ## A299300.P7141475748546271460

`eq[A006370(n), A131808(n)]+1`
-/

namespace A299300.P7141475748546271460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299300.P7141475748546271460

/-! ## A299300.P17988789939139162501

`eq[A014682(n), A131808(n)]+1`
-/

namespace A299300.P17988789939139162501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299300.P17988789939139162501

/-!
# A299301: Partial sums of A300000.

The programs for A299301, there is no canonical definition to state claims against.
-/

/-! ## A299301.P13172044863670326878

`∑[A300000(1+n)]`
-/

namespace A299301.P13172044863670326878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P13172044863670326878

/-! ## A299301.P9128113606044169743

`∑[record[A300000(A116549(n))]]`
-/

namespace A299301.P9128113606044169743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P9128113606044169743

/-! ## A299301.P11306184750688827312

`∑[record[A300000(A133310(n))]]`
-/

namespace A299301.P11306184750688827312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P11306184750688827312

/-! ## A299301.P12862138948276609078

`∑[record[A300000(A137734(n))]]`
-/

namespace A299301.P12862138948276609078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P12862138948276609078

/-! ## A299301.P5818687883941490283

`∑[record[A300000(A137735(n))]]`
-/

namespace A299301.P5818687883941490283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300000 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299301.P5818687883941490283

/-!
# A299302: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299302, there is no canonical definition to state claims against.
-/

/-! ## A299302.P17379011737580788962

`A299307(∑[4*n]+1)`
-/

namespace A299302.P17379011737580788962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299302.P17379011737580788962

/-! ## A299302.P4654034096310773329

`record[A299307(Δ[A235355(n)])]`
-/

namespace A299302.P4654034096310773329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299302.P4654034096310773329

/-! ## A299302.P11163338405626581916

`record[A299307(A330613(n+1))]`
-/

namespace A299302.P11163338405626581916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299302.P11163338405626581916

/-! ## A299302.P4432585313731610492

`record[A003982(n)*A299307(n+1)]`
-/

namespace A299302.P4432585313731610492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299302.P4432585313731610492

/-!
# A299303: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299303, there is no canonical definition to state claims against.
-/

/-! ## A299303.P9063593286196384008

`A299307(A374004(n+1))`
-/

namespace A299303.P9063593286196384008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374004 (n + 1)).toNat

end

end A299303.P9063593286196384008

/-! ## A299303.P14915121932313306759

`A299307(A141214(n+1))`
-/

namespace A299303.P14915121932313306759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A141214 (n + 1)).toNat

end

end A299303.P14915121932313306759

/-!
# A299304: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299304, there is no canonical definition to state claims against.
-/

/-! ## A299304.P6910758619643614838

`A299307(A374005(n+1))`
-/

namespace A299304.P6910758619643614838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374005 (n + 1)).toNat

end

end A299304.P6910758619643614838

/-!
# A299305: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299305, there is no canonical definition to state claims against.
-/

/-! ## A299305.P2262690831495471993

`A299307(A374007(1+n))`
-/

namespace A299305.P2262690831495471993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374007 (1 + n)).toNat

end

end A299305.P2262690831495471993

/-!
# A299306: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299306, there is no canonical definition to state claims against.
-/

/-! ## A299306.P5473299300878074442

`A299307(A374008(n+1))`
-/

namespace A299306.P5473299300878074442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299307 (A374008 (n + 1)).toNat

end

end A299306.P5473299300878074442

/-!
# A299308: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299308, there is no canonical definition to state claims against.
-/

/-! ## A299308.P14297605674384823129

`A299314(∑[4*n]+1)`
-/

namespace A299308.P14297605674384823129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299308.P14297605674384823129

/-! ## A299308.P15360919371555880824

`record[A299314(Δ[A235355(n)])]`
-/

namespace A299308.P15360919371555880824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299308.P15360919371555880824

/-! ## A299308.P9152956217055810640

`record[A299314(A330613(n+1))]`
-/

namespace A299308.P9152956217055810640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299308.P9152956217055810640

/-! ## A299308.P17360050650521466881

`record[A299314(Δ[A079824(n+1)])]`
-/

namespace A299308.P17360050650521466881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299308.P17360050650521466881

/-!
# A299309: Number of nX3 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299309, there is no canonical definition to state claims against.
-/

/-! ## A299309.P18344259593618605045

`A299314(∑[n+2]+4)`
-/

namespace A299309.P18344259593618605045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299309.P18344259593618605045

/-! ## A299309.P11311472392863827684

`record[A112295(n)*A299314(n+4)]`
-/

namespace A299309.P11311472392863827684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112295 n * A299314 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299309.P11311472392863827684

/-! ## A299309.P5332094472775600787

`record[gcd(A299314(n+1), A303913(n))]`
-/

namespace A299309.P5332094472775600787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299314 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299309.P5332094472775600787

/-!
# A299310: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299310, there is no canonical definition to state claims against.
-/

/-! ## A299310.P794085358407951375

`A299314(∑[n+3]+7)`
-/

namespace A299310.P794085358407951375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299310.P794085358407951375

/-!
# A299311: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299311, there is no canonical definition to state claims against.
-/

/-! ## A299311.P2763627841800682018

`A299314(A374005(n+1))`
-/

namespace A299311.P2763627841800682018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A374005 (n + 1)).toNat

end

end A299311.P2763627841800682018

/-!
# A299312: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299312, there is no canonical definition to state claims against.
-/

/-! ## A299312.P17537301116814813783

`A299314(A374007(n+1))`
-/

namespace A299312.P17537301116814813783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A374007 (n + 1)).toNat

end

end A299312.P17537301116814813783

/-!
# A299313: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299313, there is no canonical definition to state claims against.
-/

/-! ## A299313.P14322265263842133179

`A299314(A374008(n+1))`
-/

namespace A299313.P14322265263842133179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299314 (A374008 (n + 1)).toNat

end

end A299313.P14322265263842133179

/-!
# A299314: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299314, there is no canonical definition to state claims against.
-/

/-! ## A299314.P980980738575463860

`A300115(n+1)`
-/

namespace A299314.P980980738575463860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300115 (n + 1)

end

end A299314.P980980738575463860

/-!
# A299315: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299315, there is no canonical definition to state claims against.
-/

/-! ## A299315.P6065196141243946539

`A299321(∑[4*n]+1)`
-/

namespace A299315.P6065196141243946539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299315.P6065196141243946539

/-!
# A299316: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299316, there is no canonical definition to state claims against.
-/

/-! ## A299316.P4599747763433381931

`A299321(∑[n+2]+4)`
-/

namespace A299316.P4599747763433381931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299316.P4599747763433381931

/-!
# A299317: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299317, there is no canonical definition to state claims against.
-/

/-! ## A299317.P13832749994165017773

`A299321(∑[n+3]+7)`
-/

namespace A299317.P13832749994165017773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299317.P13832749994165017773

/-! ## A299317.P18258558117519892965

`record[A299321(A025796(n)+4)]`
-/

namespace A299317.P18258558117519892965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A025796 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299317.P18258558117519892965

/-! ## A299317.P8005195440590499494

`record[A299321(A024163(n+1)+4)]`
-/

namespace A299317.P8005195440590499494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A024163 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299317.P8005195440590499494

/-! ## A299317.P8220858084408412033

`record[A010054(n)*A299321(n+4)]`
-/

namespace A299317.P8220858084408412033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A299321 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299317.P8220858084408412033

/-!
# A299318: Number of n X 5 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299318, there is no canonical definition to state claims against.
-/

/-! ## A299318.P8435522559528055812

`A299321(A374005(n+1))`
-/

namespace A299318.P8435522559528055812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A374005 (n + 1)).toNat

end

end A299318.P8435522559528055812

/-!
# A299319: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299319, there is no canonical definition to state claims against.
-/

/-! ## A299319.P7644181601324180610

`A299321(A374007(n+1))`
-/

namespace A299319.P7644181601324180610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A374007 (n + 1)).toNat

end

end A299319.P7644181601324180610

/-!
# A299320: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299320, there is no canonical definition to state claims against.
-/

/-! ## A299320.P15060992833152633640

`A299321(A374008(n+1))`
-/

namespace A299320.P15060992833152633640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299321 (A374008 (n + 1)).toNat

end

end A299320.P15060992833152633640

/-!
# A299322: Ranks of {2,3}-power towers with neither consecutive 2's nor consecutive 3's; see Comments.

The programs for A299322, the canonical program `A299322.P3264824573822275329` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299322 has offset 1).

The definition of A299322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299322.P4913995326765157156

`ogf((1+x+x^2+x^4-2x^5+2x^6-2x^7+x^8)/(1-x-x^2+x^3-2x^4+2x^5))`
-/

namespace A299322.P4913995326765157156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 0, 1, -2, 2, -2, 1] [1, -1, -1, 1, -2, 2] n

end

end A299322.P4913995326765157156

namespace A299322

/-- `ogf((1+x+x^2+x^4-2x^5+2x^6-2x^7+x^8)/(1-x-x^2+x^3-2x^4+2x^5))` -/
def P4913995326765157156.Spec : Prop :=
  ∀ n, P4913995326765157156.a n = A299322 (n + 1)

end A299322

/-! ## A299322.P3264824573822275329

`a(n-1)+a(n-2)-a(n-3)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=10, a(5)=11, a(6)=22, a(7)=23, a(8)=45`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A299322

/-- `a(n-1)+a(n-2)-a(n-3)+2*a(n-4)-2*a(n-5)` -/
def P3264824573822275329.Spec : Prop :=
  ∀ n, P3264824573822275329.a n = A299322 (n + 1)

theorem P3264824573822275329.correct : P3264824573822275329.Spec := by
  intro n
  simp only [A299322, Nat.add_sub_cancel]

end A299322

/-! ## A299322.P16369776278908477519

`A299327(1+∑[n])`
-/

namespace A299322.P16369776278908477519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299322.P16369776278908477519

namespace A299322

/-- `A299327(1+∑[n])` -/
def P16369776278908477519.Spec : Prop :=
  ∀ n, P16369776278908477519.a n = A299322 (n + 1)

end A299322

/-! ## A299322.P5537552641189672025

`record[A299327(A332442(n+1)+1)]`
-/

namespace A299322.P5537552641189672025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (A332442 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299322.P5537552641189672025

namespace A299322

/-- `record[A299327(A332442(n+1)+1)]` -/
def P5537552641189672025.Spec : Prop :=
  ∀ n, P5537552641189672025.a n = A299322 (n + 1)

end A299322

/-! ## A299322.P9728491462789118554

`A367328(A075426(n+1))`
-/

namespace A299322.P9728491462789118554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367328 (A075426 (n + 1)).toNat

end

end A299322.P9728491462789118554

namespace A299322

/-- `A367328(A075426(n+1))` -/
def P9728491462789118554.Spec : Prop :=
  ∀ n, P9728491462789118554.a n = A299322 (n + 1)

end A299322

/-!
# A299328: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299328, there is no canonical definition to state claims against.
-/

/-! ## A299328.P2155447683669737615

`A299334(∑[4*n]+1)`
-/

namespace A299328.P2155447683669737615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299328.P2155447683669737615

/-!
# A299329: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299329, there is no canonical definition to state claims against.
-/

/-! ## A299329.P4369654282730979642

`A299334(∑[n+2]+4)`
-/

namespace A299329.P4369654282730979642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299329.P4369654282730979642

/-! ## A299329.P2468467190775444164

`record[A299334(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A299329.P2468467190775444164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299329.P2468467190775444164

/-!
# A299330: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299330, there is no canonical definition to state claims against.
-/

/-! ## A299330.P4542648219615684791

`A299334(A374004(n+1))`
-/

namespace A299330.P4542648219615684791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374004 (n + 1)).toNat

end

end A299330.P4542648219615684791

/-! ## A299330.P7993155797679170242

`A299334(A141214(n+1))`
-/

namespace A299330.P7993155797679170242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A141214 (n + 1)).toNat

end

end A299330.P7993155797679170242

/-!
# A299331: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299331, there is no canonical definition to state claims against.
-/

/-! ## A299331.P14838275337633098335

`A299334(A374005(n+1))`
-/

namespace A299331.P14838275337633098335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374005 (n + 1)).toNat

end

end A299331.P14838275337633098335

/-! ## A299331.P712023943943236702

`A299334(Δ[A264443(n)])`
-/

namespace A299331.P712023943943236702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (f1 (n + 1) - f1 n).toNat

end

end A299331.P712023943943236702

/-!
# A299332: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299332, there is no canonical definition to state claims against.
-/

/-! ## A299332.P1475718195042423849

`A299334(A374007(n+1))`
-/

namespace A299332.P1475718195042423849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374007 (n + 1)).toNat

end

end A299332.P1475718195042423849

/-!
# A299333: Number of n X 7 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299333, there is no canonical definition to state claims against.
-/

/-! ## A299333.P7106241529599168409

`A299334(A374008(n+1))`
-/

namespace A299333.P7106241529599168409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (A374008 (n + 1)).toNat

end

end A299333.P7106241529599168409

/-!
# A299334: T(n,k) = Number of n X k 0..1 arrays with every element equal to 2, 3, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299334, there is no canonical definition to state claims against.
-/

/-! ## A299334.P17213642629357793917

`A298629(n+1)+A235943(A297978(n+1))`
-/

namespace A299334.P17213642629357793917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A235943 (A297978 (n + 1)).toNat

end

end A299334.P17213642629357793917

/-! ## A299334.P16372979949547577067

`A298629(n+1)+A185255(A298461(n+1))`
-/

namespace A299334.P16372979949547577067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A185255 (A298461 (n + 1)).toNat

end

end A299334.P16372979949547577067

/-!
# A299335: Expansion of 1 / ((1 - x)^7*(1 + x)^2).

The programs for A299335, the canonical program `A299335.P15283748833311822453` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299335 has offset 0).

The definition of A299335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))` (program `A299335.P15283748833311822453`, by `A299335.P15283748833311822453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299335.P15283748833311822453

`ogf(1/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A299335

/-- `ogf(1/(1-5x+8x^2-14x^4+14x^5-8x^7+5x^8-x^9))` -/
def P15283748833311822453.Spec : Prop :=
  ∀ n, P15283748833311822453.a n = A299335 n

theorem P15283748833311822453.correct : P15283748833311822453.Spec := by
  intro n
  simp only [A299335]

end A299335

/-! ## A299335.P944836140402536805

`∑[∑[∑[∑[∑[∑[n+1]%(n+2)]]]]]`
-/

namespace A299335.P944836140402536805
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f6 j) % (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P944836140402536805

namespace A299335

/-- `∑[∑[∑[∑[∑[∑[n+1]%(n+2)]]]]]` -/
def P944836140402536805.Spec : Prop :=
  ∀ n, (P944836140402536805.a n : ℤ) = A299335 n

end A299335

/-! ## A299335.P16939976828421228842

`∑[∑[∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]]]`
-/

namespace A299335.P16939976828421228842
noncomputable section

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (-1) ^ n

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P16939976828421228842

namespace A299335

/-- `∑[∑[∑[∑[∑[∑[∑[(n+1)*(-1)^n]]]]]]]` -/
def P16939976828421228842.Spec : Prop :=
  ∀ n, P16939976828421228842.a n = A299335 n

end A299335

/-! ## A299335.P5764648783176617027

`∑[C(n+5, 5)-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A299335.P5764648783176617027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose (n + 5) 5 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A299335.P5764648783176617027

namespace A299335

/-- `∑[C(n+5, 5)-a(n-1)]-a(n-1)` -/
def P5764648783176617027.Spec : Prop :=
  ∀ n, P5764648783176617027.a n = A299335 n

end A299335

/-! ## A299335.P746289902991317780

`∑[∑[∑[∑[∑[∑[∑[(-1)^n]]]]]]]-a(n-1)` with `a(0)=1`
-/

namespace A299335.P746289902991317780
noncomputable section

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A299335.P746289902991317780

namespace A299335

/-- `∑[∑[∑[∑[∑[∑[∑[(-1)^n]]]]]]]-a(n-1)` -/
def P746289902991317780.Spec : Prop :=
  ∀ n, P746289902991317780.a n = A299335 n

end A299335

/-! ## A299335.P10724117094038725099

`abs(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`
-/

namespace A299335.P10724117094038725099
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A299335.P10724117094038725099

namespace A299335

/-- `abs(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P10724117094038725099.Spec : Prop :=
  ∀ n, P10724117094038725099.a n = A299335 n

end A299335

/-! ## A299335.P9585423963907411077

`floor(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A299335.P9585423963907411077
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P9585423963907411077

namespace A299335

/-- `floor(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P9585423963907411077.Spec : Prop :=
  ∀ n, P9585423963907411077.a n = A299335 n

end A299335

/-! ## A299335.P13868663017997422007

`ceil(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A299335.P13868663017997422007
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P13868663017997422007

namespace A299335

/-- `ceil(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P13868663017997422007.Spec : Prop :=
  ∀ n, P13868663017997422007.a n = A299335 n

end A299335

/-! ## A299335.P215539465119879307

`round(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A299335.P215539465119879307
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f4 =>
  f4 (n - 2) + (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299335.P215539465119879307

namespace A299335

/-- `round(∑[∑[∑[∑[a(n-2)+n+1]-a(n-1)]]])` -/
def P215539465119879307.Spec : Prop :=
  ∀ n, P215539465119879307.a n = A299335 n

end A299335

/-! ## A299335.P11660547829408194740

`2*∑[A028346(n)/2]`
-/

namespace A299335.P11660547829408194740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028346 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299335.P11660547829408194740

namespace A299335

/-- `2*∑[A028346(n)/2]` -/
def P11660547829408194740.Spec : Prop :=
  ∀ n, P11660547829408194740.a n = (A299335 n : ℚ)

end A299335

/-! ## A299335.P17487218819432273054

`2*A060099(n)-A038163(n)`
-/

namespace A299335.P17487218819432273054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060099 n - A038163 n

end

end A299335.P17487218819432273054

namespace A299335

/-- `2*A060099(n)-A038163(n)` -/
def P17487218819432273054.Spec : Prop :=
  ∀ n, P17487218819432273054.a n = A299335 n

end A299335

/-! ## A299335.P1849080696908987654

`A001769(n+1)-(A060099(n+1)+A060099(n))`
-/

namespace A299335.P1849080696908987654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (n + 1) - (A060099 (n + 1) + A060099 n)

end

end A299335.P1849080696908987654

namespace A299335

/-- `A001769(n+1)-(A060099(n+1)+A060099(n))` -/
def P1849080696908987654.Spec : Prop :=
  ∀ n, P1849080696908987654.a n = A299335 n

end A299335

/-! ## A299335.P6960164689760742029

`A060099(n+1)+A060099(n)-A028346(n+1)`
-/

namespace A299335.P6960164689760742029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (n + 1) + (A060099 n - A028346 (n + 1))

end

end A299335.P6960164689760742029

namespace A299335

/-- `A060099(n+1)+A060099(n)-A028346(n+1)` -/
def P6960164689760742029.Spec : Prop :=
  ∀ n, P6960164689760742029.a n = A299335 n

end A299335

/-!
# A299336: Expansion of 1 / ((1 - x)^7*(1 + x)^4).

The programs for A299336, the canonical program `A299336.P10451011169121343571` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299336 has offset 0).

The definition of A299336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` (program `A299336.P10451011169121343571`, by `A299336.P10451011169121343571.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299336.P10451011169121343571

`ogf(1/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A299336

/-- `ogf(1/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` -/
def P10451011169121343571.Spec : Prop :=
  ∀ n, P10451011169121343571.a n = A299336 n

theorem P10451011169121343571.correct : P10451011169121343571.Spec := by
  intro n
  simp only [A299336]

end A299336

/-! ## A299336.P15215862096300952731

`∑[∑[C(floor(n/2)+4, 4)]]`
-/

namespace A299336.P15215862096300952731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 4).toNat 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P15215862096300952731

namespace A299336

/-- `∑[∑[C(floor(n/2)+4, 4)]]` -/
def P15215862096300952731.Spec : Prop :=
  ∀ n, (P15215862096300952731.a n : ℤ) = A299336 n

end A299336

/-! ## A299336.P2054143809649939102

`∑[A177747(n)]`
-/

namespace A299336.P2054143809649939102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P2054143809649939102

namespace A299336

/-- `∑[A177747(n)]` -/
def P2054143809649939102.Spec : Prop :=
  ∀ n, P2054143809649939102.a n = A299336 n

end A299336

/-! ## A299336.P7503241539509656160

`∑[∑[A189976(n+8)]]`
-/

namespace A299336.P7503241539509656160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P7503241539509656160

namespace A299336

/-- `∑[∑[A189976(n+8)]]` -/
def P7503241539509656160.Spec : Prop :=
  ∀ n, P7503241539509656160.a n = A299336 n

end A299336

/-! ## A299336.P1827318540179155772

`A060099(n)-a(n-1)` with `a(0)=1`
-/

namespace A299336.P1827318540179155772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060099 n - a (n - 1)

end

end A299336.P1827318540179155772

namespace A299336

/-- `A060099(n)-a(n-1)` -/
def P1827318540179155772.Spec : Prop :=
  ∀ n, P1827318540179155772.a n = A299336 n

end A299336

/-! ## A299336.P12321905672721812952

`A038163(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A299336.P12321905672721812952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A038163 n + a (n - 2)

end

end A299336.P12321905672721812952

namespace A299336

/-- `A038163(n)+a(n-2)` -/
def P12321905672721812952.Spec : Prop :=
  ∀ n, P12321905672721812952.a n = A299336 n

end A299336

/-! ## A299336.P17842525874427010922

`∑[∑[A002624(n)-a(n-1)]]-a(n-1)` with `a(0)=1`
-/

namespace A299336.P17842525874427010922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002624 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A299336.P17842525874427010922

namespace A299336

/-- `∑[∑[A002624(n)-a(n-1)]]-a(n-1)` -/
def P17842525874427010922.Spec : Prop :=
  ∀ n, P17842525874427010922.a n = A299336 n

end A299336

/-! ## A299336.P7390774617964836657

`∑[2*A189980(n)]-A189980(n)`
-/

namespace A299336.P7390774617964836657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189980 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A189980 (n + 10)

end

end A299336.P7390774617964836657

namespace A299336

/-- `∑[2*A189980(n)]-A189980(n)` -/
def P7390774617964836657.Spec : Prop :=
  ∀ n, P7390774617964836657.a n = A299336 n

end A299336

/-! ## A299336.P12138811102991725804

`A060099(n+1)-(A299337(n+1)+A299337(n))`
-/

namespace A299336.P12138811102991725804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (n + 1) - (A299337 (n + 1) + A299337 n)

end

end A299336.P12138811102991725804

namespace A299336

/-- `A060099(n+1)-(A299337(n+1)+A299337(n))` -/
def P12138811102991725804.Spec : Prop :=
  ∀ n, P12138811102991725804.a n = A299336 n

end A299336

/-! ## A299336.P16166299787124899867

`∑[∑[A000332(Δ[A002620(n+7)])]]`
-/

namespace A299336.P16166299787124899867
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (f3 (n + 1) - f3 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P16166299787124899867

namespace A299336

/-- `∑[∑[A000332(Δ[A002620(n+7)])]]` -/
def P16166299787124899867.Spec : Prop :=
  ∀ n, P16166299787124899867.a n = A299336 n

end A299336

/-! ## A299336.P10668855715313312229

`∑[∑[A051677(A008805(n))]]`
-/

namespace A299336.P10668855715313312229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051677 (A008805 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P10668855715313312229

namespace A299336

/-- `∑[∑[A051677(A008805(n))]]` -/
def P10668855715313312229.Spec : Prop :=
  ∀ n, P10668855715313312229.a n = A299336 n

end A299336

/-! ## A299336.P5199416911312471925

`∑[∑[A194005(A052905(n+1))]]`
-/

namespace A299336.P5199416911312471925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194005 (A052905 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P5199416911312471925

namespace A299336

/-- `∑[∑[A194005(A052905(n+1))]]` -/
def P5199416911312471925.Spec : Prop :=
  ∀ n, P5199416911312471925.a n = A299336 n

end A299336

/-! ## A299336.P10247461566946681246

`∑[∑[A109221(∑[n+3])]]`
-/

namespace A299336.P10247461566946681246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P10247461566946681246

namespace A299336

/-- `∑[∑[A109221(∑[n+3])]]` -/
def P10247461566946681246.Spec : Prop :=
  ∀ n, P10247461566946681246.a n = A299336 n

end A299336

/-! ## A299336.P1151811315870641919

`A188316(A167614(n+2))`
-/

namespace A299336.P1151811315870641919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188316 (A167614 (n + 2)).toNat

end

end A299336.P1151811315870641919

namespace A299336

/-- `A188316(A167614(n+2))` -/
def P1151811315870641919.Spec : Prop :=
  ∀ n, P1151811315870641919.a n = A299336 n

end A299336

/-! ## A299336.P13929973597038866584

`∑[∑[A185785(A055802(n+3))]]`
-/

namespace A299336.P13929973597038866584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185785 (A055802 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299336.P13929973597038866584

namespace A299336

/-- `∑[∑[A185785(A055802(n+3))]]` -/
def P13929973597038866584.Spec : Prop :=
  ∀ n, P13929973597038866584.a n = A299336 n

end A299336

/-!
# A299337: Expansion of 1 / ((1 - x)^7*(1 + x)^5).

The programs for A299337, the canonical program `A299337.P4896702050029843800` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299337 has offset 0).

The definition of A299337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` (program `A299337.P4896702050029843800`, by `A299337.P4896702050029843800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299337.P4896702050029843800

`ogf(1/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A299337

/-- `ogf(1/(1-2x-4x^2+10x^3+5x^4-20x^5+20x^7-5x^8-10x^9+4x^10+2x^11-x^12))` -/
def P4896702050029843800.Spec : Prop :=
  ∀ n, P4896702050029843800.a n = A299337 n

theorem P4896702050029843800.correct : P4896702050029843800.Spec := by
  intro n
  simp only [A299337]

end A299337

/-! ## A299337.P4151147333323866537

`∑[C(5+floor(n/2), 5)]`
-/

namespace A299337.P4151147333323866537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 + ⌊(n : ℚ) / 2⌋).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P4151147333323866537

namespace A299337

/-- `∑[C(5+floor(n/2), 5)]` -/
def P4151147333323866537.Spec : Prop :=
  ∀ n, (P4151147333323866537.a n : ℤ) = A299337 n

end A299337

/-! ## A299337.P1360434793618333916

`a(n-1)+C(floor(n/2)+5, 5)` with `a(0)=1`
-/

namespace A299337.P1360434793618333916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (⌊(n : ℚ) / 2⌋ + 5).toNat 5

end

end A299337.P1360434793618333916

namespace A299337

/-- `a(n-1)+C(floor(n/2)+5, 5)` -/
def P1360434793618333916.Spec : Prop :=
  ∀ n, (P1360434793618333916.a n : ℤ) = A299337 n

end A299337

/-! ## A299337.P3959876857457425949

`∑[A189980(n)]`
-/

namespace A299337.P3959876857457425949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P3959876857457425949

namespace A299337

/-- `∑[A189980(n)]` -/
def P3959876857457425949.Spec : Prop :=
  ∀ n, P3959876857457425949.a n = A299337 n

end A299337

/-! ## A299337.P8283521508196662502

`A299336(n)-a(n-1)` with `a(0)=1`
-/

namespace A299337.P8283521508196662502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299336 n - a (n - 1)

end

end A299337.P8283521508196662502

namespace A299337

/-- `A299336(n)-a(n-1)` -/
def P8283521508196662502.Spec : Prop :=
  ∀ n, P8283521508196662502.a n = A299337 n

end A299337

/-! ## A299337.P1688574487764724824

`A177747(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A299337.P1688574487764724824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A177747 n + a (n - 2)

end

end A299337.P1688574487764724824

namespace A299337

/-- `A177747(n)+a(n-2)` -/
def P1688574487764724824.Spec : Prop :=
  ∀ n, P1688574487764724824.a n = A299337 n

end A299337

/-! ## A299337.P7056320572068163100

`∑[A018214(n)-A282078(n)]`
-/

namespace A299337.P7056320572068163100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018214 n - A282078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P7056320572068163100

namespace A299337

/-- `∑[A018214(n)-A282078(n)]` -/
def P7056320572068163100.Spec : Prop :=
  ∀ n, P7056320572068163100.a n = A299337 n

end A299337

/-! ## A299337.P9186136743219684003

`∑[∑[A056594(n)²*A189976(n+8)]]`
-/

namespace A299337.P9186136743219684003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n ^ 2 * A189976 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P9186136743219684003

namespace A299337

/-- `∑[∑[A056594(n)²*A189976(n+8)]]` -/
def P9186136743219684003.Spec : Prop :=
  ∀ n, P9186136743219684003.a n = A299337 n

end A299337

/-! ## A299337.P1412548299417687727

`A299336(n+1)-(A299338(n+1)+A299338(n))`
-/

namespace A299337.P1412548299417687727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299336 (n + 1) - (A299338 (n + 1) + A299338 n)

end

end A299337.P1412548299417687727

namespace A299337

/-- `A299336(n+1)-(A299338(n+1)+A299338(n))` -/
def P1412548299417687727.Spec : Prop :=
  ∀ n, P1412548299417687727.a n = A299337 n

end A299337

/-! ## A299337.P10653970047052683682

`A189980(n+1)/A008805(n+1)*A058187(n)`
-/

namespace A299337.P10653970047052683682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189980 (n + 1 + 10) : ℚ) / (A008805 (n + 1) : ℚ) * (A058187 n : ℚ)

end

end A299337.P10653970047052683682

namespace A299337

/-- `A189980(n+1)/A008805(n+1)*A058187(n)` -/
def P10653970047052683682.Spec : Prop :=
  ∀ n, P10653970047052683682.a n = (A299337 n : ℚ)

end A299337

/-! ## A299337.P6919080421798647998

`∑[A185508(A008805(n))]`
-/

namespace A299337.P6919080421798647998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185508 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P6919080421798647998

namespace A299337

/-- `∑[A185508(A008805(n))]` -/
def P6919080421798647998.Spec : Prop :=
  ∀ n, P6919080421798647998.a n = A299337 n

end A299337

/-! ## A299337.P825241430809079989

`∑[A277951(A329482(n))]`
-/

namespace A299337.P825241430809079989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277951 (A329482 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P825241430809079989

namespace A299337

/-- `∑[A277951(A329482(n))]` -/
def P825241430809079989.Spec : Prop :=
  ∀ n, P825241430809079989.a n = A299337 n

end A299337

/-! ## A299337.P2505744537506068116

`∑[A185786(∑[A057979(n)])]`
-/

namespace A299337.P2505744537506068116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185786 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P2505744537506068116

namespace A299337

/-- `∑[A185786(∑[A057979(n)])]` -/
def P2505744537506068116.Spec : Prop :=
  ∀ n, P2505744537506068116.a n = A299337 n

end A299337

/-! ## A299337.P7437241275622102214

`∑[A185786(A055802(n+3))]`
-/

namespace A299337.P7437241275622102214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185786 (A055802 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P7437241275622102214

namespace A299337

/-- `∑[A185786(A055802(n+3))]` -/
def P7437241275622102214.Spec : Prop :=
  ∀ n, P7437241275622102214.a n = A299337 n

end A299337

/-! ## A299337.P13377461421248033283

`∑[∑[A056594(n²)*A189976(n+8)]]`
-/

namespace A299337.P13377461421248033283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A189976 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299337.P13377461421248033283

namespace A299337

/-- `∑[∑[A056594(n²)*A189976(n+8)]]` -/
def P13377461421248033283.Spec : Prop :=
  ∀ n, P13377461421248033283.a n = A299337 n

end A299337

/-!
# A299338: Expansion of 1 / ((1 - x)^7*(1 + x)^6).

The programs for A299338, the canonical program `A299338.P9075659924180210676` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299338 has offset 0).

The definition of A299338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))` (program `A299338.P9075659924180210676`, by `A299338.P9075659924180210676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299338.P9075659924180210676

`ogf(1/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A299338

/-- `ogf(1/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))` -/
def P9075659924180210676.Spec : Prop :=
  ∀ n, P9075659924180210676.a n = A299338 n

theorem P9075659924180210676.correct : P9075659924180210676.Spec := by
  intro n
  simp only [A299338]

end A299338

/-! ## A299338.P3297744473409071898

`C(6+floor(n/2), 6)`
-/

namespace A299338.P3297744473409071898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 + ⌊(n : ℚ) / 2⌋).toNat 6

end

end A299338.P3297744473409071898

namespace A299338

/-- `C(6+floor(n/2), 6)` -/
def P3297744473409071898.Spec : Prop :=
  ∀ n, (P3297744473409071898.a n : ℤ) = A299338 n

end A299338

/-! ## A299338.P4022037748028678080

`A000579(6+floor(n/2))`
-/

namespace A299338.P4022037748028678080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (6 + ⌊(n : ℚ) / 2⌋).toNat

end

end A299338.P4022037748028678080

namespace A299338

/-- `A000579(6+floor(n/2))` -/
def P4022037748028678080.Spec : Prop :=
  ∀ n, P4022037748028678080.a n = A299338 n

end A299338

/-! ## A299338.P15415885656711819425

`A299337(n)-a(n-1)` with `a(0)=1`
-/

namespace A299338.P15415885656711819425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299337 n - a (n - 1)

end

end A299338.P15415885656711819425

namespace A299338

/-- `A299337(n)-a(n-1)` -/
def P15415885656711819425.Spec : Prop :=
  ∀ n, P15415885656711819425.a n = A299338 n

end A299338

/-! ## A299338.P6318674932219037878

`a(n-2)+A189980(n)` with `a(0)=1, a(1)=1`
-/

namespace A299338.P6318674932219037878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + A189980 (n + 10)

end

end A299338.P6318674932219037878

namespace A299338

/-- `a(n-2)+A189980(n)` -/
def P6318674932219037878.Spec : Prop :=
  ∀ n, P6318674932219037878.a n = A299338 n

end A299338

/-! ## A299338.P10849311334903018606

`A299337((n+1)%2+n)/2`
-/

namespace A299338.P10849311334903018606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299337 ((n + 1) % 2 + n) : ℚ) / 2

end

end A299338.P10849311334903018606

namespace A299338

/-- `A299337((n+1)%2+n)/2` -/
def P10849311334903018606.Spec : Prop :=
  ∀ n, P10849311334903018606.a n = (A299338 n : ℚ)

end A299338

/-! ## A299338.P1078759774079813571

`A027818(A008619(n)-1)/A008619(n)`
-/

namespace A299338.P1078759774079813571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027818 (A008619 n - 1).toNat : ℚ) / (A008619 n : ℚ)

end

end A299338.P1078759774079813571

namespace A299338

/-- `A027818(A008619(n)-1)/A008619(n)` -/
def P1078759774079813571.Spec : Prop :=
  ∀ n, P1078759774079813571.a n = (A299338 n : ℚ)

end A299338

/-! ## A299338.P16356534910894456781

`(A160413(Δ[A047382(n+1)])+n-1)*a(n-1)/n` with `a(0)=1`
-/

namespace A299338.P16356534910894456781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A160413 (f1 (n + 1) - f1 n).toNat + ((n : ℤ) - 1) : ℚ) * a (n - 1) / (n : ℚ)

end

end A299338.P16356534910894456781

namespace A299338

/-- `(A160413(Δ[A047382(n+1)])+n-1)*a(n-1)/n` -/
def P16356534910894456781.Spec : Prop :=
  ∀ n, P16356534910894456781.a n = (A299338 n : ℚ)

end A299338

/-! ## A299338.P9961159162619547333

`∑[C(A168230(n+4), A168230(n+1))]`
-/

namespace A299338.P9961159162619547333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168230 (n + 4)).toNat (A168230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299338.P9961159162619547333

namespace A299338

/-- `∑[C(A168230(n+4), A168230(n+1))]` -/
def P9961159162619547333.Spec : Prop :=
  ∀ n, (P9961159162619547333.a n : ℤ) = A299338 n

end A299338

/-! ## A299338.P1952781999603895929

`A109223(A167614(n+2))`
-/

namespace A299338.P1952781999603895929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A167614 (n + 2)).toNat

end

end A299338.P1952781999603895929

namespace A299338

/-- `A109223(A167614(n+2))` -/
def P1952781999603895929.Spec : Prop :=
  ∀ n, P1952781999603895929.a n = A299338 n

end A299338

/-! ## A299338.P7649084797705623507

`A109221(∑[n+3]+n+3)`
-/

namespace A299338.P7649084797705623507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A299338.P7649084797705623507

namespace A299338

/-- `A109221(∑[n+3]+n+3)` -/
def P7649084797705623507.Spec : Prop :=
  ∀ n, P7649084797705623507.a n = A299338 n

end A299338

/-! ## A299338.P2972116876672097545

`A185509(A008805(n))`
-/

namespace A299338.P2972116876672097545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185509 (A008805 n).toNat

end

end A299338.P2972116876672097545

namespace A299338

/-- `A185509(A008805(n))` -/
def P2972116876672097545.Spec : Prop :=
  ∀ n, P2972116876672097545.a n = A299338 n

end A299338

/-!
# A299339: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299339, there is no canonical definition to state claims against.
-/

/-! ## A299339.P4802607950759454544

`A299345(∑[4*n]+1)`
-/

namespace A299339.P4802607950759454544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299339.P4802607950759454544

/-! ## A299339.P9955837564709994597

`record[A299345(A272267(n+1))]`
-/

namespace A299339.P9955837564709994597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299339.P9955837564709994597

/-! ## A299339.P5826183195022695922

`record[A299345(A330613(n+1))]`
-/

namespace A299339.P5826183195022695922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299339.P5826183195022695922

/-! ## A299339.P9843640477333809323

`record[A299345(Δ[A079824(n+1)])]`
-/

namespace A299339.P9843640477333809323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299339.P9843640477333809323

/-!
# A299340: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299340, there is no canonical definition to state claims against.
-/

/-! ## A299340.P2403581878620897870

`A299345(∑[n+2]+4)`
-/

namespace A299340.P2403581878620897870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299340.P2403581878620897870

/-!
# A299341: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299341, there is no canonical definition to state claims against.
-/

/-! ## A299341.P6369638074083212319

`A299345(∑[n+3]+7)`
-/

namespace A299341.P6369638074083212319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299341.P6369638074083212319

/-!
# A299342: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299342, there is no canonical definition to state claims against.
-/

/-! ## A299342.P2485393542258531577

`A299345(A374005(n+1))`
-/

namespace A299342.P2485393542258531577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A374005 (n + 1)).toNat

end

end A299342.P2485393542258531577

/-!
# A299343: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299343, there is no canonical definition to state claims against.
-/

/-! ## A299343.P14399460285240780749

`A299345(A374007(n+1))`
-/

namespace A299343.P14399460285240780749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A374007 (n + 1)).toNat

end

end A299343.P14399460285240780749

/-!
# A299344: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299344, there is no canonical definition to state claims against.
-/

/-! ## A299344.P4871793034585314463

`A299345(A374008(n+1))`
-/

namespace A299344.P4871793034585314463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (A374008 (n + 1)).toNat

end

end A299344.P4871793034585314463

/-!
# A299345: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299345, there is no canonical definition to state claims against.
-/

/-! ## A299345.P18234021272873906043

`A299852(n+1)-A285007(A035607(n))`
-/

namespace A299345.P18234021272873906043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1) - A285007 (A035607 n).toNat

end

end A299345.P18234021272873906043

/-! ## A299345.P1243398895045505925

`A299852(n+1)-A309785(A331562(n))`
-/

namespace A299345.P1243398895045505925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1) - A309785 (A331562 n).toNat

end

end A299345.P1243398895045505925

/-! ## A299345.P1124732878311189115

`A299852(n+1)-A309785(A347621(n))`
-/

namespace A299345.P1124732878311189115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299852 (n + 1) - A309785 (A347621 n).toNat

end

end A299345.P1124732878311189115

/-! ## A299345.P7612846618318714270

`xor(A185284(A130348(n)), A299852(n+1))`
-/

namespace A299345.P7612846618318714270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A130348 n).toNat) (A299852 (n + 1))

end

end A299345.P7612846618318714270

/-! ## A299345.P9094703164227494037

`xor(A185284(A206225(n+1)), A299852(n+1))`
-/

namespace A299345.P9094703164227494037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A206225 (n + 1)).toNat) (A299852 (n + 1))

end

end A299345.P9094703164227494037

/-!
# A299346: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299346, there is no canonical definition to state claims against.
-/

/-! ## A299346.P7218297467780489484

`A299350(∑[4*n]+1)`
-/

namespace A299346.P7218297467780489484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299346.P7218297467780489484

/-! ## A299346.P12209830663222964477

`record[A299350(A330613(n+1))]`
-/

namespace A299346.P12209830663222964477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299346.P12209830663222964477

/-! ## A299346.P6714090373049797768

`record[A003982(n)*A299350(n+1)]`
-/

namespace A299346.P6714090373049797768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299346.P6714090373049797768

/-!
# A299347: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299347, there is no canonical definition to state claims against.
-/

/-! ## A299347.P2901582242879540069

`A299350(A167499(n+3))`
-/

namespace A299347.P2901582242879540069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167499 (n + 3)).toNat

end

end A299347.P2901582242879540069

/-! ## A299347.P10976116712418300805

`A299350(A374005(n+1))`
-/

namespace A299347.P10976116712418300805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A374005 (n + 1)).toNat

end

end A299347.P10976116712418300805

/-!
# A299348: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299348, there is no canonical definition to state claims against.
-/

/-! ## A299348.P349292135771240178

`A299350(A166136(n+4))`
-/

namespace A299348.P349292135771240178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A166136 (n + 4)).toNat

end

end A299348.P349292135771240178

/-! ## A299348.P10105124275597966359

`A299350(A374007(n+1))`
-/

namespace A299348.P10105124275597966359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A374007 (n + 1)).toNat

end

end A299348.P10105124275597966359

/-!
# A299349: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299349, there is no canonical definition to state claims against.
-/

/-! ## A299349.P11399909175682501347

`A299350(A167487(n+5))`
-/

namespace A299349.P11399909175682501347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A167487 (n + 5)).toNat

end

end A299349.P11399909175682501347

/-! ## A299349.P9736387718176129295

`A299350(A374008(n+1))`
-/

namespace A299349.P9736387718176129295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (A374008 (n + 1)).toNat

end

end A299349.P9736387718176129295

/-!
# A299350: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299350, there is no canonical definition to state claims against.
-/

/-! ## A299350.P17543817198491132715

`A056039(2*A298221(n+1))`
-/

namespace A299350.P17543817198491132715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056039 (2 * A298221 (n + 1)).toNat

end

end A299350.P17543817198491132715

/-! ## A299350.P13615812517544641082

`A298221(n+1)+A006926(A073345(n))`
-/

namespace A299350.P13615812517544641082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (n + 1) + A006926 (A073345 n).toNat

end

end A299350.P13615812517544641082

/-! ## A299350.P5818974222452341290

`A298221(n+1)+A025469(A298719(n+1))`
-/

namespace A299350.P5818974222452341290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (n + 1) + A025469 (A298719 (n + 1)).toNat

end

end A299350.P5818974222452341290

/-! ## A299350.P10986163995220072394

`A298221(n+1)+A235145(A303118(n+1))`
-/

namespace A299350.P10986163995220072394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (n + 1) + A235145 (A303118 (n + 1)).toNat

end

end A299350.P10986163995220072394

/-!
# A299351: For x=n, iterate the map x -> Product_{k is a prime dividing x} (k + 1), a(n) is the number of steps to see a repeated term for the first time.

The programs for A299351, there is no canonical definition to state claims against.
-/

/-! ## A299351.P18103519583643458029

`A086275(A296284(n)+A003338(3*n+4))`
-/

namespace A299351.P18103519583643458029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (A296284 n + A003338 (3 * n + 4)).toNat

end

end A299351.P18103519583643458029

/-! ## A299351.P8818912836153419913

`A106282(A106284(2*n+1))%5`
-/

namespace A299351.P8818912836153419913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106282 (A106284 (2 * n + 1)).toNat) 5

end

end A299351.P8818912836153419913

/-!
# A299353: Number of labeled connected uniform hypergraphs spanning n vertices.

The programs for A299353, there is no canonical definition to state claims against.
-/

/-! ## A299353.P5356940385191615532

`A199847(∑{d}[A112567(n), #])`
-/

namespace A299353.P5356940385191615532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A299353.P5356940385191615532

/-! ## A299353.P22642081493496015

`A039019(3*A327198(n)+1)`
-/

namespace A299353.P22642081493496015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (3 * A327198 n + 1).toNat

end

end A299353.P22642081493496015

/-!
# A299355: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299355, there is no canonical definition to state claims against.
-/

/-! ## A299355.P10441864351594648631

`A299359(∑[4*n]+1)`
-/

namespace A299355.P10441864351594648631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299355.P10441864351594648631

/-! ## A299355.P5491862608622510523

`record[A299359(A330613(n+1))]`
-/

namespace A299355.P5491862608622510523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299355.P5491862608622510523

/-! ## A299355.P1345463524880299889

`record[A003982(n)*A299359(n+1)]`
-/

namespace A299355.P1345463524880299889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299355.P1345463524880299889

/-! ## A299355.P99260660516530595

`record[gcd(A157525(n), A299359(n+1))]`
-/

namespace A299355.P99260660516530595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157525 n) (A299359 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299355.P99260660516530595

/-!
# A299356: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299356, there is no canonical definition to state claims against.
-/

/-! ## A299356.P1028689477826836116

`A299359(A167499(n+3))`
-/

namespace A299356.P1028689477826836116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167499 (n + 3)).toNat

end

end A299356.P1028689477826836116

/-! ## A299356.P5991408414278028360

`A299359(∑[n+5]+6)`
-/

namespace A299356.P5991408414278028360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299356.P5991408414278028360

/-!
# A299357: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299357, there is no canonical definition to state claims against.
-/

/-! ## A299357.P6058713114448428820

`A299359(A167614(n+4)+3)`
-/

namespace A299357.P6058713114448428820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167614 (n + 4) + 3).toNat

end

end A299357.P6058713114448428820

/-! ## A299357.P10535423681079548038

`A299359(A374007(n+1))`
-/

namespace A299357.P10535423681079548038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A374007 (n + 1)).toNat

end

end A299357.P10535423681079548038

/-!
# A299358: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299358, there is no canonical definition to state claims against.
-/

/-! ## A299358.P1140274204866140170

`A299359(A167487(n+5))`
-/

namespace A299358.P1140274204866140170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167487 (n + 5)).toNat

end

end A299358.P1140274204866140170

/-! ## A299358.P8962938683560646239

`A299359(A374008(n+1))`
-/

namespace A299358.P8962938683560646239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A374008 (n + 1)).toNat

end

end A299358.P8962938683560646239

/-!
# A299360: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299360, there is no canonical definition to state claims against.
-/

/-! ## A299360.P8628827308674002091

`A299366(∑[4*n]+1)`
-/

namespace A299360.P8628827308674002091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299360.P8628827308674002091

/-! ## A299360.P10258409628586584284

`record[gcd(A114327(n), A299366(n+1))]`
-/

namespace A299360.P10258409628586584284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A299366 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299360.P10258409628586584284

/-! ## A299360.P17817857396969314083

`record[or(-A003987(n), A299366(n+1))]`
-/

namespace A299360.P17817857396969314083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A003987 n) (A299366 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299360.P17817857396969314083

/-!
# A299361: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299361, there is no canonical definition to state claims against.
-/

/-! ## A299361.P533187105656566662

`A299366(∑[n+2]+4)`
-/

namespace A299361.P533187105656566662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299361.P533187105656566662

/-! ## A299361.P16862195876106702923

`record[gcd(A299366(n+1), A303913(n))]`
-/

namespace A299361.P16862195876106702923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A299366 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299361.P16862195876106702923

/-!
# A299362: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299362, there is no canonical definition to state claims against.
-/

/-! ## A299362.P16394774721842674347

`A299366(A374004(n+1))`
-/

namespace A299362.P16394774721842674347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374004 (n + 1)).toNat

end

end A299362.P16394774721842674347

/-! ## A299362.P10236744494781985422

`A299366(A141214(n+1))`
-/

namespace A299362.P10236744494781985422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A141214 (n + 1)).toNat

end

end A299362.P10236744494781985422

/-!
# A299363: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299363, there is no canonical definition to state claims against.
-/

/-! ## A299363.P18316432496476434911

`A299366(A374005(n+1))`
-/

namespace A299363.P18316432496476434911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374005 (n + 1)).toNat

end

end A299363.P18316432496476434911

/-! ## A299363.P12171908764598928271

`A299366(Δ[A264443(n)])`
-/

namespace A299363.P12171908764598928271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (f1 (n + 1) - f1 n).toNat

end

end A299363.P12171908764598928271

/-!
# A299364: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299364, there is no canonical definition to state claims against.
-/

/-! ## A299364.P12063168770041473036

`A299366(A374007(n+1))`
-/

namespace A299364.P12063168770041473036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374007 (n + 1)).toNat

end

end A299364.P12063168770041473036

/-!
# A299365: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299365, there is no canonical definition to state claims against.
-/

/-! ## A299365.P10610811405450857972

`A299366(A374008(n+1))`
-/

namespace A299365.P10610811405450857972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (A374008 (n + 1)).toNat

end

end A299365.P10610811405450857972

/-!
# A299366: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299366, there is no canonical definition to state claims against.
-/

/-! ## A299366.P17133217060020367042

`A298240(n+1)+A080343(A022168(n))`
-/

namespace A299366.P17133217060020367042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1) + A080343 (A022168 n).toNat

end

end A299366.P17133217060020367042

/-! ## A299366.P7470473492363466811

`A298240(n+1)+A093879(A176791(n))`
-/

namespace A299366.P7470473492363466811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1) + A093879 (A176791 n).toNat

end

end A299366.P7470473492363466811

/-! ## A299366.P13550463131119941450

`or(A011738(A022167(n)), A298240(n+1))`
-/

namespace A299366.P13550463131119941450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 (A022167 n).toNat) (A298240 (n + 1))

end

end A299366.P13550463131119941450

/-! ## A299366.P10904607268730251389

`or(A030301(A035522(n)), A298240(n+1))`
-/

namespace A299366.P10904607268730251389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030301 (A035522 n).toNat) (A298240 (n + 1))

end

end A299366.P10904607268730251389

/-! ## A299366.P6049336535833693965

`A298240(n+1)+A297155(A189111(n+1))`
-/

namespace A299366.P6049336535833693965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1) + A297155 (A189111 (n + 1)).toNat

end

end A299366.P6049336535833693965

/-!
# A299367: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299367, there is no canonical definition to state claims against.
-/

/-! ## A299367.P3327062838150797845

`A299373(∑[4*n]+1)`
-/

namespace A299367.P3327062838150797845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299367.P3327062838150797845

/-! ## A299367.P11788892233628483482

`record[A003982(n)*A299373(n+1)]`
-/

namespace A299367.P11788892233628483482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299367.P11788892233628483482

/-!
# A299368: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299368, there is no canonical definition to state claims against.
-/

/-! ## A299368.P11370545130631001929

`A299373(∑[n+2]+4)`
-/

namespace A299368.P11370545130631001929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299368.P11370545130631001929

/-!
# A299369: Number of n X 4 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299369, there is no canonical definition to state claims against.
-/

/-! ## A299369.P15360529698139684555

`A299373(A374004(n+1))`
-/

namespace A299369.P15360529698139684555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374004 (n + 1)).toNat

end

end A299369.P15360529698139684555

/-! ## A299369.P6167133525089955588

`A299373(A141214(n+1))`
-/

namespace A299369.P6167133525089955588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A141214 (n + 1)).toNat

end

end A299369.P6167133525089955588

/-!
# A299370: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299370, there is no canonical definition to state claims against.
-/

/-! ## A299370.P14895906677305514349

`A299373(A374005(n+1))`
-/

namespace A299370.P14895906677305514349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374005 (n + 1)).toNat

end

end A299370.P14895906677305514349

/-!
# A299371: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299371, there is no canonical definition to state claims against.
-/

/-! ## A299371.P1119491050722936335

`A299373(A374007(n+1))`
-/

namespace A299371.P1119491050722936335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374007 (n + 1)).toNat

end

end A299371.P1119491050722936335

/-!
# A299372: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299372, there is no canonical definition to state claims against.
-/

/-! ## A299372.P11913417950779823942

`A299373(A374008(n+1))`
-/

namespace A299372.P11913417950779823942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (A374008 (n + 1)).toNat

end

end A299372.P11913417950779823942

/-!
# A299373: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299373, there is no canonical definition to state claims against.
-/

/-! ## A299373.P10760359113177336430

`A342770(A001263(n+1))+A298280(n+1)`
-/

namespace A299373.P10760359113177336430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342770 (A001263 (n + 1)).toNat + A298280 (n + 1)

end

end A299373.P10760359113177336430

/-! ## A299373.P6377930354130929042

`A298280(n+1)+A069283(A301443(n+1))`
-/

namespace A299373.P6377930354130929042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (n + 1) + A069283 (A301443 (n + 1)).toNat

end

end A299373.P6377930354130929042

/-! ## A299373.P4806911117919238846

`A299937(n+1)-A256974(A001263(n+1))`
-/

namespace A299373.P4806911117919238846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (n + 1) - A256974 (A001263 (n + 1)).toNat

end

end A299373.P4806911117919238846

/-! ## A299373.P5676107694866740832

`A299937(A000005(2^n))`
-/

namespace A299373.P5676107694866740832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A000005 (2 ^ n)).toNat

end

end A299373.P5676107694866740832

/-! ## A299373.P18062979061255936874

`A299937(A043320(n+1))`
-/

namespace A299373.P18062979061255936874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299937 (A043320 (n + 1)).toNat

end

end A299373.P18062979061255936874

/-!
# A299377: Numbers k such that k * 14^k - 1 is prime.

The programs for A299377, there is no canonical definition to state claims against.
-/

/-! ## A299377.P14953040577316441801

`∑[A105272(A055582(n))]`
-/

namespace A299377.P14953040577316441801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105272 (A055582 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299377.P14953040577316441801

/-!
# A299384: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299384, there is no canonical definition to state claims against.
-/

/-! ## A299384.P13440073801663282149

`A299388(∑[4*n]+1)`
-/

namespace A299384.P13440073801663282149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299384.P13440073801663282149

/-! ## A299384.P7846240720946006100

`record[A299388(Δ[A235355(n)])]`
-/

namespace A299384.P7846240720946006100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299384.P7846240720946006100

/-! ## A299384.P6181302765928075264

`record[A299388(A330613(n+1))]`
-/

namespace A299384.P6181302765928075264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299384.P6181302765928075264

/-! ## A299384.P15868401658220265370

`record[gcd(A008482(n), A299388(n+1))]`
-/

namespace A299384.P15868401658220265370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A299388 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299384.P15868401658220265370

/-!
# A299385: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299385, there is no canonical definition to state claims against.
-/

/-! ## A299385.P15369224257959646140

`A299388(A374005(n+1))`
-/

namespace A299385.P15369224257959646140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A374005 (n + 1)).toNat

end

end A299385.P15369224257959646140

/-!
# A299386: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299386, there is no canonical definition to state claims against.
-/

/-! ## A299386.P12593860543639722118

`A299388(A374007(n+1))`
-/

namespace A299386.P12593860543639722118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A374007 (n + 1)).toNat

end

end A299386.P12593860543639722118

/-!
# A299387: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299387, there is no canonical definition to state claims against.
-/

/-! ## A299387.P2021322354110649064

`A299388(C(n+8, 2)-n)`
-/

namespace A299387.P2021322354110649064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (Nat.choose (n + 8) 2 - n)

end

end A299387.P2021322354110649064

/-!
# A299388: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299388, there is no canonical definition to state claims against.
-/

/-! ## A299388.P7736445965130753457

`A298294(n+1)+A025466(A299905(n))`
-/

namespace A299388.P7736445965130753457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (n + 1) + A025466 (A299905 n).toNat

end

end A299388.P7736445965130753457

/-! ## A299388.P421112913577095774

`or(A298294(n+1), A321936(A067049(n)))`
-/

namespace A299388.P421112913577095774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A298294 (n + 1)) (A321936 (A067049 n).toNat)

end

end A299388.P421112913577095774

/-! ## A299388.P16404542877094207128

`A298294(n+1)+A002265(A010894(n))`
-/

namespace A299388.P16404542877094207128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (n + 1) + A002265 (A010894 (n + 21)).toNat

end

end A299388.P16404542877094207128

/-! ## A299388.P6417305390403529152

`or(A173677(A061426(n+1)), A298294(n+1))`
-/

namespace A299388.P6417305390403529152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A173677 (A061426 (n + 1)).toNat) (A298294 (n + 1))

end

end A299388.P6417305390403529152

/-! ## A299388.P14756290424799927246

`or(A236859(A185245(n)), A298294(n+1))`
-/

namespace A299388.P14756290424799927246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A236859 (A185245 n).toNat) (A298294 (n + 1))

end

end A299388.P14756290424799927246

/-!
# A299389: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299389, there is no canonical definition to state claims against.
-/

/-! ## A299389.P1134936007875936088

`A299393(∑[4*n]+1)`
-/

namespace A299389.P1134936007875936088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299389.P1134936007875936088

/-!
# A299390: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299390, there is no canonical definition to state claims against.
-/

/-! ## A299390.P93870641296507071

`A299393(A374005(n+1))`
-/

namespace A299390.P93870641296507071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A374005 (n + 1)).toNat

end

end A299390.P93870641296507071

/-!
# A299391: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299391, there is no canonical definition to state claims against.
-/

/-! ## A299391.P1734886196751455393

`A299393(A374007(n+1))`
-/

namespace A299391.P1734886196751455393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A374007 (n + 1)).toNat

end

end A299391.P1734886196751455393

/-!
# A299392: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299392, there is no canonical definition to state claims against.
-/

/-! ## A299392.P8986973422256560722

`A299393(A374008(n+1))`
-/

namespace A299392.P8986973422256560722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299393 (A374008 (n + 1)).toNat

end

end A299392.P8986973422256560722

/-!
# A299393: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299393, there is no canonical definition to state claims against.
-/

/-! ## A299393.P14751881281152894056

`A298320(n+1)+A185284(A334546(n))`
-/

namespace A299393.P14751881281152894056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (n + 1) + A185284 (A334546 n).toNat

end

end A299393.P14751881281152894056

/-! ## A299393.P11857722393703986213

`A298320(n+1)+A185284(A252463(n+1))`
-/

namespace A299393.P11857722393703986213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298320 (n + 1) + A185284 (A252463 (n + 1)).toNat

end

end A299393.P11857722393703986213

/-!
# A299394: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299394, there is no canonical definition to state claims against.
-/

/-! ## A299394.P16734244406067453373

`A299398(∑[4*n]+1)`
-/

namespace A299394.P16734244406067453373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299394.P16734244406067453373

/-!
# A299395: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299395, there is no canonical definition to state claims against.
-/

/-! ## A299395.P17675781831531759382

`A299398(A374005(n+1))`
-/

namespace A299395.P17675781831531759382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A374005 (n + 1)).toNat

end

end A299395.P17675781831531759382

/-!
# A299396: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299396, there is no canonical definition to state claims against.
-/

/-! ## A299396.P8459236274008967212

`A299398(A374007(n+1))`
-/

namespace A299396.P8459236274008967212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A374007 (n + 1)).toNat

end

end A299396.P8459236274008967212

/-!
# A299397: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A299397, there is no canonical definition to state claims against.
-/

/-! ## A299397.P14670986318252081782

`A299398(A374008(n+1))`
-/

namespace A299397.P14670986318252081782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299398 (A374008 (n + 1)).toNat

end

end A299397.P14670986318252081782

/-!
# A299399: a(n) = a(n-1)*a(n-2)*a(n-3)*a(n-4); a(0..3) = (1, 1, 2, 3).

The programs for A299399, the canonical program `A299399.P3084922686928374511` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299399 has offset 0).

The definition of A299399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)*a(n-4)` (program `A299399.P3084922686928374511`, by `A299399.P3084922686928374511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299399.P17458160303228159141

`a(n-1)²/a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A299399.P17458160303228159141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 3, 6] fun n a =>
  a (n - 1) ^ 2 / a (n - 5)

end

end A299399.P17458160303228159141

namespace A299399

/-- `a(n-1)²/a(n-5)` -/
def P17458160303228159141.Spec : Prop :=
  ∀ n, P17458160303228159141.a n = (A299399 n : ℚ)

end A299399

/-! ## A299399.P3084922686928374511

`a(n-1)*a(n-2)*a(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A299399

/-- `a(n-1)*a(n-2)*a(n-3)*a(n-4)` -/
def P3084922686928374511.Spec : Prop :=
  ∀ n, (P3084922686928374511.a n : ℤ) = A299399 n

theorem P3084922686928374511.correct : P3084922686928374511.Spec := by
  intro n
  simp only [A299399]

end A299399

/-! ## A299399.P9672330458776322088

`2^A001631(n)*3^A000078(n)`
-/

namespace A299399.P9672330458776322088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001631 n : ℤ) * (3 : ℚ) ^ (A000078 n : ℤ)

end

end A299399.P9672330458776322088

namespace A299399

/-- `2^A001631(n)*3^A000078(n)` -/
def P9672330458776322088.Spec : Prop :=
  ∀ n, P9672330458776322088.a n = (A299399 n : ℚ)

end A299399

