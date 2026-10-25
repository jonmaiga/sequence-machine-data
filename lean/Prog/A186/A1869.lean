import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A186900: Number of (n+1) X 8 binary arrays with every 2 X 2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock determinants.

The programs for A186900, there is no canonical definition to state claims against.
-/

/-! ## A186900.P3472943179249915894

`A186902(A374008(n+1))`
-/

namespace A186900.P3472943179249915894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A374008 (n + 1)).toNat

end

end A186900.P3472943179249915894

/-! ## A186900.P2074833707877358906

`A186902(A056119(n)+28)`
-/

namespace A186900.P2074833707877358906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A056119 n + 28).toNat

end

end A186900.P2074833707877358906

/-! ## A186900.P17713334214669205024

`A186902(A000124(n+6)+6)`
-/

namespace A186900.P17713334214669205024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000124 (n + 6) + 6).toNat

end

end A186900.P17713334214669205024

/-! ## A186900.P10507986628716177836

`A186902(A000096(n+5)+8)`
-/

namespace A186900.P10507986628716177836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000096 (n + 5) + 8).toNat

end

end A186900.P10507986628716177836

/-! ## A186900.P8551445166553962732

`A186902(A000217(n+6)+7)`
-/

namespace A186900.P8551445166553962732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000217 (n + 6) + 7).toNat

end

end A186900.P8551445166553962732

/-!
# A186901: Number of (n+1)X9 binary arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186901, there is no canonical definition to state claims against.
-/

/-! ## A186901.P2011922937555950942

`A186902(A374009(n+1))`
-/

namespace A186901.P2011922937555950942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A374009 (n + 1)).toNat

end

end A186901.P2011922937555950942

/-! ## A186901.P15070493207369238126

`A186902(A000124(n+7)+7)`
-/

namespace A186901.P15070493207369238126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000124 (n + 7) + 7).toNat

end

end A186901.P15070493207369238126

/-! ## A186901.P14842165619269697933

`A186902(A000217(n+7)+8)`
-/

namespace A186901.P14842165619269697933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A000217 (n + 7) + 8).toNat

end

end A186901.P14842165619269697933

/-! ## A186901.P4538035765286968955

`A186902(eq[7, A193592(n)])`
-/

namespace A186901.P4538035765286968955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186901.P4538035765286968955

/-! ## A186901.P1205034049634156268

`A186902(A052905(n+5)-2)`
-/

namespace A186901.P1205034049634156268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A052905 (n + 5) - 2).toNat

end

end A186901.P1205034049634156268

/-!
# A186903: Number of Gaussian primes (in the first half quadrant; i.e., 0 to 45 degrees) with real part <= 2^n.

The programs for A186903, there is no canonical definition to state claims against.
-/

/-! ## A186903.P8928969387616801204

`A057352(2^n)`
-/

namespace A186903.P8928969387616801204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (2 ^ n)

end

end A186903.P8928969387616801204

/-! ## A186903.P3300269156541770761

`record[A057352(A055248(n))]`
-/

namespace A186903.P3300269156541770761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186903.P3300269156541770761

/-! ## A186903.P8306782372275257620

`record[A057352(A059268(n))]`
-/

namespace A186903.P8306782372275257620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186903.P8306782372275257620

/-! ## A186903.P2893330945264783413

`record[A057352(A072345(n))]`
-/

namespace A186903.P2893330945264783413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (A072345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186903.P2893330945264783413

/-! ## A186903.P1729635189022187697

`record[A057352(A130321(n))]`
-/

namespace A186903.P1729635189022187697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057352 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186903.P1729635189022187697

/-!
# A186906: 

The programs for A186906, there is no canonical definition to state claims against.
-/

/-! ## A186906.P17624290107620744609

`A186915((n+1)²+n²)`
-/

namespace A186906.P17624290107620744609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 ((n + 1) ^ 2 + n ^ 2)

end

end A186906.P17624290107620744609

/-!
# A186907: Number of (n+2) X 3 0..6 arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186907, there is no canonical definition to state claims against.
-/

/-! ## A186907.P5674038287970693596

`A186915(∑[n]+1)`
-/

namespace A186907.P5674038287970693596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186907.P5674038287970693596

/-! ## A186907.P10808875339711459701

`record[root(A186915(n+1), A002260(n+1))]`
-/

namespace A186907.P10808875339711459701
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186915 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186907.P10808875339711459701

/-! ## A186907.P17900437356269534710

`record[A186915(A110514(A095832(n+1)))]`
-/

namespace A186907.P17900437356269534710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (A110514 (A095832 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186907.P17900437356269534710

/-! ## A186907.P7003383964002513950

`record[gcd(A025581(n), A186915(n+1))]`
-/

namespace A186907.P7003383964002513950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A186915 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186907.P7003383964002513950

/-! ## A186907.P15027932549777198173

`record[root(A186915(n+1), A049223(n+1))]`
-/

namespace A186907.P15027932549777198173
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186915 (n + 1) : ℝ) ^ (1 / (A049223 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186907.P15027932549777198173

/-!
# A186908: Number of (n+2) X 4 0..6 arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186908, there is no canonical definition to state claims against.
-/

/-! ## A186908.P17367885449398641825

`A186915(∑[n+1]+2)`
-/

namespace A186908.P17367885449398641825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186908.P17367885449398641825

/-!
# A186909: Number of (n+2)X5 0..6 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A186909, there is no canonical definition to state claims against.
-/

/-! ## A186909.P3838915695438007630

`A186915(∑[A028310(n)+2]+3)`
-/

namespace A186909.P3838915695438007630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A186909.P3838915695438007630

/-! ## A186909.P16235847582572744329

`A186915(∑[n+3]+1)`
-/

namespace A186909.P16235847582572744329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186909.P16235847582572744329

/-!
# A186910: 

The programs for A186910, there is no canonical definition to state claims against.
-/

/-! ## A186910.P8388728677262218228

`A186915(∑[n+4]+3)`
-/

namespace A186910.P8388728677262218228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A186910.P8388728677262218228

/-!
# A186913: 

The programs for A186913, there is no canonical definition to state claims against.
-/

/-! ## A186913.P4842231232774077256

`A186915(A055999(n+3)+n+7)`
-/

namespace A186913.P4842231232774077256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186915 (A055999 (n + 3) + (n + 7 : ℤ)).toNat

end

end A186913.P4842231232774077256

/-!
# A186916: Number of (n+1)X3 0..3 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186916, there is no canonical definition to state claims against.
-/

/-! ## A186916.P9601020556396952455

`A186923(∑[n+1]+2)`
-/

namespace A186916.P9601020556396952455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186916.P9601020556396952455

/-! ## A186916.P17695887821374111970

`record[A186923(A333530(n+1))]`
-/

namespace A186916.P17695887821374111970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186916.P17695887821374111970

/-!
# A186917: Number of (n+1)X4 0..3 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186917, there is no canonical definition to state claims against.
-/

/-! ## A186917.P15272202608608706798

`A186923(∑[n+2]+4)`
-/

namespace A186917.P15272202608608706798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186917.P15272202608608706798

/-! ## A186917.P1475513526741216229

`lcm(2, A186923(A167614(n+1)))`
-/

namespace A186917.P1475513526741216229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186923 (A167614 (n + 1)).toNat)

end

end A186917.P1475513526741216229

/-! ## A186917.P10946746894652885075

`A186923(A167614(n+1))*A262681(n)`
-/

namespace A186917.P10946746894652885075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A167614 (n + 1)).toNat * A262681 n

end

end A186917.P10946746894652885075

/-! ## A186917.P15672546425545262910

`A186923(A167614(n+1))+A067898(n+1)`
-/

namespace A186917.P15672546425545262910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A167614 (n + 1)).toNat + A067898 (n + 1)

end

end A186917.P15672546425545262910

/-! ## A186917.P4556307132593144894

`A186923(A167614(n+1))/A262681(n+1)`
-/

namespace A186917.P4556307132593144894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186923 (A167614 (n + 1)).toNat : ℚ) / (A262681 (n + 1) : ℚ)

end

end A186917.P4556307132593144894

/-!
# A186918: Number of (n+1)X5 0..3 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186918, there is no canonical definition to state claims against.
-/

/-! ## A186918.P8736210712089265435

`A186923(A141214(n)+7)`
-/

namespace A186918.P8736210712089265435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A141214 n + 7).toNat

end

end A186918.P8736210712089265435

/-! ## A186918.P9841160990172866700

`A186923(A055999(n)+10)`
-/

namespace A186918.P9841160990172866700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A055999 n + 10).toNat

end

end A186918.P9841160990172866700

/-! ## A186918.P654862325918649006

`A186923(A167614(n+2)+1)`
-/

namespace A186918.P654862325918649006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A167614 (n + 2) + 1).toNat

end

end A186918.P654862325918649006

/-!
# A186919: Number of (n+1)X6 0..3 arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186919, there is no canonical definition to state claims against.
-/

/-! ## A186919.P10327649446822248211

`A186923(A374005(n+1))`
-/

namespace A186919.P10327649446822248211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A374005 (n + 1)).toNat

end

end A186919.P10327649446822248211

/-! ## A186919.P8122851089663388550

`A186923(A167499(n+3))`
-/

namespace A186919.P8122851089663388550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A167499 (n + 3)).toNat

end

end A186919.P8122851089663388550

/-!
# A186920: 

The programs for A186920, there is no canonical definition to state claims against.
-/

/-! ## A186920.P464148298894740199

`A186923(A052905(n+3))`
-/

namespace A186920.P464148298894740199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A052905 (n + 3)).toNat

end

end A186920.P464148298894740199

/-!
# A186921: 

The programs for A186921, there is no canonical definition to state claims against.
-/

/-! ## A186921.P15739355160029824488

`A186923(A000124(n+6)+n)`
-/

namespace A186921.P15739355160029824488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186923 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A186921.P15739355160029824488

/-!
# A186924: Expansion of (phi(-q^3) / phi(-q))^2 in powers of q where phi is a Ramanujan theta function.

The programs for A186924, there is no canonical definition to state claims against.
-/

/-! ## A186924.P11906556146682496053

`A036453(n+1)*A260058(n)`
-/

namespace A186924.P11906556146682496053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A260058 n

end

end A186924.P11906556146682496053

/-! ## A186924.P2202141088975715881

`A260058(n)*A280560(2*n)`
-/

namespace A186924.P2202141088975715881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260058 n * A280560 (2 * n)

end

end A186924.P2202141088975715881

/-! ## A186924.P190144950676583476

`A260058(n)/A261154(n)*A261156(n)`
-/

namespace A186924.P190144950676583476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260058 n : ℚ) / (A261154 n : ℚ) * (A261156 n : ℚ)

end

end A186924.P190144950676583476

/-! ## A186924.P17386978703315560839

`abs(A261320(n))`
-/

namespace A186924.P17386978703315560839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261320 n|

end

end A186924.P17386978703315560839

/-! ## A186924.P6527337286474223533

`A033999(n)*A261320(n)`
-/

namespace A186924.P6527337286474223533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261320 n

end

end A186924.P6527337286474223533

/-! ## A186924.P108745398413045491

`gcd(A000038(n), A261320(n))`
-/

namespace A186924.P108745398413045491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261320 n)

end

end A186924.P108745398413045491

/-! ## A186924.P2995551123931358986

`lcm(A000034(n), A261320(n))`
-/

namespace A186924.P2995551123931358986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A261320 n)

end

end A186924.P2995551123931358986

/-! ## A186924.P9698406912130189232

`A260057(n)/A260150(n)*A261320(n)`
-/

namespace A186924.P9698406912130189232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260057 n : ℚ) / (A260150 n : ℚ) * (A261320 n : ℚ)

end

end A186924.P9698406912130189232

/-! ## A186924.P6337593231228684028

`A260215(n)/A261156(n)*A261320(n)`
-/

namespace A186924.P6337593231228684028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260215 n : ℚ) / (A261156 n : ℚ) * (A261320 n : ℚ)

end

end A186924.P6337593231228684028

/-! ## A186924.P4100331845563838011

`record[A398619(n)]`
-/

namespace A186924.P4100331845563838011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186924.P4100331845563838011

/-! ## A186924.P14441855339078456494

`A217771(3*n)`
-/

namespace A186924.P14441855339078456494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217771 (3 * n)

end

end A186924.P14441855339078456494

/-! ## A186924.P13916824592309941129

`A261156(3*n)`
-/

namespace A186924.P13916824592309941129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261156 (3 * n)

end

end A186924.P13916824592309941129

/-! ## A186924.P1276809782600217181

`A293387(3*n)`
-/

namespace A186924.P1276809782600217181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293387 (3 * n)

end

end A186924.P1276809782600217181

/-! ## A186924.P14976811819172896104

`A398619(3*n)`
-/

namespace A186924.P14976811819172896104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398619 (3 * n)

end

end A186924.P14976811819172896104

/-! ## A186924.P1586976720418013322

`abs(A233673(3*n))`
-/

namespace A186924.P1586976720418013322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A233673 (3 * n)|

end

end A186924.P1586976720418013322

/-! ## A186924.P5943678246239984800

`abs(A260215(3*n))`
-/

namespace A186924.P5943678246239984800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260215 (3 * n)|

end

end A186924.P5943678246239984800

/-! ## A186924.P9752084546354639952

`abs(A261321(3*n))`
-/

namespace A186924.P9752084546354639952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261321 (3 * n)|

end

end A186924.P9752084546354639952

/-! ## A186924.P9698238536161127032

`abs(A261326(3*n))`
-/

namespace A186924.P9698238536161127032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261326 (3 * n)|

end

end A186924.P9698238536161127032

/-! ## A186924.P1598420681639906936

`abs(A262930(3*n))`
-/

namespace A186924.P1598420681639906936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262930 (3 * n)|

end

end A186924.P1598420681639906936

/-!
# A186925: Coefficient of x^n in (1+n*x+x^2)^n.

The programs for A186925, there is no canonical definition to state claims against.
-/

/-! ## A186925.P8476366574179432772

`A292627(∑[4*n])`
-/

namespace A186925.P8476366574179432772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186925.P8476366574179432772

/-! ## A186925.P13223049864687452663

`lcm((-1)^n, A292627(A046092(n)))`
-/

namespace A186925.P13223049864687452663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A292627 (A046092 n).toNat)

end

end A186925.P13223049864687452663

/-! ## A186925.P16368676974147125664

`gcd(A000038(n), A292627(A046092(n)))`
-/

namespace A186925.P16368676974147125664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A292627 (A046092 n).toNat)

end

end A186925.P16368676974147125664

/-! ## A186925.P2456233608487886365

`or(A000035(n), A292627(A046092(n)))`
-/

namespace A186925.P2456233608487886365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A292627 (A046092 n).toNat)

end

end A186925.P2456233608487886365

/-! ## A186925.P15006445660348326839

`A007318(A057944(n))*A292627(A046092(n))`
-/

namespace A186925.P15006445660348326839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * A292627 (A046092 n).toNat

end

end A186925.P15006445660348326839

/-!
# A186926: Maximal number of isosceles right triangles in a set of n points in the plane.

The programs for A186926, there is no canonical definition to state claims against.
-/

/-! ## A186926.P3736459774884604229

`∑[A268243(A138573(n))+n]`
-/

namespace A186926.P3736459774884604229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268243 (A138573 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186926.P3736459774884604229

/-! ## A186926.P8985209620801081256

`A327467(∑[∑[A028871(n+1)]])`
-/

namespace A186926.P8985209620801081256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186926.P8985209620801081256

/-! ## A186926.P3461640583390786148

`A118030(n+2)-A131852(A000918(n+3))`
-/

namespace A186926.P3461640583390786148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118030 (n + 2) - A131852 (A000918 (n + 3)).toNat

end

end A186926.P3461640583390786148

/-! ## A186926.P1659064617076194104

`∑[A056239(A278834(n+4))-2]`
-/

namespace A186926.P1659064617076194104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A278834 (n + 4)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186926.P1659064617076194104

/-! ## A186926.P839147446312317158

`∑[A034838(A191970(n))%3+n]`
-/

namespace A186926.P839147446312317158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034838 (A191970 n).toNat) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186926.P839147446312317158

/-!
# A186927: Lesser of two consecutive 3-smooth numbers having no common divisors.

The programs for A186927, there is no canonical definition to state claims against.
-/

/-! ## A186927.P4487289247426820083

`record[gcd(A006899(n+1), A096067(n+1))]`
-/

namespace A186927.P4487289247426820083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006899 (n + 1)) (A096067 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186927.P4487289247426820083

/-! ## A186927.P14760762814814190087

`A003586(A186771(n+1))`
-/

namespace A186927.P14760762814814190087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A186771 (n + 1)).toNat

end

end A186927.P14760762814814190087

/-! ## A186927.P932661134221225227

`record[A003586(n+1)/A186711(n+1)]`
-/

namespace A186927.P932661134221225227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003586 (n + 1) : ℚ) / (A186711 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186927.P932661134221225227

/-! ## A186927.P6044546338148738328

`record[sqrt(A025620(n+1))/A186711(n+1)]`
-/

namespace A186927.P6044546338148738328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025620 (n + 1) : ℝ) / (A186711 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186927.P6044546338148738328

/-! ## A186927.P13678129478545262817

`A186928(n+1)-A061987(A186771(n+1))`
-/

namespace A186927.P13678129478545262817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186928 (n + 1) - A061987 (A186771 (n + 1)).toNat

end

end A186927.P13678129478545262817

/-!
# A186928: Greater of two consecutive 3-smooth numbers having no common divisors.

The programs for A186928, there is no canonical definition to state claims against.
-/

/-! ## A186928.P4603229952153214740

`A003586(A186771(n+1)+1)`
-/

namespace A186928.P4603229952153214740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A186771 (n + 1) + 1).toNat

end

end A186928.P4603229952153214740

/-! ## A186928.P10433847508371106164

`A186927(n+1)+A061987(A186771(n+1))`
-/

namespace A186928.P10433847508371106164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186927 (n + 1) + A061987 (A186771 (n + 1)).toNat

end

end A186928.P10433847508371106164

/-!
# A186931: Number of (n+1) X (n+1) binary arrays with every 2 X 2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock traces.

The programs for A186931, there is no canonical definition to state claims against.
-/

/-! ## A186931.P14939467311099179251

`A186939(∑[4*n]+1)`
-/

namespace A186931.P14939467311099179251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186931.P14939467311099179251

/-! ## A186931.P93126468539801475

`lcm(2, A186939(A001844(n)))`
-/

namespace A186931.P93126468539801475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186939 (A001844 n).toNat)

end

end A186931.P93126468539801475

/-! ## A186931.P15573603752563868361

`record[A003982(n)*A186939(n+1)]`
-/

namespace A186931.P15573603752563868361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A186939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186931.P15573603752563868361

/-! ## A186931.P16221708050677150724

`record[A077606(n+1)*A186939(n+1)]`
-/

namespace A186931.P16221708050677150724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A186939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186931.P16221708050677150724

/-! ## A186931.P10295832268108343596

`record[A186939(n+1)*A203994(n+1)]`
-/

namespace A186931.P10295832268108343596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186931.P10295832268108343596

/-!
# A186932: Number of (n+1) X 3 binary arrays with every 2 X 2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock traces.

The programs for A186932, there is no canonical definition to state claims against.
-/

/-! ## A186932.P15529629667554164591

`A186939(∑[n+1]+2)`
-/

namespace A186932.P15529629667554164591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186932.P15529629667554164591

/-! ## A186932.P2242244242713430651

`record[A010054(n)*A186939(n+2)]`
-/

namespace A186932.P2242244242713430651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186939 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186932.P2242244242713430651

/-! ## A186932.P5580983755965904876

`A186939(A000096(n)+3)%A002189(n)²`
-/

namespace A186932.P5580983755965904876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186939 (A000096 n + 3).toNat) (A002189 n ^ 2)

end

end A186932.P5580983755965904876

/-! ## A186932.P9979353618157768303

`or(A000302(n+2), A186939(A000096(n)+3))`
-/

namespace A186932.P9979353618157768303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000302 (n + 2)) (A186939 (A000096 n + 3).toNat)

end

end A186932.P9979353618157768303

/-! ## A186932.P13908266734417960546

`A007318(A000217(n))*A186939(A000096(n)+3)`
-/

namespace A186932.P13908266734417960546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A186939 (A000096 n + 3).toNat

end

end A186932.P13908266734417960546

/-!
# A186933: Number of (n+1) X 4 binary arrays with every 2 X 2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock traces.

The programs for A186933, there is no canonical definition to state claims against.
-/

/-! ## A186933.P2910813208589784849

`A186939(∑[n+2]+4)`
-/

namespace A186933.P2910813208589784849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186933.P2910813208589784849

/-! ## A186933.P13361096169503226189

`lcm(2, A186939(A167614(n+1)))`
-/

namespace A186933.P13361096169503226189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186939 (A167614 (n + 1)).toNat)

end

end A186933.P13361096169503226189

/-! ## A186933.P5741192503071024374

`A186939(A167614(n+1))%A017263(n)`
-/

namespace A186933.P5741192503071024374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186939 (A167614 (n + 1)).toNat) (A017263 n)

end

end A186933.P5741192503071024374

/-! ## A186933.P13503910940762568990

`A322437(n+1)+A186939(A167614(n+1))`
-/

namespace A186933.P13503910940762568990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (n + 1) + A186939 (A167614 (n + 1)).toNat

end

end A186933.P13503910940762568990

/-! ## A186933.P4602509077971201056

`A186939(A167499(n)+n)+A065685(n+1)`
-/

namespace A186933.P4602509077971201056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A167499 n + (n : ℤ)).toNat + A065685 (n + 1)

end

end A186933.P4602509077971201056

/-!
# A186934: Number of (n+1) X 5 binary arrays with every 2 X 2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock traces.

The programs for A186934, there is no canonical definition to state claims against.
-/

/-! ## A186934.P8501177000393457556

`A186939(A374004(n+1))`
-/

namespace A186934.P8501177000393457556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A374004 (n + 1)).toNat

end

end A186934.P8501177000393457556

/-! ## A186934.P10960911008123452537

`A186939(A141214(n)+7)`
-/

namespace A186934.P10960911008123452537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A141214 n + 7).toNat

end

end A186934.P10960911008123452537

/-! ## A186934.P15378202879124217407

`A186939(A052905(n)+9)`
-/

namespace A186934.P15378202879124217407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A052905 n + 9).toNat

end

end A186934.P15378202879124217407

/-! ## A186934.P7160954666811199298

`A186939(A055999(n)+10)`
-/

namespace A186934.P7160954666811199298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A055999 n + 10).toNat

end

end A186934.P7160954666811199298

/-! ## A186934.P10283499487871239531

`A186939(A167614(n+2)+1)`
-/

namespace A186934.P10283499487871239531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A167614 (n + 2) + 1).toNat

end

end A186934.P10283499487871239531

/-!
# A186935: Number of (n+1)X6 binary arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186935, there is no canonical definition to state claims against.
-/

/-! ## A186935.P7405639919772026889

`A186939(∑[n+4]+11)`
-/

namespace A186935.P7405639919772026889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A186935.P7405639919772026889

/-! ## A186935.P775207380662904654

`lcm(2, A186939(A167499(n+3)))`
-/

namespace A186935.P775207380662904654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186939 (A167499 (n + 3)).toNat)

end

end A186935.P775207380662904654

/-! ## A186935.P828424260395781236

`A186939(A374005(n+1))+A184945(n)`
-/

namespace A186935.P828424260395781236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A374005 (n + 1)).toNat + A184945 n

end

end A186935.P828424260395781236

/-! ## A186935.P5034300136502260302

`A186939(A167499(n+3))+A065685(n+1)`
-/

namespace A186935.P5034300136502260302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A167499 (n + 3)).toNat + A065685 (n + 1)

end

end A186935.P5034300136502260302

/-! ## A186935.P7544178352634407580

`A322437(n+1)+A186939(A167499(n+3))`
-/

namespace A186935.P7544178352634407580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (n + 1) + A186939 (A167499 (n + 3)).toNat

end

end A186935.P7544178352634407580

/-!
# A186936: Number of (n+1)X7 binary arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186936, there is no canonical definition to state claims against.
-/

/-! ## A186936.P16553054614544278499

`A186939(A374007(n+1))`
-/

namespace A186936.P16553054614544278499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A374007 (n + 1)).toNat

end

end A186936.P16553054614544278499

/-! ## A186936.P15040808756141338189

`A186939(A056115(n)+21)`
-/

namespace A186936.P15040808756141338189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A056115 n + 21).toNat

end

end A186936.P15040808756141338189

/-! ## A186936.P2680145590040692836

`A186939(A246172(n+1)+20)`
-/

namespace A186936.P2680145590040692836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A246172 (n + 1) + 20).toNat

end

end A186936.P2680145590040692836

/-! ## A186936.P16661619962166060606

`A186939(eq[7, A131818(n+1)])`
-/

namespace A186936.P16661619962166060606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186936.P16661619962166060606

/-! ## A186936.P15997431967559948562

`A186939(Δ[A023545(n+1)]+10)`
-/

namespace A186936.P15997431967559948562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (f1 (n + 1) - f1 n + 10).toNat

end

end A186936.P15997431967559948562

/-!
# A186937: Number of (n+1)X8 binary arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186937, there is no canonical definition to state claims against.
-/

/-! ## A186937.P1443125942157115984

`A186939(A374008(n+1))`
-/

namespace A186937.P1443125942157115984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A374008 (n + 1)).toNat

end

end A186937.P1443125942157115984

/-! ## A186937.P14104440659524352258

`A186939(eq[8, A131818(n+1)])`
-/

namespace A186937.P14104440659524352258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186937.P14104440659524352258

/-! ## A186937.P9708389748172564474

`A186939(A055999(n+4))`
-/

namespace A186937.P9708389748172564474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A055999 (n + 4)).toNat

end

end A186937.P9708389748172564474

/-! ## A186937.P7852839589125469180

`A186939(eq[4, A219347(n)])`
-/

namespace A186937.P7852839589125469180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186937.P7852839589125469180

/-! ## A186937.P3043206951481489615

`A186939(eq[6, A193592(n)])`
-/

namespace A186937.P3043206951481489615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186937.P3043206951481489615

/-!
# A186938: Number of (n+1)X9 binary arrays with every 2X2 subblock trace equal to exactly one or two horizontal and vertical neighbor 2X2 subblock traces.

The programs for A186938, there is no canonical definition to state claims against.
-/

/-! ## A186938.P9529102600015482621

`A186939(A374009(n+1))`
-/

namespace A186938.P9529102600015482621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (A374009 (n + 1)).toNat

end

end A186938.P9529102600015482621

/-! ## A186938.P15364573005706211686

`A186939(eq[9, A131818(n+1)])`
-/

namespace A186938.P15364573005706211686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186938.P15364573005706211686

/-! ## A186938.P5208358216847745836

`A186939(eq[5, A219347(n)])`
-/

namespace A186938.P5208358216847745836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186938.P5208358216847745836

/-! ## A186938.P14188777512127070298

`A186939(eq[7, A193592(n)])`
-/

namespace A186938.P14188777512127070298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186938.P14188777512127070298

/-! ## A186938.P5806149017538609958

`A186939(eq[12, A185782(n+1)])`
-/

namespace A186938.P5806149017538609958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186938.P5806149017538609958

/-!
# A186940: Diagonal sums of number triangle A114709.

The programs for A186940, there is no canonical definition to state claims against.
-/

/-! ## A186940.P17677940483730741015

`A325192(A163102(n))+A048967(n)`
-/

namespace A186940.P17677940483730741015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325192 (A163102 n).toNat + A048967 n

end

end A186940.P17677940483730741015

/-! ## A186940.P16549268957367277003

`xor(A002931(n+1), A030547(A002426(n)))`
-/

namespace A186940.P16549268957367277003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002931 (n + 1)) (A030547 (A002426 n).toNat)

end

end A186940.P16549268957367277003

/-! ## A186940.P16538721198259148976

`xor(A002931(n+1), A074971(A317349(n)))`
-/

namespace A186940.P16538721198259148976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002931 (n + 1)) (A074971 (A317349 n).toNat)

end

end A186940.P16538721198259148976

/-!
# A186941: a(n)=2^C(n,2)*(2(4^n-n*2^n)-1).

The programs for A186941, the canonical program `A186941.P16185368005166289139` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186941 has offset 0).

The definition of A186941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^C(n, 2)*(2*(4^n-n*2^n)-1)` (program `A186941.P16185368005166289139`, by `A186941.P16185368005166289139.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186941.P16185368005166289139

`2^C(n, 2)*(2*(4^n-n*2^n)-1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186941

/-- `2^C(n, 2)*(2*(4^n-n*2^n)-1)` -/
def P16185368005166289139.Spec : Prop :=
  ∀ n, P16185368005166289139.a n = A186941 n

theorem P16185368005166289139.correct : P16185368005166289139.Spec := by
  intro n
  simp only [A186941]

end A186941

/-! ## A186941.P16483170746495961256

`((2^n-n)*2^(n+1)-1)*∏[ceil(2^(n-1))]`
-/

namespace A186941.P16483170746495961256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 ^ n : ℤ) - (n : ℤ)) * (2 ^ (n + 1) : ℤ) - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A186941.P16483170746495961256

namespace A186941

/-- `((2^n-n)*2^(n+1)-1)*∏[ceil(2^(n-1))]` -/
def P16483170746495961256.Spec : Prop :=
  ∀ n, P16483170746495961256.a n = A186941 n

end A186941

/-! ## A186941.P6066683968555568151

`lcm((2^n-n)*2^(n+1)-1, ∏[A011782(n)])`
-/

namespace A186941.P6066683968555568151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((2 ^ n : ℤ) - (n : ℤ)) * (2 ^ (n + 1) : ℤ) - 1) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A186941.P6066683968555568151

namespace A186941

/-- `lcm((2^n-n)*2^(n+1)-1, ∏[A011782(n)])` -/
def P6066683968555568151.Spec : Prop :=
  ∀ n, (P6066683968555568151.a n : ℤ) = A186941 n

end A186941

/-! ## A186941.P7528651390123230804

`lcm(A006125(n), A186942(n))`
-/

namespace A186941.P7528651390123230804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006125 n) (A186942 n)

end

end A186941.P7528651390123230804

namespace A186941

/-- `lcm(A006125(n), A186942(n))` -/
def P7528651390123230804.Spec : Prop :=
  ∀ n, (P7528651390123230804.a n : ℤ) = A186941 n

end A186941

/-! ## A186941.P11278517382410428858

`abs(∑[(A083329(n)-n)*2^n]*A006125(n))`
-/

namespace A186941.P11278517382410428858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083329 n - (n : ℤ)) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A006125 n|

end

end A186941.P11278517382410428858

namespace A186941

/-- `abs(∑[(A083329(n)-n)*2^n]*A006125(n))` -/
def P11278517382410428858.Spec : Prop :=
  ∀ n, P11278517382410428858.a n = A186941 n

end A186941

/-!
# A186942: a(n)=2(4^n-n*2^n)-1.

The programs for A186942, the canonical program `A186942.P17418210838155715363` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186942 has offset 0).

The definition of A186942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(4^n-n*2^n)-1` (program `A186942.P17418210838155715363`, by `A186942.P17418210838155715363.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186942.P17418210838155715363

`2*(4^n-n*2^n)-1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186942

/-- `2*(4^n-n*2^n)-1` -/
def P17418210838155715363.Spec : Prop :=
  ∀ n, P17418210838155715363.a n = A186942 n

theorem P17418210838155715363.correct : P17418210838155715363.Spec := by
  intro n
  simp only [A186942]

end A186942

/-! ## A186942.P3776792378928465883

`∑[(A083329(n)-n)*2^n]`
-/

namespace A186942.P3776792378928465883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083329 n - (n : ℤ)) * (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186942.P3776792378928465883

namespace A186942

/-- `∑[(A083329(n)-n)*2^n]` -/
def P3776792378928465883.Spec : Prop :=
  ∀ n, P3776792378928465883.a n = A186942 n

end A186942

/-! ## A186942.P12668831356766468177

`xor(A014480(n), A129868(n))`
-/

namespace A186942.P12668831356766468177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014480 n) (A129868 n)

end

end A186942.P12668831356766468177

namespace A186942

/-- `xor(A014480(n), A129868(n))` -/
def P12668831356766468177.Spec : Prop :=
  ∀ n, P12668831356766468177.a n = A186942 n

end A186942

/-! ## A186942.P8264717934024373535

`∑[A011782(n)*A097813(n)]`
-/

namespace A186942.P8264717934024373535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A097813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186942.P8264717934024373535

namespace A186942

/-- `∑[A011782(n)*A097813(n)]` -/
def P8264717934024373535.Spec : Prop :=
  ∀ n, P8264717934024373535.a n = A186942 n

end A186942

/-! ## A186942.P5681189355984479965

`xor(A058922(n+1), A083420(n))`
-/

namespace A186942.P5681189355984479965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058922 (n + 1)) (A083420 n)

end

end A186942.P5681189355984479965

namespace A186942

/-- `xor(A058922(n+1), A083420(n))` -/
def P5681189355984479965.Spec : Prop :=
  ∀ n, P5681189355984479965.a n = A186942 n

end A186942

/-! ## A186942.P14603418515106458960

`∑[(A050488(n)+1)*A011782(n)]`
-/

namespace A186942.P14603418515106458960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050488 n + 1) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186942.P14603418515106458960

namespace A186942

/-- `∑[(A050488(n)+1)*A011782(n)]` -/
def P14603418515106458960.Spec : Prop :=
  ∀ n, P14603418515106458960.a n = A186942 n

end A186942

/-! ## A186942.P618474390429267642

`xor(record[A290235(n)], A058922(n+1))`
-/

namespace A186942.P618474390429267642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A058922 (n + 1))

end

end A186942.P618474390429267642

namespace A186942

/-- `xor(record[A290235(n)], A058922(n+1))` -/
def P618474390429267642.Spec : Prop :=
  ∀ n, P618474390429267642.a n = A186942 n

end A186942

/-! ## A186942.P307087891332006664

`∑[(∑[A003945(n)]-2*n)*A011782(n)]`
-/

namespace A186942.P307087891332006664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - (2 * n : ℤ)) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186942.P307087891332006664

namespace A186942

/-- `∑[(∑[A003945(n)]-2*n)*A011782(n)]` -/
def P307087891332006664.Spec : Prop :=
  ∀ n, P307087891332006664.a n = A186942 n

end A186942

/-!
# A186943: Number of lunar divisors (in base 10) of the n-th number whose decimal expansion contains only 0's and 1's and begins and ends with a 1 (A099821(n)).

The programs for A186943, there is no canonical definition to state claims against.
-/

/-! ## A186943.P2617415929363851042

`A186951(Δ[n²])`
-/

namespace A186943.P2617415929363851042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A186943.P2617415929363851042

/-! ## A186943.P7779636036387280479

`lcm(3, A186951(2*n+1))`
-/

namespace A186943.P7779636036387280479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A186951 (2 * n + 1))

end

end A186943.P7779636036387280479

/-! ## A186943.P13298398092338024675

`root(A186951(or(1, 2*n)), 2)²`
-/

namespace A186943.P13298398092338024675
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A186951 (Nat.lor 1 (2 * n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A186943.P13298398092338024675

/-! ## A186943.P6198265231849979153

`∏{digits}[(-1)^n, A186951(or(#, 2*n))]`
-/

namespace A186943.P6198265231849979153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A186951 (Nat.lor x (2 * n))).prod

end

end A186943.P6198265231849979153

/-! ## A186943.P3556295567243085132

`or(A000007(n), A186951(2*n+1))`
-/

namespace A186943.P3556295567243085132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186951 (2 * n + 1))

end

end A186943.P3556295567243085132

/-! ## A186943.P12829824641709005424

`A186951(2*n+1)^abs(A033999(n))`
-/

namespace A186943.P12829824641709005424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186951 (2 * n + 1) : ℚ) ^ (|A033999 n| : ℤ)

end

end A186943.P12829824641709005424

/-! ## A186943.P4352796777983557217

`char[A004448(n)]*A186951(2*n+1)`
-/

namespace A186943.P4352796777983557217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A186951 (2 * n + 1)

end

end A186943.P4352796777983557217

/-! ## A186943.P8997571005089027539

`A007318(∑[n])*A186951(or(1, 2*n))`
-/

namespace A186943.P8997571005089027539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A186951 (Nat.lor 1 (2 * n))

end

end A186943.P8997571005089027539

/-! ## A186943.P9149506656085583693

`A186951(2*n+1)+A008683(9*(n+1))`
-/

namespace A186943.P9149506656085583693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (2 * n + 1) + A008683 (9 * (n + 1))

end

end A186943.P9149506656085583693

/-! ## A186943.P9684922165550997465

`A186951(2*n+1)+val(A000040(n+2), 2)`
-/

namespace A186943.P9684922165550997465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186951 (2 * n + 1) + (SequenceMachineLib.valuation (A000040 (n + 2)).toNat 2 : ℤ)

end

end A186943.P9684922165550997465

/-!
# A186944: Geometric mean of n-th row of A080508.

The programs for A186944, the canonical program `A186944.P3162339344741900167` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186944 has offset 1).

The definition of A186944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186944.P3162339344741900167

`lcm(a(n-1), ∏{p}[n, #])` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186944

/-- `lcm(a(n-1), ∏{p}[n, #])` -/
def P3162339344741900167.Spec : Prop :=
  ∀ n, (P3162339344741900167.a n : ℤ) = A186944 (n + 1)

theorem P3162339344741900167.correct : P3162339344741900167.Spec := by
  intro n
  simp only [A186944, Nat.add_sub_cancel]

end A186944

/-! ## A186944.P10207465452647861646

`gcd(n, 1-gcd(n, a(n-1)))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A186944.P10207465452647861646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.gcd (n : ℤ) (1 - (Nat.gcd n (a (n - 1)) : ℤ)) * a (n - 1)

end

end A186944.P10207465452647861646

namespace A186944

/-- `gcd(n, 1-gcd(n, a(n-1)))*a(n-1)` -/
def P10207465452647861646.Spec : Prop :=
  ∀ n, (P10207465452647861646.a n : ℤ) = A186944 (n + 1)

end A186944

/-! ## A186944.P5061739737770462540

`A034386(char[1]+n)`
-/

namespace A186944.P5061739737770462540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A186944.P5061739737770462540

namespace A186944

/-- `A034386(char[1]+n)` -/
def P5061739737770462540.Spec : Prop :=
  ∀ n, P5061739737770462540.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P13319975728281905485

`A300951(2*n)+char[1]`
-/

namespace A186944.P13319975728281905485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (2 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186944.P13319975728281905485

namespace A186944

/-- `A300951(2*n)+char[1]` -/
def P13319975728281905485.Spec : Prop :=
  ∀ n, P13319975728281905485.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P17983182163148145873

`A300951(A223134(n))`
-/

namespace A186944.P17983182163148145873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A223134 n).toNat

end

end A186944.P17983182163148145873

namespace A186944

/-- `A300951(A223134(n))` -/
def P17983182163148145873.Spec : Prop :=
  ∀ n, P17983182163148145873.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P8305455049423028514

`A300951(A014601(n)+1)`
-/

namespace A186944.P8305455049423028514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A014601 n + 1).toNat

end

end A186944.P8305455049423028514

namespace A186944

/-- `A300951(A014601(n)+1)` -/
def P8305455049423028514.Spec : Prop :=
  ∀ n, P8305455049423028514.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P1588319391481289116

`A063524(n)+A034386(n)`
-/

namespace A186944.P1588319391481289116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A034386 n

end

end A186944.P1588319391481289116

namespace A186944

/-- `A063524(n)+A034386(n)` -/
def P1588319391481289116.Spec : Prop :=
  ∀ n, P1588319391481289116.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P5126688612821257614

`A034386(n)-A159075(n)`
-/

namespace A186944.P5126688612821257614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n - A159075 n

end

end A186944.P5126688612821257614

namespace A186944

/-- `A034386(n)-A159075(n)` -/
def P5126688612821257614.Spec : Prop :=
  ∀ n, P5126688612821257614.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P6642289822326816320

`A034386(n)*A373565(n)`
-/

namespace A186944.P6642289822326816320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n * A373565 n

end

end A186944.P6642289822326816320

namespace A186944

/-- `A034386(n)*A373565(n)` -/
def P6642289822326816320.Spec : Prop :=
  ∀ n, P6642289822326816320.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P8666568603488968697

`lcm(A000034(n), A034386(n))`
-/

namespace A186944.P8666568603488968697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A034386 n)

end

end A186944.P8666568603488968697

namespace A186944

/-- `lcm(A000034(n), A034386(n))` -/
def P8666568603488968697.Spec : Prop :=
  ∀ n, (P8666568603488968697.a n : ℤ) = A186944 (n + 1)

end A186944

/-! ## A186944.P12954620063072098429

`lcm(A056839(n), A319865(n+1))`
-/

namespace A186944.P12954620063072098429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056839 n) (A319865 (n + 1))

end

end A186944.P12954620063072098429

namespace A186944

/-- `lcm(A056839(n), A319865(n+1))` -/
def P12954620063072098429.Spec : Prop :=
  ∀ n, (P12954620063072098429.a n : ℤ) = A186944 (n + 1)

end A186944

/-! ## A186944.P5068602795301571263

`A034386(n)+A254667(n)-n`
-/

namespace A186944.P5068602795301571263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n + (A254667 n - (n : ℤ))

end

end A186944.P5068602795301571263

namespace A186944

/-- `A034386(n)+A254667(n)-n` -/
def P5068602795301571263.Spec : Prop :=
  ∀ n, P5068602795301571263.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P4102754852843523837

`gcd(2, A089026(n+1))*A034386(n)`
-/

namespace A186944.P4102754852843523837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A089026 (n + 1)) : ℤ) * A034386 n

end

end A186944.P4102754852843523837

namespace A186944

/-- `gcd(2, A089026(n+1))*A034386(n)` -/
def P4102754852843523837.Spec : Prop :=
  ∀ n, P4102754852843523837.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P17574902361790687321

`A034386(n)+A261130(n)-A068111(n)`
-/

namespace A186944.P17574902361790687321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 n + (A261130 n - A068111 n)

end

end A186944.P17574902361790687321

namespace A186944

/-- `A034386(n)+A261130(n)-A068111(n)` -/
def P17574902361790687321.Spec : Prop :=
  ∀ n, P17574902361790687321.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P6017267562265973544

`A034386(n+1)/A068111(n)*A144186(n)`
-/

namespace A186944.P6017267562265973544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A068111 n : ℚ) * (A144186 n : ℚ)

end

end A186944.P6017267562265973544

namespace A186944

/-- `A034386(n+1)/A068111(n)*A144186(n)` -/
def P6017267562265973544.Spec : Prop :=
  ∀ n, P6017267562265973544.a n = (A186944 (n + 1) : ℚ)

end A186944

/-! ## A186944.P17363237152563152785

`A034386(2*n)/A068111(n)`
-/

namespace A186944.P17363237152563152785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n) : ℚ) / (A068111 n : ℚ)

end

end A186944.P17363237152563152785

namespace A186944

/-- `A034386(2*n)/A068111(n)` -/
def P17363237152563152785.Spec : Prop :=
  ∀ n, P17363237152563152785.a n = (A186944 (n + 1) : ℚ)

end A186944

/-! ## A186944.P12373792555180889976

`A300951(A223133(n))`
-/

namespace A186944.P12373792555180889976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (A223133 n).toNat

end

end A186944.P12373792555180889976

namespace A186944

/-- `A300951(A223133(n))` -/
def P12373792555180889976.Spec : Prop :=
  ∀ n, P12373792555180889976.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P11385091013763999716

`A104588(n²+3)`
-/

namespace A186944.P11385091013763999716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (n ^ 2 + 3)

end

end A186944.P11385091013763999716

namespace A186944

/-- `A104588(n²+3)` -/
def P11385091013763999716.Spec : Prop :=
  ∀ n, P11385091013763999716.a n = A186944 (n + 1)

end A186944

/-! ## A186944.P12448540092575870942

`∏[A089026(A028310(n)*A089026(n+1))]`
-/

namespace A186944.P12448540092575870942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A028310 n * A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A186944.P12448540092575870942

namespace A186944

/-- `∏[A089026(A028310(n)*A089026(n+1))]` -/
def P12448540092575870942.Spec : Prop :=
  ∀ n, P12448540092575870942.a n = A186944 (n + 1)

end A186944

/-!
# A186945: The smallest integer x > 0 such that the number of terms of A050376 in (x/2,x] equals n.

The programs for A186945, there is no canonical definition to state claims against.
-/

/-! ## A186945.P1501202765058130751

`record[A353761(A160755(n+1))+1]`
-/

namespace A186945.P1501202765058130751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (A160755 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186945.P1501202765058130751

/-! ## A186945.P3469458714772573039

`record[A353761(n+1)+A276837(∑[n])]`
-/

namespace A186945.P3469458714772573039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (n + 1) + A276837 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186945.P3469458714772573039

/-! ## A186945.P16516947405489420526

`record[A353761(A057953(n+1)+1)+1]`
-/

namespace A186945.P16516947405489420526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (A057953 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186945.P16516947405489420526

/-! ## A186945.P4985078042986498540

`record[A353761(A319849(n+1)+1)+1]`
-/

namespace A186945.P4985078042986498540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (A319849 (n + 1) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186945.P4985078042986498540

/-! ## A186945.P808007408110579009

`record[A353761(n+1)+A000005(C(n, 33)+1)]`
-/

namespace A186945.P808007408110579009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353761 (n + 1) + A000005 (Nat.choose n 33 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186945.P808007408110579009

/-!
# A186947: a(n) = 4^n - n*2^n.

The programs for A186947, the canonical program `A186947.P15025992436456129492` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186947 has offset 0).

The definition of A186947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-n*2^n` (program `A186947.P15025992436456129492`, by `A186947.P15025992436456129492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186947.P145950513150734936

`2^n*(2^n-n)`
-/

namespace A186947.P145950513150734936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((2 ^ n : ℤ) - (n : ℤ))

end

end A186947.P145950513150734936

namespace A186947

/-- `2^n*(2^n-n)` -/
def P145950513150734936.Spec : Prop :=
  ∀ n, P145950513150734936.a n = A186947 n

end A186947

/-! ## A186947.P15025992436456129492

`4^n-n*2^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186947

/-- `4^n-n*2^n` -/
def P15025992436456129492.Spec : Prop :=
  ∀ n, P15025992436456129492.a n = A186947 n

theorem P15025992436456129492.correct : P15025992436456129492.Spec := by
  intro n
  simp only [A186947]

end A186947

/-! ## A186947.P18429481869566442003

`(2^n-n)/tan(acot(2^n))`
-/

namespace A186947.P18429481869566442003
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (n : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 ^ n : ℝ))

end

end A186947.P18429481869566442003

namespace A186947

/-- `(2^n-n)/tan(acot(2^n))` -/
def P18429481869566442003.Spec : Prop :=
  ∀ n, P18429481869566442003.a n = (A186947 n : ℝ)

end A186947

/-! ## A186947.P1153510735859783308

`xor(A000337(n), A020515(n))`
-/

namespace A186947.P1153510735859783308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000337 n) (A020515 n)

end

end A186947.P1153510735859783308

namespace A186947

/-- `xor(A000337(n), A020515(n))` -/
def P1153510735859783308.Spec : Prop :=
  ∀ n, P1153510735859783308.a n = A186947 n

end A186947

/-! ## A186947.P1359293913758868365

`xor(A024037(n), A066524(n))`
-/

namespace A186947.P1359293913758868365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024037 n) (A066524 n)

end

end A186947.P1359293913758868365

namespace A186947

/-- `xor(A024037(n), A066524(n))` -/
def P1359293913758868365.Spec : Prop :=
  ∀ n, P1359293913758868365.a n = A186947 n

end A186947

/-! ## A186947.P15820721593107584851

`(A186942(n)+1)/2`
-/

namespace A186947.P15820721593107584851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186942 n + 1 : ℚ) / 2

end

end A186947.P15820721593107584851

namespace A186947

/-- `(A186942(n)+1)/2` -/
def P15820721593107584851.Spec : Prop :=
  ∀ n, P15820721593107584851.a n = (A186947 n : ℚ)

theorem P15820721593107584851.correct : P15820721593107584851.Spec := by
  intro n
  simp only [A186947, Nat.add_sub_cancel, A186947.P15820721593107584851.a, A186947.P15025992436456129492.a, A186942, A186942.P17418210838155715363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A186947

/-!
# A186948: a(n) = 3^n - 2*n.

The programs for A186948, the canonical program `A186948.P6848014094409711045` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186948 has offset 0).

The definition of A186948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2*n` (program `A186948.P6848014094409711045`, by `A186948.P6848014094409711045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186948.P6848014094409711045

`3^n-2*n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186948

/-- `3^n-2*n` -/
def P6848014094409711045.Spec : Prop :=
  ∀ n, P6848014094409711045.a n = A186948 n

theorem P6848014094409711045.correct : P6848014094409711045.Spec := by
  intro n
  simp only [A186948]

end A186948

/-! ## A186948.P6478640924708676364

`or(1, 3^n-(n+n))`
-/

namespace A186948.P6478640924708676364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 ^ n : ℤ) - (n + n : ℤ))

end

end A186948.P6478640924708676364

namespace A186948

/-- `or(1, 3^n-(n+n))` -/
def P6478640924708676364.Spec : Prop :=
  ∀ n, P6478640924708676364.a n = A186948 n

end A186948

/-! ## A186948.P7798407553200739764

`xor(1, 3^n-Δ[n²])`
-/

namespace A186948.P7798407553200739764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 ^ n : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A186948.P7798407553200739764

namespace A186948

/-- `xor(1, 3^n-Δ[n²])` -/
def P7798407553200739764.Spec : Prop :=
  ∀ n, P7798407553200739764.a n = A186948 n

end A186948

/-! ## A186948.P1954523553392243297

`∑[ogf((1-4x+7x^2)/(1-4x+3x^2))]`
-/

namespace A186948.P1954523553392243297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 7] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186948.P1954523553392243297

namespace A186948

/-- `∑[ogf((1-4x+7x^2)/(1-4x+3x^2))]` -/
def P1954523553392243297.Spec : Prop :=
  ∀ n, P1954523553392243297.a n = A186948 n

end A186948

/-! ## A186948.P9901829859432207244

`ogf((1-4x+7x^2)/(1-5x+7x^2-3x^3))`
-/

namespace A186948.P9901829859432207244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 7] [1, -5, 7, -3] n

end

end A186948.P9901829859432207244

namespace A186948

/-- `ogf((1-4x+7x^2)/(1-5x+7x^2-3x^3))` -/
def P9901829859432207244.Spec : Prop :=
  ∀ n, P9901829859432207244.a n = A186948 n

end A186948

/-! ## A186948.P17824941670308013231

`abs(or(1, 3^n)-n-n)`
-/

namespace A186948.P17824941670308013231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (3 ^ n) : ℤ) - (n : ℤ) - (n : ℤ)|

end

end A186948.P17824941670308013231

namespace A186948

/-- `abs(or(1, 3^n)-n-n)` -/
def P17824941670308013231.Spec : Prop :=
  ∀ n, P17824941670308013231.a n = A186948 n

end A186948

/-! ## A186948.P15985164333536287782

`∑[3*a(n-1)+4]` with `a(0)=1, a(1)=0`
-/

namespace A186948.P15985164333536287782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  3 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186948.P15985164333536287782

namespace A186948

/-- `∑[3*a(n-1)+4]` -/
def P15985164333536287782.Spec : Prop :=
  ∀ n, (P15985164333536287782.a n : ℤ) = A186948 n

end A186948

/-! ## A186948.P10516782416972779825

`∑[∑[3*a(n-1)]]` with `a(0)=1, a(1)=-1, a(2)=4`
-/

namespace A186948.P10516782416972779825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186948.P10516782416972779825

namespace A186948

/-- `∑[∑[3*a(n-1)]]` -/
def P10516782416972779825.Spec : Prop :=
  ∀ n, P10516782416972779825.a n = A186948 n

end A186948

/-! ## A186948.P2714838266084604513

`floor(3*(a(n-1)-2)+4*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A186948.P2714838266084604513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) - 2) + (4 * n : ℤ)

end

end A186948.P2714838266084604513

namespace A186948

/-- `floor(3*(a(n-1)-2)+4*n)` -/
def P2714838266084604513.Spec : Prop :=
  ∀ n, P2714838266084604513.a n = A186948 n

theorem P2714838266084604513.correct : P2714838266084604513.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A186948, Nat.add_sub_cancel, A186948.P2714838266084604513.a, A186948.P6848014094409711045.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A186948, Nat.add_sub_cancel, A186948.P2714838266084604513.a, A186948.P6848014094409711045.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A186948

/-! ## A186948.P10443004991395657304

`floor(4*n-3*(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A186948.P10443004991395657304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - 3 * (2 - a (n - 1))

end

end A186948.P10443004991395657304

namespace A186948

/-- `floor(4*n-3*(2-a(n-1)))` -/
def P10443004991395657304.Spec : Prop :=
  ∀ n, P10443004991395657304.a n = A186948 n

theorem P10443004991395657304.correct : P10443004991395657304.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A186948, Nat.add_sub_cancel, A186948.P10443004991395657304.a, A186948.P6848014094409711045.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A186948, Nat.add_sub_cancel, A186948.P10443004991395657304.a, A186948.P6848014094409711045.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A186948

/-! ## A186948.P15923418463000640889

`∑[a(n-1)+a(n-1)+a(n-1)+4]` with `a(0)=1, a(1)=0`
-/

namespace A186948.P15923418463000640889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186948.P15923418463000640889

namespace A186948

/-- `∑[a(n-1)+a(n-1)+a(n-1)+4]` -/
def P15923418463000640889.Spec : Prop :=
  ∀ n, (P15923418463000640889.a n : ℤ) = A186948 n

end A186948

/-! ## A186948.P5749823646022803814

`abs(n-A024024(n))`
-/

namespace A186948.P5749823646022803814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A024024 n|

end

end A186948.P5749823646022803814

namespace A186948

/-- `abs(n-A024024(n))` -/
def P5749823646022803814.Spec : Prop :=
  ∀ n, P5749823646022803814.a n = A186948 n

end A186948

/-! ## A186948.P15848014655539667300

`∑[abs(2-A025192(n))]`
-/

namespace A186948.P15848014655539667300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A025192 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186948.P15848014655539667300

namespace A186948

/-- `∑[abs(2-A025192(n))]` -/
def P15848014655539667300.Spec : Prop :=
  ∀ n, P15848014655539667300.a n = A186948 n

end A186948

/-! ## A186948.P4233556451772618695

`Δ[A233656(n)-n²]`
-/

namespace A186948.P4233556451772618695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233656 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186948.P4233556451772618695

namespace A186948

/-- `Δ[A233656(n)-n²]` -/
def P4233556451772618695.Spec : Prop :=
  ∀ n, P4233556451772618695.a n = A186948 n

end A186948

/-! ## A186948.P8619975601275884775

`abs(2*n-A000244(n))`
-/

namespace A186948.P8619975601275884775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A000244 n|

end

end A186948.P8619975601275884775

namespace A186948

/-- `abs(2*n-A000244(n))` -/
def P8619975601275884775.Spec : Prop :=
  ∀ n, P8619975601275884775.a n = A186948 n

end A186948

/-! ## A186948.P5257059683594692326

`Δ[∑[A094388(n)]-n²]`
-/

namespace A186948.P5257059683594692326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186948.P5257059683594692326

namespace A186948

/-- `Δ[∑[A094388(n)]-n²]` -/
def P5257059683594692326.Spec : Prop :=
  ∀ n, P5257059683594692326.a n = A186948 n

end A186948

/-! ## A186948.P15632631332831179084

`abs(A024023(n)+1-n-n)`
-/

namespace A186948.P15632631332831179084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024023 n + (1 - (n : ℤ)) - (n : ℤ)|

end

end A186948.P15632631332831179084

namespace A186948

/-- `abs(A024023(n)+1-n-n)` -/
def P15632631332831179084.Spec : Prop :=
  ∀ n, P15632631332831179084.a n = A186948 n

end A186948

/-! ## A186948.P4789943921025218275

`Δ[A007051(n)-A002061(n)]`
-/

namespace A186948.P4789943921025218275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186948.P4789943921025218275

namespace A186948

/-- `Δ[A007051(n)-A002061(n)]` -/
def P4789943921025218275.Spec : Prop :=
  ∀ n, P4789943921025218275.a n = A186948 n

end A186948

/-! ## A186948.P1101092105751553951

`(A038754(2*n+1)-4*n)/2`
-/

namespace A186948.P1101092105751553951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038754 (2 * n + 1) - (4 * n : ℤ) : ℚ) / 2

end

end A186948.P1101092105751553951

namespace A186948

/-- `(A038754(2*n+1)-4*n)/2` -/
def P1101092105751553951.Spec : Prop :=
  ∀ n, P1101092105751553951.a n = (A186948 n : ℚ)

end A186948

/-! ## A186948.P16352512783468922899

`A198645(n)%A353094(n+1)`
-/

namespace A186948.P16352512783468922899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198645 n) (A353094 (n + 1))

end

end A186948.P16352512783468922899

namespace A186948

/-- `A198645(n)%A353094(n+1)` -/
def P16352512783468922899.Spec : Prop :=
  ∀ n, P16352512783468922899.a n = A186948 n

end A186948

/-!
# A186949: a(n) = 2^n - 2*(binomial(1,n) - binomial(0,n)).

The programs for A186949, the canonical program `A186949.P12428157798587074848` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186949 has offset 0).

The definition of A186949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-2*(C(1, n)-C(0, n))` (program `A186949.P12428157798587074848`, by `A186949.P12428157798587074848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186949.P12428157798587074848

`2^n-2*(C(1, n)-C(0, n))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186949

/-- `2^n-2*(C(1, n)-C(0, n))` -/
def P12428157798587074848.Spec : Prop :=
  ∀ n, P12428157798587074848.a n = A186949 n

theorem P12428157798587074848.correct : P12428157798587074848.Spec := by
  intro n
  simp only [A186949]

end A186949

/-! ## A186949.P17562592700922376444

`and(-3, 2^n)`
-/

namespace A186949.P17562592700922376444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

end

end A186949.P17562592700922376444

namespace A186949

/-- `and(-3, 2^n)` -/
def P17562592700922376444.Spec : Prop :=
  ∀ n, P17562592700922376444.a n = A186949 n

end A186949

/-! ## A186949.P12547651262476350728

`ceil(acos(char[1]))^n`
-/

namespace A186949.P12547651262476350728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉ ^ n

end

end A186949.P12547651262476350728

namespace A186949

/-- `ceil(acos(char[1]))^n` -/
def P12547651262476350728.Spec : Prop :=
  ∀ n, P12547651262476350728.a n = A186949 n

end A186949

/-! ## A186949.P4484729597307379186

`round(acos(char[1]))^n`
-/

namespace A186949.P4484729597307379186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)) ^ n

end

end A186949.P4484729597307379186

namespace A186949

/-- `round(acos(char[1]))^n` -/
def P4484729597307379186.Spec : Prop :=
  ∀ n, P4484729597307379186.a n = A186949 n

end A186949

/-! ## A186949.P13684586727757478749

`or(2, 2^n)-2`
-/

namespace A186949.P13684586727757478749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (2 ^ n) : ℤ) - 2

end

end A186949.P13684586727757478749

namespace A186949

/-- `or(2, 2^n)-2` -/
def P13684586727757478749.Spec : Prop :=
  ∀ n, P13684586727757478749.a n = A186949 n

end A186949

/-! ## A186949.P15941562415496530286

`xor(2, or(2, 2^n))`
-/

namespace A186949.P15941562415496530286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 (2 ^ n))

end

end A186949.P15941562415496530286

namespace A186949

/-- `xor(2, or(2, 2^n))` -/
def P15941562415496530286.Spec : Prop :=
  ∀ n, (P15941562415496530286.a n : ℤ) = A186949 n

end A186949

/-! ## A186949.P15231269312437833051

`(2*floor(atan(n)))^n`
-/

namespace A186949.P15231269312437833051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊Real.arctan (n : ℝ)⌋) ^ n

end

end A186949.P15231269312437833051

namespace A186949

/-- `(2*floor(atan(n)))^n` -/
def P15231269312437833051.Spec : Prop :=
  ∀ n, P15231269312437833051.a n = A186949 n

end A186949

/-! ## A186949.P4183905535650814543

`ogf((1-2x+4x^2)/(1-2x))`
-/

namespace A186949.P4183905535650814543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -2] n

end

end A186949.P4183905535650814543

namespace A186949

/-- `ogf((1-2x+4x^2)/(1-2x))` -/
def P4183905535650814543.Spec : Prop :=
  ∀ n, P4183905535650814543.a n = A186949 n

end A186949

/-! ## A186949.P2892221833230346728

`(1-char[1])*2^n`
-/

namespace A186949.P2892221833230346728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * (2 ^ n : ℤ)

end

end A186949.P2892221833230346728

namespace A186949

/-- `(1-char[1])*2^n` -/
def P2892221833230346728.Spec : Prop :=
  ∀ n, P2892221833230346728.a n = A186949 n

end A186949

/-! ## A186949.P13918509538343649735

`((char[1]+2)%3)^n`
-/

namespace A186949.P13918509538343649735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 2) % 3) ^ n

end

end A186949.P13918509538343649735

namespace A186949

/-- `((char[1]+2)%3)^n` -/
def P13918509538343649735.Spec : Prop :=
  ∀ n, (P13918509538343649735.a n : ℤ) = A186949 n

end A186949

/-! ## A186949.P10147672926950148958

`lcm(1-char[1], 2^n)`
-/

namespace A186949.P10147672926950148958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (2 ^ n : ℤ)

end

end A186949.P10147672926950148958

namespace A186949

/-- `lcm(1-char[1], 2^n)` -/
def P10147672926950148958.Spec : Prop :=
  ∀ n, (P10147672926950148958.a n : ℤ) = A186949 n

end A186949

/-! ## A186949.P2456210955563159778

`and(2, char[1]-1)^n`
-/

namespace A186949.P2456210955563159778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) ^ n

end

end A186949.P2456210955563159778

namespace A186949

/-- `and(2, char[1]-1)^n` -/
def P2456210955563159778.Spec : Prop :=
  ∀ n, P2456210955563159778.a n = A186949 n

end A186949

/-! ## A186949.P5270536268731959799

`(2*xor(1, char[1]))^n`
-/

namespace A186949.P5270536268731959799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)) ^ n

end

end A186949.P5270536268731959799

namespace A186949

/-- `(2*xor(1, char[1]))^n` -/
def P5270536268731959799.Spec : Prop :=
  ∀ n, (P5270536268731959799.a n : ℤ) = A186949 n

end A186949

/-! ## A186949.P4356555493796034042

`(2-C(2, n²))^n`
-/

namespace A186949.P4356555493796034042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.choose 2 (n ^ 2) : ℤ)) ^ n

end

end A186949.P4356555493796034042

namespace A186949

/-- `(2-C(2, n²))^n` -/
def P4356555493796034042.Spec : Prop :=
  ∀ n, P4356555493796034042.a n = A186949 n

end A186949

/-! ## A186949.P6024880915035378041

`dr(2%(n+1))^n`
-/

namespace A186949.P6024880915035378041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((2 % (n + 1) : ℕ) : ℤ) ^ n

end

end A186949.P6024880915035378041

namespace A186949

/-- `dr(2%(n+1))^n` -/
def P6024880915035378041.Spec : Prop :=
  ∀ n, (P6024880915035378041.a n : ℤ) = A186949 n

end A186949

/-! ## A186949.P6223235304218563351

`xor(2, C(2, n²))^n`
-/

namespace A186949.P6223235304218563351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.choose 2 (n ^ 2)) ^ n

end

end A186949.P6223235304218563351

namespace A186949

/-- `xor(2, C(2, n²))^n` -/
def P6223235304218563351.Spec : Prop :=
  ∀ n, (P6223235304218563351.a n : ℤ) = A186949 n

end A186949

/-! ## A186949.P8804257702964609383

`ceil(atan(n²-1))^n`
-/

namespace A186949.P8804257702964609383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((n ^ 2 : ℤ) - 1 : ℝ)⌉ ^ n

end

end A186949.P8804257702964609383

namespace A186949

/-- `ceil(atan(n²-1))^n` -/
def P8804257702964609383.Spec : Prop :=
  ∀ n, P8804257702964609383.a n = A186949 n

end A186949

/-! ## A186949.P13899991983680696398

`floor(atan(n^3)²)^n`
-/

namespace A186949.P13899991983680696398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n ^ 3 : ℝ) ^ 2⌋ ^ n

end

end A186949.P13899991983680696398

namespace A186949

/-- `floor(atan(n^3)²)^n` -/
def P13899991983680696398.Spec : Prop :=
  ∀ n, P13899991983680696398.a n = A186949 n

end A186949

/-! ## A186949.P3333115970490572748

`(2*floor(acot(acot(n))))^n`
-/

namespace A186949.P3333115970490572748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))⌋) ^ n

end

end A186949.P3333115970490572748

namespace A186949

/-- `(2*floor(acot(acot(n))))^n` -/
def P3333115970490572748.Spec : Prop :=
  ∀ n, P3333115970490572748.a n = A186949 n

end A186949

/-! ## A186949.P8779482600714234595

`(2-(2^n)%4)^n`
-/

namespace A186949.P8779482600714234595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((2 ^ n % 4 : ℕ) : ℤ)) ^ n

end

end A186949.P8779482600714234595

namespace A186949

/-- `(2-(2^n)%4)^n` -/
def P8779482600714234595.Spec : Prop :=
  ∀ n, P8779482600714234595.a n = A186949 n

end A186949

/-!
# A186950: a(n) = n^2 - 47*n + 479.

The programs for A186950, the canonical program `A186950.P5888249427520452918` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186950 has offset 0).

The definition of A186950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-47*n+479` (program `A186950.P5888249427520452918`, by `A186950.P5888249427520452918.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186950.P5888249427520452918

`n²-47*n+479`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A186950

/-- `n²-47*n+479` -/
def P5888249427520452918.Spec : Prop :=
  ∀ n, P5888249427520452918.a n = A186950 n

theorem P5888249427520452918.correct : P5888249427520452918.Spec := by
  intro n
  simp only [A186950]

end A186950

/-!
# A186951: Number of lunar divisors (in base 10) of the n-th nonzero number whose decimal expansion contains only 0's and 1's (A007088(n)).

The programs for A186951, there is no canonical definition to state claims against.
-/

/-! ## A186951.P15518478501839828734

`(val(n+1, 2)+1)*A186943(A003602(n+1))`
-/

namespace A186951.P15518478501839828734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A186943 (A003602 (n + 1)).toNat

end

end A186951.P15518478501839828734

/-! ## A186951.P8269563478986277643

`A001511(n+1)*A186943(A003602(n+1))`
-/

namespace A186951.P8269563478986277643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A186943 (A003602 (n + 1)).toNat

end

end A186951.P8269563478986277643

/-! ## A186951.P17791677060523752617

`A000005(A006519(n+1))*A186943(A003602(n+1))`
-/

namespace A186951.P17791677060523752617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A186943 (A003602 (n + 1)).toNat

end

end A186951.P17791677060523752617

/-! ## A186951.P2330161863708300045

`A087029(A007088(n+1))`
-/

namespace A186951.P2330161863708300045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (A007088 (n + 1)).toNat

end

end A186951.P2330161863708300045

/-! ## A186951.P13985394713438798893

`A087029(∑[A138342(n+1)])`
-/

namespace A186951.P13985394713438798893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087029 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186951.P13985394713438798893

/-!
# A186952: Number of partitions of n concentric circles on the 2-sphere which are realizable by surfaces in the 3-ball.

The programs for A186952, there is no canonical definition to state claims against.
-/

/-! ## A186952.P4705787285612231688

`A247911(A373456(n+2))`
-/

namespace A186952.P4705787285612231688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A373456 (n + 2)).toNat

end

end A186952.P4705787285612231688

/-! ## A186952.P7326898563692542777

`A178798(n²+1)+A003019(n+1)`
-/

namespace A186952.P7326898563692542777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (n ^ 2 + 1) + A003019 (n + 1)

end

end A186952.P7326898563692542777

/-! ## A186952.P11181775068399415850

`A089405(n)+A076142(A347590(n))`
-/

namespace A186952.P11181775068399415850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089405 n + A076142 (A347590 n).toNat

end

end A186952.P11181775068399415850

/-! ## A186952.P15991970697464817030

`A036625(A082743(n))-A316868(n)`
-/

namespace A186952.P15991970697464817030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036625 (A082743 n).toNat - A316868 n

end

end A186952.P15991970697464817030

/-! ## A186952.P4563001165117403127

`A124497(n)-A137579(A349052(n))`
-/

namespace A186952.P4563001165117403127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124497 n - A137579 (A349052 n).toNat

end

end A186952.P4563001165117403127

/-!
# A186953: 1/729 the number of (n+2)X(n+2) 0..2 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186953, there is no canonical definition to state claims against.
-/

/-! ## A186953.P10611004029552721806

`A186962((n+1)²+n²)`
-/

namespace A186953.P10611004029552721806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 ((n + 1) ^ 2 + n ^ 2)

end

end A186953.P10611004029552721806

/-!
# A186954: 1/729 the number of (n+2)X3 0..2 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186954, there is no canonical definition to state claims against.
-/

/-! ## A186954.P6911629423878699015

`A186962(∑[n]+1)`
-/

namespace A186954.P6911629423878699015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186954.P6911629423878699015

/-! ## A186954.P16931971990173612622

`record[A010054(n)*A186962(n+1)]`
-/

namespace A186954.P16931971990173612622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186954.P16931971990173612622

/-! ## A186954.P16512503434716764121

`record[A103451(n)*A186962(n+1)]`
-/

namespace A186954.P16512503434716764121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A186962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186954.P16512503434716764121

/-! ## A186954.P15198571058281484623

`record[gcd(A004197(n), A186962(n+1))]`
-/

namespace A186954.P15198571058281484623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A186962 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186954.P15198571058281484623

/-! ## A186954.P1491755283854550291

`record[A186962(n+1)/A060187(n+1)]`
-/

namespace A186954.P1491755283854550291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186962 (n + 1) : ℚ) / (A060187 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186954.P1491755283854550291

/-!
# A186955: 1/729 the number of (n+2) X 4 0..2 arrays with each 3 X 3 subblock trace equal to some horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A186955, there is no canonical definition to state claims against.
-/

/-! ## A186955.P1244059340927274882

`A186962(∑[n+1]+2)`
-/

namespace A186955.P1244059340927274882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186955.P1244059340927274882

/-! ## A186955.P10546050926763160990

`record[A010054(n)*A186962(n+2)]`
-/

namespace A186955.P10546050926763160990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186962 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186955.P10546050926763160990

/-! ## A186955.P11793957524041641182

`or(A000007(n), A186962(A000096(n)+3))`
-/

namespace A186955.P11793957524041641182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186962 (A000096 n + 3).toNat)

end

end A186955.P11793957524041641182

/-! ## A186955.P15555008690496751616

`or(1, A186962(A000096(n+1)))`
-/

namespace A186955.P15555008690496751616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186962 (A000096 (n + 1)).toNat)

end

end A186955.P15555008690496751616

/-! ## A186955.P6478430164497773110

`record[A186962(C(A186971(2*n+3), 2)-1)]`
-/

namespace A186955.P6478430164497773110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (Nat.choose (A186971 (2 * n + 3)).toNat 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186955.P6478430164497773110

/-!
# A186956: 1/729 the number of (n+2) X 5 0..2 arrays with each 3 X 3 subblock trace equal to some horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A186956, there is no canonical definition to state claims against.
-/

/-! ## A186956.P11412305567860848088

`A186962(∑[n+2]+4)`
-/

namespace A186956.P11412305567860848088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186956.P11412305567860848088

/-! ## A186956.P12858030950582158756

`or(1, A186962(A167614(n+1)))`
-/

namespace A186956.P12858030950582158756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A186962 (A167614 (n + 1)).toNat)

end

end A186956.P12858030950582158756

/-! ## A186956.P18006392326037276256

`A186962(Δ[A008778(n)])+A025465(n)`
-/

namespace A186956.P18006392326037276256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (f1 (n + 1) - f1 n).toNat + A025465 n

end

end A186956.P18006392326037276256

/-! ## A186956.P2506151633428813479

`A342845(n)+A186962(Δ[A008778(n)])`
-/

namespace A186956.P2506151633428813479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A186962 (f1 (n + 1) - f1 n).toNat

end

end A186956.P2506151633428813479

/-! ## A186956.P11378072550957275033

`A186962(Δ[A008778(n)])*A322283(n)`
-/

namespace A186956.P11378072550957275033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (f1 (n + 1) - f1 n).toNat * A322283 n

end

end A186956.P11378072550957275033

/-!
# A186957: 1/729 the number of (n+2) X 6 0..2 arrays with each 3 X 3 subblock trace equal to some horizontal or vertical neighbor 3 X 3 subblock trace.

The programs for A186957, there is no canonical definition to state claims against.
-/

/-! ## A186957.P3901145480565204054

`A186962(A167614(n+2)+1)`
-/

namespace A186957.P3901145480565204054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (A167614 (n + 2) + 1).toNat

end

end A186957.P3901145480565204054

/-! ## A186957.P9355340491746378980

`A186962(A000217(n+4)-n)`
-/

namespace A186957.P9355340491746378980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A186957.P9355340491746378980

/-! ## A186957.P18246410076988781033

`A186962(Δ[A008778(n+1)]-1)`
-/

namespace A186957.P18246410076988781033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (f1 (n + 1) - f1 n - 1).toNat

end

end A186957.P18246410076988781033

/-!
# A186958: 1/729 the number of (n+2)X7 0..2 arrays with each 3X3 subblock trace equal to some horizontal or vertical neighbor 3X3 subblock trace.

The programs for A186958, there is no canonical definition to state claims against.
-/

/-! ## A186958.P406755818121657566

`A186962(A000217(n+4)+5)`
-/

namespace A186958.P406755818121657566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (A000217 (n + 4) + 5).toNat

end

end A186958.P406755818121657566

/-! ## A186958.P18285275048723724333

`A186962(A374005(n+1))`
-/

namespace A186958.P18285275048723724333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (A374005 (n + 1)).toNat

end

end A186958.P18285275048723724333

/-! ## A186958.P11220471998292612598

`A186962(Δ[A023545(n+1)])`
-/

namespace A186958.P11220471998292612598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (f1 (n + 1) - f1 n).toNat

end

end A186958.P11220471998292612598

/-!
# A186959: 

The programs for A186959, there is no canonical definition to state claims against.
-/

/-! ## A186959.P16645447302608698046

`A186962(A056119(n)+16)`
-/

namespace A186959.P16645447302608698046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (A056119 n + 16).toNat

end

end A186959.P16645447302608698046

/-!
# A186960: 

The programs for A186960, there is no canonical definition to state claims against.
-/

/-! ## A186960.P12572083525332024686

`A186962(A056119(n)+28)`
-/

namespace A186960.P12572083525332024686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186962 (A056119 n + 28).toNat

end

end A186960.P12572083525332024686

/-!
# A186963: Number of prime factors in the expansion of the infinitary perfect number A007357(n) over distinct terms of A050376.

The programs for A186963, there is no canonical definition to state claims against.
-/

/-! ## A186963.P14645571602656741474

`A008611(xor(n+5, A037213(n)))`
-/

namespace A186963.P14645571602656741474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor (n + 5 : ℤ) (A037213 n)).toNat

end

end A186963.P14645571602656741474

/-! ## A186963.P8765194477268176271

`A287355(n+1)+1-A024327(n+1)`
-/

namespace A186963.P8765194477268176271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (n + 1) + (1 - A024327 (n + 1))

end

end A186963.P8765194477268176271

/-! ## A186963.P8883036924333871768

`A259154(A071242(n))+A003056(n)`
-/

namespace A186963.P8883036924333871768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 (A071242 n).toNat + A003056 n

end

end A186963.P8883036924333871768

/-! ## A186963.P17203126105740907178

`A320732(A067003(n+1))+A194920(n+1)`
-/

namespace A186963.P17203126105740907178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (A067003 (n + 1)).toNat + A194920 (n + 1)

end

end A186963.P17203126105740907178

/-! ## A186963.P12990811429657117735

`A214526(A368900(3*n+5)+A047524(n+1))`
-/

namespace A186963.P12990811429657117735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A368900 (3 * n + 5) + A047524 (n + 1)).toNat

end

end A186963.P12990811429657117735

/-!
# A186966: Number of 3-turn queen's tours on an n X n board summed over all starting positions.

The programs for A186966, there is no canonical definition to state claims against.
-/

/-! ## A186966.P4934265411315540554

`A186965(∑[n+2]+4)`
-/

namespace A186966.P4934265411315540554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186966.P4934265411315540554

/-! ## A186966.P16424037357364940225

`lcm(2, A186965(A167614(n+1)))`
-/

namespace A186966.P16424037357364940225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186965 (A167614 (n + 1)).toNat)

end

end A186966.P16424037357364940225

/-! ## A186966.P8807570184125027373

`A186965(A167614(n+1))+A185284(n)`
-/

namespace A186966.P8807570184125027373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (A167614 (n + 1)).toNat + A185284 n

end

end A186966.P8807570184125027373

/-! ## A186966.P7181052834142790513

`A257850(n)+A186965(A167614(n+1))`
-/

namespace A186966.P7181052834142790513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 n + A186965 (A167614 (n + 1)).toNat

end

end A186966.P7181052834142790513

/-! ## A186966.P1965658033054857049

`A186965(A167614(n+1))*A351086(n)`
-/

namespace A186966.P1965658033054857049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (A167614 (n + 1)).toNat * A351086 n

end

end A186966.P1965658033054857049

/-!
# A186967: Number of 4-turn queen's tours on an n X n board summed over all starting positions.

The programs for A186967, there is no canonical definition to state claims against.
-/

/-! ## A186967.P9506694661699150177

`A186965(∑[n+3]+7)`
-/

namespace A186967.P9506694661699150177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A186967.P9506694661699150177

/-!
# A186968: Number of 5-turn queen's tours on an n X n board summed over all starting positions.

The programs for A186968, there is no canonical definition to state claims against.
-/

/-! ## A186968.P10594915593192415479

`A186965(A155212(n)+13)`
-/

namespace A186968.P10594915593192415479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (A155212 n + 13).toNat

end

end A186968.P10594915593192415479

/-! ## A186968.P11087515183398441452

`A186965(A056000(n)+15)`
-/

namespace A186968.P11087515183398441452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (A056000 n + 15).toNat

end

end A186968.P11087515183398441452

/-! ## A186968.P11486215687887260341

`A186965(eq[7, A066657(n)])`
-/

namespace A186968.P11486215687887260341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186968.P11486215687887260341

/-! ## A186968.P14085929774056099548

`A186965(A000217(n+4)+5)`
-/

namespace A186968.P14085929774056099548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186965 (A000217 (n + 4) + 5).toNat

end

end A186968.P14085929774056099548

/-!
# A186970: The oex analog of the Euler phi-function for the oex prime power factorization of positive integers.

The programs for A186970, there is no canonical definition to state claims against.
-/

/-! ## A186970.P15253257295725598771

`A064380(A151839(n)+1+n)`
-/

namespace A186970.P15253257295725598771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 (A151839 n + 1 + (n : ℤ)).toNat

end

end A186970.P15253257295725598771

/-! ## A186970.P11425306924061476689

`A064380(floor(A187829(n+1)+acot(n)))`
-/

namespace A186970.P11425306924061476689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 ⌊(A187829 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A186970.P11425306924061476689

/-! ## A186970.P11684244912270411797

`A064380(A187829(n+1)+C(2, n+2))`
-/

namespace A186970.P11684244912270411797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 (A187829 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A186970.P11684244912270411797

/-! ## A186970.P16394769330646565147

`A064380(A187829(n+1)+A000007(n))`
-/

namespace A186970.P16394769330646565147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 (A187829 (n + 1) + A000007 n).toNat

end

end A186970.P16394769330646565147

/-! ## A186970.P3024115935402826411

`A064380(A187829(n+1)+A151878(n))`
-/

namespace A186970.P3024115935402826411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 (A187829 (n + 1) + A151878 n).toNat

end

end A186970.P3024115935402826411

/-!
# A186971: Maximal cardinality of a subset of {1, 2, ..., n} containing n and having pairwise coprime elements.

The programs for A186971, the canonical program `A186971.P6625569853870755489` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186971 has offset 1).

The definition of A186971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186971.P6625569853870755489

`A048865(n+1)+A057427(n)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A186971

/-- `A048865(n+1)+A057427(n)+1` -/
def P6625569853870755489.Spec : Prop :=
  ∀ n, P6625569853870755489.a n = A186971 (n + 1)

theorem P6625569853870755489.correct : P6625569853870755489.Spec := by
  intro n
  simp only [A186971, Nat.add_sub_cancel]

end A186971

/-! ## A186971.P333753990701089887

`A036234(n+1)-A297155(n+1)`
-/

namespace A186971.P333753990701089887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A297155 (n + 1)

end

end A186971.P333753990701089887

namespace A186971

/-- `A036234(n+1)-A297155(n+1)` -/
def P333753990701089887.Spec : Prop :=
  ∀ n, P333753990701089887.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P13028303470681454306

`A351519(n+1)-A070824(n+1)`
-/

namespace A186971.P13028303470681454306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351519 (n + 1) - A070824 (n + 1)

end

end A186971.P13028303470681454306

namespace A186971

/-- `A351519(n+1)-A070824(n+1)` -/
def P13028303470681454306.Spec : Prop :=
  ∀ n, P13028303470681454306.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P5279114238946133502

`A048865(n+1)+A157532(n+1)-1`
-/

namespace A186971.P5279114238946133502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A157532 (n + 1) - 1)

end

end A186971.P5279114238946133502

namespace A186971

/-- `A048865(n+1)+A157532(n+1)-1` -/
def P5279114238946133502.Spec : Prop :=
  ∀ n, P5279114238946133502.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P8280625254975318671

`A000720(n+1)+1-A297155(n+1)`
-/

namespace A186971.P8280625254975318671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (1 - A297155 (n + 1))

end

end A186971.P8280625254975318671

namespace A186971

/-- `A000720(n+1)+1-A297155(n+1)` -/
def P8280625254975318671.Spec : Prop :=
  ∀ n, P8280625254975318671.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P9091102646636766072

`A048865(n+1)+A020639(A004277(n))`
-/

namespace A186971.P9091102646636766072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A020639 (A004277 n).toNat

end

end A186971.P9091102646636766072

namespace A186971

/-- `A048865(n+1)+A020639(A004277(n))` -/
def P9091102646636766072.Spec : Prop :=
  ∀ n, P9091102646636766072.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P14215740645860290705

`A000720(n+1)+1-A048105(A034444(n+1))`
-/

namespace A186971.P14215740645860290705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (1 - A048105 (A034444 (n + 1)).toNat)

end

end A186971.P14215740645860290705

namespace A186971

/-- `A000720(n+1)+1-A048105(A034444(n+1))` -/
def P14215740645860290705.Spec : Prop :=
  ∀ n, P14215740645860290705.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P14215039474516756733

`A048865(n+1)+A001222(2*A006530(n+1))`
-/

namespace A186971.P14215039474516756733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A001222 (2 * A006530 (n + 1)).toNat

end

end A186971.P14215039474516756733

namespace A186971

/-- `A048865(n+1)+A001222(2*A006530(n+1))` -/
def P14215039474516756733.Spec : Prop :=
  ∀ n, P14215039474516756733.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P6561498791997337210

`A048865(n+1)+A000034(A109606(n+2))`
-/

namespace A186971.P6561498791997337210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A000034 (A109606 (n + 2)).toNat

end

end A186971.P6561498791997337210

namespace A186971

/-- `A048865(n+1)+A000034(A109606(n+2))` -/
def P6561498791997337210.Spec : Prop :=
  ∀ n, P6561498791997337210.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P4638116902857810984

`A048865(n+1)+A000005(A025473(n+1))`
-/

namespace A186971.P4638116902857810984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A000005 (A025473 (n + 1)).toNat

end

end A186971.P4638116902857810984

namespace A186971

/-- `A048865(n+1)+A000005(A025473(n+1))` -/
def P4638116902857810984.Spec : Prop :=
  ∀ n, P4638116902857810984.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P8023602242687998223

`A048865(n+1)+A000005(A008578(n+1))`
-/

namespace A186971.P8023602242687998223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A000005 (A008578 (n + 1)).toNat

end

end A186971.P8023602242687998223

namespace A186971

/-- `A048865(n+1)+A000005(A008578(n+1))` -/
def P8023602242687998223.Spec : Prop :=
  ∀ n, P8023602242687998223.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P6977895194785740796

`A048865(n+1)+A020639(A353643(2*n+1))`
-/

namespace A186971.P6977895194785740796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A020639 (A353643 (2 * n + 1)).toNat

end

end A186971.P6977895194785740796

namespace A186971

/-- `A048865(n+1)+A020639(A353643(2*n+1))` -/
def P6977895194785740796.Spec : Prop :=
  ∀ n, P6977895194785740796.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P2301585021939915288

`(A048865(n+1)+2)%A232541(a(n-1)+1)` with `a(0)=1`
-/

namespace A186971.P2301585021939915288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A048865 (n + 1) + 2) (A232541 (a (n - 1) + 1).toNat)

end

end A186971.P2301585021939915288

namespace A186971

/-- `(A048865(n+1)+2)%A232541(a(n-1)+1)` -/
def P2301585021939915288.Spec : Prop :=
  ∀ n, P2301585021939915288.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P12464717876349298318

`A048865(n+1)+A014963(A060594(2*n+1))`
-/

namespace A186971.P12464717876349298318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A014963 (A060594 (2 * n + 1)).toNat

end

end A186971.P12464717876349298318

namespace A186971

/-- `A048865(n+1)+A014963(A060594(2*n+1))` -/
def P12464717876349298318.Spec : Prop :=
  ∀ n, P12464717876349298318.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P2629844091434100164

`A127750(2*n)+A048865(n+1)`
-/

namespace A186971.P2629844091434100164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 (2 * n) + A048865 (n + 1)

end

end A186971.P2629844091434100164

namespace A186971

/-- `A127750(2*n)+A048865(n+1)` -/
def P2629844091434100164.Spec : Prop :=
  ∀ n, P2629844091434100164.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P4994462147859712114

`A048865(n+1)+A020639(A049632(n))`
-/

namespace A186971.P4994462147859712114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A020639 (A049632 n).toNat

end

end A186971.P4994462147859712114

namespace A186971

/-- `A048865(n+1)+A020639(A049632(n))` -/
def P4994462147859712114.Spec : Prop :=
  ∀ n, P4994462147859712114.a n = A186971 (n + 1)

end A186971

/-! ## A186971.P18167816370267698487

`A048865(n+1)+A036453(∑[A186972(n+1)])`
-/

namespace A186971.P18167816370267698487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A036453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186971.P18167816370267698487

namespace A186971

/-- `A048865(n+1)+A036453(∑[A186972(n+1)])` -/
def P18167816370267698487.Spec : Prop :=
  ∀ n, P18167816370267698487.a n = A186971 (n + 1)

end A186971

/-!
# A186972: Irregular triangle T(n,k), n>=1, 1<=k<=A186971(n), read by rows: T(n,k) is the number of k-element subsets of {1, 2, ..., n} containing n and having pairwise coprime elements.

The programs for A186972, there is no canonical definition to state claims against.
-/

/-! ## A186972.P10514121122992472284

`∏{e}[A002126(A047074(n)), #]`
-/

namespace A186972.P10514121122992472284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A047074 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A186972.P10514121122992472284

/-! ## A186972.P4641897921497692574

`gcd(A075378(n+1), A153312(A106447(n)))`
-/

namespace A186972.P4641897921497692574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075378 (n + 1)) (A153312 (A106447 n).toNat)

end

end A186972.P4641897921497692574

/-! ## A186972.P15817134364771195270

`A274847(gcd(A052763(n), A274853(n+1)))`
-/

namespace A186972.P15817134364771195270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274847 (Int.gcd (A052763 n) (A274853 (n + 1)))

end

end A186972.P15817134364771195270

/-! ## A186972.P8719459842458650798

`ceil(A200370(A051469(n)+A008612(n))/2)`
-/

namespace A186972.P8719459842458650798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A200370 (A051469 n + A008612 n).toNat : ℚ) / 2⌉

end

end A186972.P8719459842458650798

/-! ## A186972.P17339576243396396279

`A003652(A233862(n+1)+A224212(n+2))`
-/

namespace A186972.P17339576243396396279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003652 (A233862 (n + 1) + A224212 (n + 2)).toNat

end

end A186972.P17339576243396396279

/-!
# A186973: Number of subsets of {1, 2, ..., n} containing n and having pairwise coprime elements; also row sums of A186972.

The programs for A186973, there is no canonical definition to state claims against.
-/

/-! ## A186973.P3108427860570862820

`Δ[A084422(n)]`
-/

namespace A186973.P3108427860570862820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186973.P3108427860570862820

/-! ## A186973.P4365426854523334632

`A084422(n+1)-A084422(n)`
-/

namespace A186973.P4365426854523334632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084422 (n + 1) - A084422 n

end

end A186973.P4365426854523334632

/-! ## A186973.P16738996571793155064

`A187106(n+1)%A084422(n)+1`
-/

namespace A186973.P16738996571793155064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187106 (n + 1)) (A084422 n) + 1

end

end A186973.P16738996571793155064

/-! ## A186973.P6347199877444527157

`A276187(n+1)+1-A276187(A028310(n))`
-/

namespace A186973.P6347199877444527157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276187 (n + 1) + (1 - A276187 (A028310 n).toNat)

end

end A186973.P6347199877444527157

/-! ## A186973.P13373522615237460708

`A186975(∑[A186971(n+1)])`
-/

namespace A186973.P13373522615237460708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186973.P13373522615237460708

/-! ## A186973.P3249565303412388267

`A186975(eq[1, A186975(n+1)+A000007(n)])`
-/

namespace A186973.P3249565303412388267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186975 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186973.P3249565303412388267

/-!
# A186975: Irregular triangle T(n,k), n>=1, 1<=k<=A186971(n), read by rows: T(n,k) is the number of subsets of {1, 2, ..., n} containing n and having <=k pairwise coprime elements.

The programs for A186975, there is no canonical definition to state claims against.
-/

/-! ## A186975.P7378621438260549702

`A331742(eq[A123230(2*n), A123230(n+1)])`
-/

namespace A186975.P7378621438260549702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123230 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331742 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A186975.P7378621438260549702

/-!
# A186976: Number of ordered quintuples of distinct pairwise coprime positive integers with largest element n.

The programs for A186976, there is no canonical definition to state claims against.
-/

/-! ## A186976.P1986158733269224039

`Δ[A015698(n+6)]`
-/

namespace A186976.P1986158733269224039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186976.P1986158733269224039

/-! ## A186976.P6569024847603915283

`A186989(n+7)-A186988(n+7)`
-/

namespace A186976.P6569024847603915283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186989 (n + 7) - A186988 (n + 7)

end

end A186976.P6569024847603915283

/-!
# A186977: Number of ordered sextuples of distinct pairwise coprime positive integers with largest element n.

The programs for A186977, there is no canonical definition to state claims against.
-/

/-! ## A186977.P4118926687035892377

`A186990(n+11)-A186989(n+11)`
-/

namespace A186977.P4118926687035892377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186990 (n + 11) - A186989 (n + 11)

end

end A186977.P4118926687035892377

/-!
# A186978: Number of ordered septuples of distinct pairwise coprime positive integers with largest element n.

The programs for A186978, there is no canonical definition to state claims against.
-/

/-! ## A186978.P15901198661082354067

`A186991(n+13)-A186990(n+13)`
-/

namespace A186978.P15901198661082354067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186991 (n + 13) - A186990 (n + 13)

end

end A186978.P15901198661082354067

/-! ## A186978.P1109912156565140408

`Δ[A187268(n+12)]-A186990(n+13)`
-/

namespace A186978.P1109912156565140408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187268 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A186990 (n + 13)

end

end A186978.P1109912156565140408

/-! ## A186978.P13252597117424350722

`A187268(n+13)-(A187268(n+12)+A186990(n+13))`
-/

namespace A186978.P13252597117424350722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187268 (n + 13) - (A187268 (n + 12) + A186990 (n + 13))

end

end A186978.P13252597117424350722

/-!
# A186981: Number of ordered 10-tuples of distinct pairwise coprime positive integers with largest element n.

The programs for A186981, there is no canonical definition to state claims against.
-/

/-! ## A186981.P12573638962002731375

`A200523(A358891(n+1)+A200509(n))`
-/

namespace A186981.P12573638962002731375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 (A358891 (n + 1) + A200509 n).toNat

end

end A186981.P12573638962002731375

/-! ## A186981.P1599075814236592562

`A200523(A325704(n+4)+A023194(n+1))`
-/

namespace A186981.P1599075814236592562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 (A325704 (n + 4) + A023194 (n + 1)).toNat

end

end A186981.P1599075814236592562

/-! ## A186981.P9927260822219311940

`A200523(A358891(n+1)+A200519(3*n+4))`
-/

namespace A186981.P9927260822219311940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200523 (A358891 (n + 1) + A200519 (3 * n + 4)).toNat

end

end A186981.P9927260822219311940

/-!
# A186982: Number of 6-element subsets of {1, 2, ..., n} having pairwise coprime elements.

The programs for A186982, there is no canonical definition to state claims against.
-/

/-! ## A186982.P14625644835661438185

`∑[A186977(n)]`
-/

namespace A186982.P14625644835661438185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186977 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186982.P14625644835661438185

/-! ## A186982.P8911271757978320150

`∑[A186990(n+11)-A186989(n+11)]`
-/

namespace A186982.P8911271757978320150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186990 (n + 11) - A186989 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186982.P8911271757978320150

/-!
# A186983: Number of 7-element subsets of {1, 2, ..., n} having pairwise coprime elements.

The programs for A186983, there is no canonical definition to state claims against.
-/

/-! ## A186983.P982725984443678770

`∑[A186978(n)]`
-/

namespace A186983.P982725984443678770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186978 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186983.P982725984443678770

/-! ## A186983.P13807483593441973735

`∑[A186991(n+13)-A186990(n+13)]`
-/

namespace A186983.P13807483593441973735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186991 (n + 13) - A186990 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186983.P13807483593441973735

/-! ## A186983.P16897929691924182836

`a(n-1)+A186978(n)%A099855(n)` with `a(0)=6`
-/

namespace A186983.P16897929691924182836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + Int.tmod (A186978 (n + 13)) (A099855 n)

end

end A186983.P16897929691924182836

/-! ## A186983.P14370242706864658564

`∑[Δ[A187268(n+12)]-A186990(n+13)]`
-/

namespace A186983.P14370242706864658564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187268 (n + 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A186990 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186983.P14370242706864658564

/-! ## A186983.P14007162098330557923

`∑[A187268(n+13)-(A187268(n+12)+A186990(n+13))]`
-/

namespace A186983.P14007162098330557923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187268 (n + 13) - (A187268 (n + 12) + A186990 (n + 13))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186983.P14007162098330557923

/-!
# A186984: Number of 8-element subsets of {1, 2, ..., n} having pairwise coprime elements.

The programs for A186984, there is no canonical definition to state claims against.
-/

/-! ## A186984.P6981893191976906117

`∑[A186979(n)]`
-/

namespace A186984.P6981893191976906117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186979 (n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186984.P6981893191976906117

/-!
# A186985: Number of 9-element subsets of {1, 2, ..., n} having pairwise coprime elements.

The programs for A186985, there is no canonical definition to state claims against.
-/

/-! ## A186985.P7376217497063316353

`∑[A186980(n)]`
-/

namespace A186985.P7376217497063316353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186980 (n + 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186985.P7376217497063316353

/-!
# A186986: Number of 10-element subsets of {1, 2, ..., n} having pairwise coprime elements.

The programs for A186986, there is no canonical definition to state claims against.
-/

/-! ## A186986.P9682824076347617088

`∑[A186981(n)]`
-/

namespace A186986.P9682824076347617088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186981 (n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186986.P9682824076347617088

/-! ## A186986.P381144318421577537

`∑{d}[A000079(n), A186981(A001222(#))]`
-/

namespace A186986.P381144318421577537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A186981 ((A001222 d).toNat + 23)

end

end A186986.P381144318421577537

/-!
# A186987: Number of subsets of {1, 2, ..., n} containing n and having <=3 pairwise coprime elements.

The programs for A186987, there is no canonical definition to state claims against.
-/

/-! ## A186987.P17852164242133125474

`A000007(n)+Δ[A187264(A028310(n))]`
-/

namespace A186987.P17852164242133125474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187264 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A186987.P17852164242133125474

/-! ## A186987.P18235989225856377509

`A036997(n+1)+A186971(n+1)+A185953(n+1)`
-/

namespace A186987.P18235989225856377509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1) + (A186971 (n + 1) + A185953 (n + 1))

end

end A186987.P18235989225856377509

/-! ## A186987.P14775549740540718708

`A187264(n+1)+A000007(n)-A187264(A028310(n))`
-/

namespace A186987.P14775549740540718708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187264 (n + 1) + (A000007 n - A187264 (A028310 n).toNat)

end

end A186987.P14775549740540718708

/-! ## A186987.P4179940890482796309

`Δ[A187264(A028310(n))%A187264(n+1)]`
-/

namespace A186987.P4179940890482796309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187264 (A028310 n).toNat) (A187264 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186987.P4179940890482796309

/-! ## A186987.P6601111709077533735

`A000035(A000040(n+1))+A185953(n+1)+A000010(n+1)`
-/

namespace A186987.P6601111709077533735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 1)).toNat + (A185953 (n + 1) + A000010 (n + 1))

end

end A186987.P6601111709077533735

/-! ## A186987.P17876956732370927435

`A186988(n+1)-A185348(n+1)`
-/

namespace A186987.P17876956732370927435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) - A185348 (n + 1)

end

end A186987.P17876956732370927435

/-! ## A186987.P13347816603527128844

`A186988(n+1)-Δ[A015623(A028310(n))]`
-/

namespace A186987.P13347816603527128844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) - (f1 (n + 1) - f1 n)

end

end A186987.P13347816603527128844

/-! ## A186987.P455877702834865855

`A186988(n+1)+A015623(A028310(n))-A015623(n+1)`
-/

namespace A186987.P455877702834865855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) + (A015623 (A028310 n).toNat - A015623 (n + 1))

end

end A186987.P455877702834865855

/-! ## A186987.P13419355995593591493

`A186988(n+1)+A015623(A233583(n+1))-A015623(n+1)`
-/

namespace A186987.P13419355995593591493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) + (A015623 (A233583 (n + 1)).toNat - A015623 (n + 1))

end

end A186987.P13419355995593591493

/-! ## A186987.P7225809918653898246

`A186988(n+1)-Δ[A015623(A233583(n+1))]`
-/

namespace A186987.P7225809918653898246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) - (f1 (n + 1) - f1 n)

end

end A186987.P7225809918653898246

/-! ## A186987.P11015275561262269319

`A000010(n+1)+A185953(n+1)+A000035(A015614(n+1))`
-/

namespace A186987.P11015275561262269319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A185953 (n + 1) + A000035 (A015614 (n + 1)).toNat)

end

end A186987.P11015275561262269319

/-!
# A186988: Number of subsets of {1, 2, ..., n} containing n and having <=4 pairwise coprime elements.

The programs for A186988, there is no canonical definition to state claims against.
-/

/-! ## A186988.P10182447860450285178

`A186987(n+1)+A185348(n+1)`
-/

namespace A186988.P10182447860450285178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) + A185348 (n + 1)

end

end A186988.P10182447860450285178

/-! ## A186988.P3469662510726542909

`A000007(n)+Δ[A187265(A028310(n))]`
-/

namespace A186988.P3469662510726542909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A186988.P3469662510726542909

/-! ## A186988.P5670868502754999746

`Δ[A187265(A028310(n))+A057427(n)]`
-/

namespace A186988.P5670868502754999746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186988.P5670868502754999746

/-! ## A186988.P5366915799847143677

`Δ[A187265(A028310(n))-A054977(n)]`
-/

namespace A186988.P5366915799847143677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186988.P5366915799847143677

/-! ## A186988.P15507893975938844454

`Δ[A187265(A028310(n))%A007262(n)]`
-/

namespace A186988.P15507893975938844454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187265 (A028310 n).toNat) (A007262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186988.P15507893975938844454

/-! ## A186988.P12676530382984516646

`A186987(n+1)+Δ[A015623(A028310(n))]`
-/

namespace A186988.P12676530382984516646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) + (f1 (n + 1) - f1 n)

end

end A186988.P12676530382984516646

/-! ## A186988.P5707004025414365502

`A187265(n+1)+A000007(n)-A187265(A028310(n))`
-/

namespace A186988.P5707004025414365502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) + (A000007 n - A187265 (A028310 n).toNat)

end

end A186988.P5707004025414365502

/-! ## A186988.P10938457410001631396

`A054977(n)*A187265(n+1)-A187265(A028310(n))`
-/

namespace A186988.P10938457410001631396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A187265 (n + 1) - A187265 (A028310 n).toNat

end

end A186988.P10938457410001631396

/-! ## A186988.P938267535400150078

`A187265(n+1)-A057427(n)*A187265(A028310(n))`
-/

namespace A186988.P938267535400150078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187265 (n + 1) - A057427 n * A187265 (A028310 n).toNat

end

end A186988.P938267535400150078

/-! ## A186988.P2423686075119712115

`A015623(n+1)+A186987(n+1)-A015623(A028310(n))`
-/

namespace A186988.P2423686075119712115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + (A186987 (n + 1) - A015623 (A028310 n).toNat)

end

end A186988.P2423686075119712115

/-! ## A186988.P15853216673220213198

`A015623(n+1)+A186987(n+1)-A015623(A233583(n+1))`
-/

namespace A186988.P15853216673220213198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (n + 1) + (A186987 (n + 1) - A015623 (A233583 (n + 1)).toNat)

end

end A186988.P15853216673220213198

/-! ## A186988.P7077266059887876559

`Δ[A187265(A233583(n+1))%A177747(n)]`
-/

namespace A186988.P7077266059887876559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187265 (A233583 (n + 1)).toNat) (A177747 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186988.P7077266059887876559

/-! ## A186988.P16864348518500044302

`A186987(n+1)+Δ[A015623(A233583(n+1))]`
-/

namespace A186988.P16864348518500044302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015623 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) + (f1 (n + 1) - f1 n)

end

end A186988.P16864348518500044302

/-!
# A186989: Number of subsets of {1, 2, ..., n} containing n and having <=5 pairwise coprime elements.

The programs for A186989, there is no canonical definition to state claims against.
-/

/-! ## A186989.P3819417114249017132

`Δ[A187266(A028310(n))]+floor(acot(n))`
-/

namespace A186989.P3819417114249017132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A186989.P3819417114249017132

/-! ## A186989.P10943816623793395910

`A000007(n)+Δ[A187266(A028310(n))]`
-/

namespace A186989.P10943816623793395910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A186989.P10943816623793395910

/-! ## A186989.P1872840481266984718

`Δ[A187266(A028310(n))+A057427(n)]`
-/

namespace A186989.P1872840481266984718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186989.P1872840481266984718

/-! ## A186989.P1174994158620648585

`Δ[A187266(A028310(n))-A054977(n)]`
-/

namespace A186989.P1174994158620648585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186989.P1174994158620648585

/-! ## A186989.P6325803901473178123

`Δ[A187266(A028310(n))%A123991(n)]`
-/

namespace A186989.P6325803901473178123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187266 (A028310 n).toNat) (A123991 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186989.P6325803901473178123

/-! ## A186989.P16667938713797845015

`A186988(n+1)+Δ[A015698(A233583(n+1))]`
-/

namespace A186989.P16667938713797845015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186988 (n + 1) + (f1 (n + 1) - f1 n)

end

end A186989.P16667938713797845015

/-! ## A186989.P9484619327862416204

`Δ[A187266(A028310(n))]+A000010(n+2)%2`
-/

namespace A186989.P9484619327862416204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000010 (n + 2)) 2

end

end A186989.P9484619327862416204

/-! ## A186989.P11516832697440282371

`A187266(n+1)+A000007(n)-A187266(A028310(n))`
-/

namespace A186989.P11516832697440282371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (n + 1) + (A000007 n - A187266 (A028310 n).toNat)

end

end A186989.P11516832697440282371

/-! ## A186989.P16930945622630260668

`A054977(n)*A187266(n+1)-A187266(A028310(n))`
-/

namespace A186989.P16930945622630260668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A187266 (n + 1) - A187266 (A028310 n).toNat

end

end A186989.P16930945622630260668

/-! ## A186989.P15810974484301339006

`A187266(n+1)-A057427(n)*A187266(A028310(n))`
-/

namespace A186989.P15810974484301339006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187266 (n + 1) - A057427 n * A187266 (A028310 n).toNat

end

end A186989.P15810974484301339006

/-! ## A186989.P832947979799323669

`A015698(n+1)+A186988(n+1)-A015698(A233583(n+1))`
-/

namespace A186989.P832947979799323669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015698 (n + 1) + (A186988 (n + 1) - A015698 (A233583 (n + 1)).toNat)

end

end A186989.P832947979799323669

/-!
# A186990: Number of subsets of {1, 2, ..., n} containing n and having <=6 pairwise coprime elements.

The programs for A186990, there is no canonical definition to state claims against.
-/

/-! ## A186990.P16527775650139950302

`A186991(n+1)-A326844(A147220(n+1))`
-/

namespace A186990.P16527775650139950302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186991 (n + 1) - A326844 (A147220 (n + 1)).toNat

end

end A186990.P16527775650139950302

/-! ## A186990.P17407905594672396871

`A186992(n+1)-A326844(A147220(n+1))`
-/

namespace A186990.P17407905594672396871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186992 (n + 1) - A326844 (A147220 (n + 1)).toNat

end

end A186990.P17407905594672396871

/-! ## A186990.P13020651371018871323

`A186993(n+1)-A326844(A147220(n+1))`
-/

namespace A186990.P13020651371018871323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186993 (n + 1) - A326844 (A147220 (n + 1)).toNat

end

end A186990.P13020651371018871323

/-! ## A186990.P9405517499018190845

`A186991(n+1)-A321537(A075125(n+5))`
-/

namespace A186990.P9405517499018190845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186991 (n + 1) - A321537 (A075125 (n + 5)).toNat

end

end A186990.P9405517499018190845

/-!
# A186993: Number of subsets of {1, 2, ..., n} containing n and having <=9 pairwise coprime elements.

The programs for A186993, there is no canonical definition to state claims against.
-/

/-! ## A186993.P15503255135707971428

`A000007(n)+Δ[A187270(A028310(n))]`
-/

namespace A186993.P15503255135707971428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187270 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A186993.P15503255135707971428

/-!
# A186994: Number of maximum subsets of {1, 2, ..., n} containing n and having pairwise coprime elements.

The programs for A186994, the canonical program `A186994.P7214231733505960877` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186994 has offset 1).

The definition of A186994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186994.P593012070256432908

`A186972(∑[A186971(n+1)])`
-/

namespace A186994.P593012070256432908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186994.P593012070256432908

namespace A186994

/-- `A186972(∑[A186971(n+1)])` -/
def P593012070256432908.Spec : Prop :=
  ∀ n, P593012070256432908.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P12918749951759511686

`A186972(∑[A048865(n+1)]+2*n+1)`
-/

namespace A186994.P12918749951759511686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)).toNat

end

end A186994.P12918749951759511686

namespace A186994

/-- `A186972(∑[A048865(n+1)]+2*n+1)` -/
def P12918749951759511686.Spec : Prop :=
  ∀ n, P12918749951759511686.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P10462683828193544282

`A186972(∑[A048865(n+1)+A036453(n+1)])`
-/

namespace A186994.P10462683828193544282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186994.P10462683828193544282

namespace A186994

/-- `A186972(∑[A048865(n+1)+A036453(n+1)])` -/
def P10462683828193544282.Spec : Prop :=
  ∀ n, P10462683828193544282.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P12207718731618216170

`A186972(∑[A036234(n+1)-A297155(n+1)])`
-/

namespace A186994.P12207718731618216170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A297155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186994.P12207718731618216170

namespace A186994

/-- `A186972(∑[A036234(n+1)-A297155(n+1)])` -/
def P12207718731618216170.Spec : Prop :=
  ∀ n, P12207718731618216170.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P13052694732589917945

`A186972(∑[A127750(2*n)+A048865(n+1)])`
-/

namespace A186994.P13052694732589917945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127750 (2 * n) + A048865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186994.P13052694732589917945

namespace A186994

/-- `A186972(∑[A127750(2*n)+A048865(n+1)])` -/
def P13052694732589917945.Spec : Prop :=
  ∀ n, P13052694732589917945.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P5895531504743908833

`A186972(∑[A048865(n+1)+A157532(n+1)-1])`
-/

namespace A186994.P5895531504743908833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A157532 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186994.P5895531504743908833

namespace A186994

/-- `A186972(∑[A048865(n+1)+A157532(n+1)-1])` -/
def P5895531504743908833.Spec : Prop :=
  ∀ n, P5895531504743908833.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P7214231733505960877

`A000005(A038610(n+1)/A066838(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A186994

/-- `A000005(A038610(n+1)/A066838(n+1))` -/
def P7214231733505960877.Spec : Prop :=
  ∀ n, P7214231733505960877.a n = A186994 (n + 1)

theorem P7214231733505960877.correct : P7214231733505960877.Spec := by
  intro n
  simp only [A186994, Nat.add_sub_cancel]

end A186994

/-! ## A186994.P9389757759155560137

`abs(Δ[A187092(A171173((n+1)²))])`
-/

namespace A186994.P9389757759155560137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187092 (A171173 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A186994.P9389757759155560137

namespace A186994

/-- `abs(Δ[A187092(A171173((n+1)²))])` -/
def P9389757759155560137.Spec : Prop :=
  ∀ n, P9389757759155560137.a n = A186994 (n + 1)

end A186994

/-! ## A186994.P8207728380043467847

`Δ[A187092(A171173((n+1)²))%A000041(n+1)]`
-/

namespace A186994.P8207728380043467847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187092 (A171173 ((n + 1) ^ 2)).toNat) (A000041 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A186994.P8207728380043467847

namespace A186994

/-- `Δ[A187092(A171173((n+1)²))%A000041(n+1)]` -/
def P8207728380043467847.Spec : Prop :=
  ∀ n, P8207728380043467847.a n = A186994 (n + 1)

end A186994

/-!
# A186996: G.f. satisfies: A(x) = 1 + x*A(x) + x^2*A(x)^4.

The programs for A186996, there is no canonical definition to state claims against.
-/

/-! ## A186996.P15082910557466298544

`∑[A364410(n)]`
-/

namespace A186996.P15082910557466298544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364410 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186996.P15082910557466298544

/-! ## A186996.P13887043968004726260

`A378291(∑[n+1]+n)`
-/

namespace A186996.P13887043968004726260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A186996.P13887043968004726260

/-! ## A186996.P8085012761440236701

`and(-1, A378291(A034856(n+1)))`
-/

namespace A186996.P8085012761440236701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A378291 (A034856 (n + 1)).toNat)

end

end A186996.P8085012761440236701

/-! ## A186996.P15949153131217141134

`A023532(3*n+1)*A378291(A034856(n+1))`
-/

namespace A186996.P15949153131217141134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (3 * n + 1) * A378291 (A034856 (n + 1)).toNat

end

end A186996.P15949153131217141134

/-! ## A186996.P17134057473678536041

`A378291(A034856(n+1))+A326627(A159918(n))`
-/

namespace A186996.P17134057473678536041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 (A034856 (n + 1)).toNat + A326627 (A159918 n).toNat

end

end A186996.P17134057473678536041

/-! ## A186996.P8828481488956080103

`A378291(A034856(n+1))+A326627(A328578(n))`
-/

namespace A186996.P8828481488956080103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378291 (A034856 (n + 1)).toNat + A326627 (A328578 n).toNat

end

end A186996.P8828481488956080103

/-! ## A186996.P18082805276348913138

`A328578(A107003(n+1))*A378291(A034856(n+1))`
-/

namespace A186996.P18082805276348913138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328578 (A107003 (n + 1)).toNat * A378291 (A034856 (n + 1)).toNat

end

end A186996.P18082805276348913138

/-!
# A186997: G.f. satisfies: A(x) = 1 + x*A(x)^3 + x^2*A(x)^4.

The programs for A186997, there is no canonical definition to state claims against.
-/

/-! ## A186997.P7378516662749350265

`A378290(∑[n+1]+n)`
-/

namespace A186997.P7378516662749350265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378290 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A186997.P7378516662749350265

/-! ## A186997.P4395948517664299677

`A192481(n+1)+A192482(n+1)-A192479(n+1)`
-/

namespace A186997.P4395948517664299677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192481 (n + 1) + (A192482 (n + 1) - A192479 (n + 1))

end

end A186997.P4395948517664299677

/-! ## A186997.P16415985640367924810

`A071943(∑[4*n])/(n+1)`
-/

namespace A186997.P16415985640367924810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071943 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A186997.P16415985640367924810

/-!
# A186998: G.f. satisfies: A(x) = Sum_{n>=0} x^n*(1 + x*A(x)^n)^n.

The programs for A186998, there is no canonical definition to state claims against.
-/

/-! ## A186998.P16031050644604438050

`A110656(∑[A149963(n)+1])`
-/

namespace A186998.P16031050644604438050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149963 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186998.P16031050644604438050

/-! ## A186998.P12872970454508524491

`A195174(A149996(n)+n²)`
-/

namespace A186998.P12872970454508524491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A149996 n + (n ^ 2 : ℤ)).toNat

end

end A186998.P12872970454508524491

/-! ## A186998.P15547563494598982416

`A137588(A307733(n)+A004277(n))`
-/

namespace A186998.P15547563494598982416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A307733 n + A004277 n).toNat

end

end A186998.P15547563494598982416

/-! ## A186998.P1781101466843405778

`A137588(A307733(n)+A018252(n+1))`
-/

namespace A186998.P1781101466843405778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A307733 n + A018252 (n + 1)).toNat

end

end A186998.P1781101466843405778

/-!
# A186999: G.f. satisfies: A(x) = Sum_{n>=0} x^n/(1 - x*A(x)^n)^n.

The programs for A186999, there is no canonical definition to state claims against.
-/

/-! ## A186999.P12758105963795798365

`A023193(A200215(n))`
-/

namespace A186999.P12758105963795798365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A200215 n).toNat

end

end A186999.P12758105963795798365

/-! ## A186999.P10796510667760544046

`A008617(∑[A060996(n)])`
-/

namespace A186999.P10796510667760544046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186999.P10796510667760544046

/-! ## A186999.P15240945594447564774

`A279564(n)-A191928(A067538(3*n+4))`
-/

namespace A186999.P15240945594447564774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279564 n - A191928 (A067538 (3 * n + 4)).toNat

end

end A186999.P15240945594447564774

