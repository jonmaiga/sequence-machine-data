import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A376400: a(0) = 1, and for n > 0, a(n) = a(n-1) * A276076(a(n-1)), where A276076 is the factorial base exp-function.

The programs for A376400, there is no canonical definition to state claims against.
-/

/-! ## A376400.P14733007282789081327

`a(n-1)*A276076(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376400.P14733007282789081327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A276076 (a (n - 1)).toNat

end

end A376400.P14733007282789081327

/-! ## A376400.P8934809099872923117

`Δ[A376401(n)]`
-/

namespace A376400.P8934809099872923117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376400.P8934809099872923117

/-! ## A376400.P6730910477326448950

`A376401(n+1)-A376401(n)`
-/

namespace A376400.P6730910477326448950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376401 (n + 1) - A376401 n

end

end A376400.P6730910477326448950

/-!
# A376401: a(n) = A276075(A376400(n)); Partial sums of A376400.

The programs for A376401, there is no canonical definition to state claims against.
-/

/-! ## A376401.P10339463303919435605

`a(n-1)+A376400(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A376401.P10339463303919435605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A376400 (n - 1)

end

end A376401.P10339463303919435605

/-! ## A376401.P8572873211546174468

`∑[A376400(n)]-A376400(n)`
-/

namespace A376401.P8572873211546174468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A376400 n

end

end A376401.P8572873211546174468

/-!
# A376403: a(0) = 0, and for n > 0, a(n) = a(n-1) + A276076(a(n-1)), where A276076 is the factorial base exp-function.

The programs for A376403, there is no canonical definition to state claims against.
-/

/-! ## A376403.P18225087863330077340

`a(n-1)+A376399(n-1)` with `a(0)=0`
-/

namespace A376403.P18225087863330077340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A376399 (n - 1)

end

end A376403.P18225087863330077340

/-! ## A376403.P11897417426599491528

`a(n-1)+A276076(a(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376403.P11897417426599491528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A276076 (a (n - 1)).toNat

end

end A376403.P11897417426599491528

/-! ## A376403.P9868338189470895486

`∑[A376399(n)]-A376399(n)`
-/

namespace A376403.P9868338189470895486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A376399 n

end

end A376403.P9868338189470895486

/-!
# A376404: Dirichlet inverse of 2*phi(n) - phi(A003961(n)), where phi is Euler totient function and A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

The programs for A376404, there is no canonical definition to state claims against.
-/

/-! ## A376404.P1951568963056348987

`∑{d}[n+1, A346248(#)]`
-/

namespace A376404.P1951568963056348987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346248 d

end

end A376404.P1951568963056348987

/-! ## A376404.P12729869377555602522

`∑{d}[n+1, A000005(#)*A378753((n+1)/#)]`
-/

namespace A376404.P12729869377555602522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A376404.P12729869377555602522

/-! ## A376404.P11571559283893179859

`∑{d}[n+1, A323912(#)*A378755((n+1)/#)]`
-/

namespace A376404.P11571559283893179859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A378755 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A376404.P11571559283893179859

/-! ## A376404.P1927991717257171454

`A349754(n+1)^(A020994(n+1)%2)`
-/

namespace A376404.P1927991717257171454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349754 (n + 1) : ℚ) ^ (Int.tmod (A020994 (n + 1)) 2 : ℤ)

end

end A376404.P1927991717257171454

/-! ## A376404.P5931295508469906293

`A349754(n+1)+A000038(A023106(n))`
-/

namespace A376404.P5931295508469906293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349754 (n + 1) + A000038 (A023106 n).toNat

end

end A376404.P5931295508469906293

/-!
# A376406: a(0) = 1, and for n > 0, a(n) = A019565(Sum_{i=0..n-1} a(i)), where A019565 is the base-2 exp-function.

The programs for A376406, there is no canonical definition to state claims against.
-/

/-! ## A376406.P420626662215586180

`A019565(A376407(n))`
-/

namespace A376406.P420626662215586180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A376407 n).toNat

end

end A376406.P420626662215586180

/-! ## A376406.P4956315729594508994

`A185227(n)+Δ[A376407(n)]`
-/

namespace A376406.P4956315729594508994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185227 n + (f1 (n + 1) - f1 n)

end

end A376406.P4956315729594508994

/-! ## A376406.P14889556821541568656

`A376407(n+1)-A376407(n)`
-/

namespace A376406.P14889556821541568656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376407 (n + 1) - A376407 n

end

end A376406.P14889556821541568656

/-! ## A376406.P16631237750980031778

`Δ[A376407(A084964(2*n+1))]`
-/

namespace A376406.P16631237750980031778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376407 (A084964 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376406.P16631237750980031778

/-! ## A376406.P3633105211884827836

`A048142(n+1)+Δ[A376407(n)]`
-/

namespace A376406.P3633105211884827836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048142 (n + 1) + (f1 (n + 1) - f1 n)

end

end A376406.P3633105211884827836

/-!
# A376407: a(0) = 0, and for n > 0, a(n) = a(n-1) + A019565(a(n-1)), where A019565 is the base-2 exp-function.

The programs for A376407, there is no canonical definition to state claims against.
-/

/-! ## A376407.P8657781561089100137

`a(n-1)+A376406(n-1)` with `a(0)=0`
-/

namespace A376407.P8657781561089100137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A376406 (n - 1)

end

end A376407.P8657781561089100137

/-! ## A376407.P6647739572057086593

`a(n-1)+A019565(a(n-1))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376407.P6647739572057086593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A019565 (a (n - 1)).toNat

end

end A376407.P6647739572057086593

/-! ## A376407.P5451588927233553558

`∑[A376406(n)]-A376406(n)`
-/

namespace A376407.P5451588927233553558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A376406 n

end

end A376407.P5451588927233553558

/-!
# A376408: a(0) = 1, and for n > 0, a(n) = a(n-1) * A019565(a(n-1)), where A019565 is the base-2 exp-function.

The programs for A376408, there is no canonical definition to state claims against.
-/

/-! ## A376408.P4563559686940015234

`a(n-1)*A019565(a(n-1))` with `a(0)=1`
-/

namespace A376408.P4563559686940015234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A019565 (a (n - 1)).toNat

end

end A376408.P4563559686940015234

/-! ## A376408.P10166848383677713470

`Δ[A376409(n)]`
-/

namespace A376408.P10166848383677713470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376408.P10166848383677713470

/-! ## A376408.P8206499454705970991

`A376409(n+1)-A376409(n)`
-/

namespace A376408.P8206499454705970991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376409 (n + 1) - A376409 n

end

end A376408.P8206499454705970991

/-!
# A376409: a(n) = A048675(A376408(n)); Partial sums of A376408.

The programs for A376409, there is no canonical definition to state claims against.
-/

/-! ## A376409.P16209841474772556585

`a(n-1)+A376408(n-1)` with `a(0)=0`
-/

namespace A376409.P16209841474772556585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A376408 (n - 1)

end

end A376409.P16209841474772556585

/-!
# A376410: Number of integers whose arithmetic derivative (A003415) is equal to n!, the n-th factorial.

The programs for A376410, there is no canonical definition to state claims against.
-/

/-! ## A376410.P15336157048864668133

`A062311(n+2)+A377986(n+2)`
-/

namespace A376410.P15336157048864668133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062311 (n + 2) + A377986 (n + 2)

end

end A376410.P15336157048864668133

/-! ## A376410.P7840074647375240275

`A099302(A000142(n+2))`
-/

namespace A376410.P7840074647375240275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (A000142 (n + 2)).toNat

end

end A376410.P7840074647375240275

/-! ## A376410.P3531405330733739759

`A099302((n+2)!)`
-/

namespace A376410.P3531405330733739759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099302 (Nat.factorial (n + 2))

end

end A376410.P3531405330733739759

/-!
# A376411: a(n) is the number of terms less than A276086(n) in the range of A276086, where A276086 is the primorial base exp-function.

The programs for A376411, there is no canonical definition to state claims against.
-/

/-! ## A376411.P1211652485572987299

`A377982(A276086(n))-1`
-/

namespace A376411.P1211652485572987299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A276086 n).toNat - 1

end

end A376411.P1211652485572987299

/-! ## A376411.P744445646301761231

`A377982(A328844(n)+A328843(n)-1)`
-/

namespace A376411.P744445646301761231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A328844 n + A328843 n - 1).toNat

end

end A376411.P744445646301761231

/-! ## A376411.P16671042418543963214

`A377982(A327860(n)-A342016(n)-1)`
-/

namespace A376411.P16671042418543963214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A327860 n - A342016 n - 1).toNat

end

end A376411.P16671042418543963214

/-! ## A376411.P5334450411787823396

`A377982(A327858(n)*A351231(n)-1)`
-/

namespace A376411.P5334450411787823396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A327858 n * A351231 n - 1).toNat

end

end A376411.P5334450411787823396

/-! ## A376411.P16488980370723735216

`A377982(A328572(n)*A328573(n)*A328580(n)-1)`
-/

namespace A376411.P16488980370723735216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377982 (A328572 n * A328573 n * A328580 n - 1).toNat

end

end A376411.P16488980370723735216

/-! ## A376411.P10444872434003758056

`A372575(A373849(n)+A003415(n))-1`
-/

namespace A376411.P10444872434003758056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372575 (A373849 n + A003415 n).toNat - 1

end

end A376411.P10444872434003758056

/-! ## A376411.P6469839365164936787

`A372575(A276086(n))-A028920(2*(n+2))`
-/

namespace A376411.P6469839365164936787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372575 (A276086 n).toNat - A028920 (2 * (n + 2))

end

end A376411.P6469839365164936787

/-!
# A376413: a(n) = A276085(A048103(n)), where A276085 is the primorial base log-function, and A048103 is the range of the primorial base exp-function (A276086).

The programs for A376413, there is no canonical definition to state claims against.
-/

/-! ## A376413.P5424911931536190496

`A276085(A048103(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376413.P5424911931536190496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A048103 (n + 1)).toNat

end

end A376413.P5424911931536190496

/-! ## A376413.P12517336250722217831

`A276085(record[(n+1)/A327936(n+1)])`
-/

namespace A376413.P12517336250722217831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327936 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A376413.P12517336250722217831

/-! ## A376413.P3138530379353041581

`A276085(lt[A092486(n), A030545(n)])`
-/

namespace A376413.P3138530379353041581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376413.P3138530379353041581

/-!
# A376416: 

The programs for A376416, there is no canonical definition to state claims against.
-/

/-! ## A376416.P7118578714858174202

`A034386(A002110(n))`
-/

namespace A376416.P7118578714858174202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A002110 n).toNat

end

end A376416.P7118578714858174202

/-!
# A376417: a(n) = n - A276076(A276075(n)), where A276075 and A276076 are factorial base log and exp-functions.

The programs for A376417, there is no canonical definition to state claims against.
-/

/-! ## A376417.P3445557058713680675

`1-A392877(n+1)+n`
-/

namespace A376417.P3445557058713680675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A392877 (n + 1) + (n : ℤ)

end

end A376417.P3445557058713680675

/-!
# A376418: 

The programs for A376418, there is no canonical definition to state claims against.
-/

/-! ## A376418.P7525976607839560133

`n+1-A048103(A372575(n+1))`
-/

namespace A376418.P7525976607839560133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A048103 (A372575 (n + 1)).toNat

end

end A376418.P7525976607839560133

/-! ## A376418.P14220029048706442085

`n+1-A392879(A392879(n+1))`
-/

namespace A376418.P14220029048706442085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A392879 (A392879 (n + 1)).toNat

end

end A376418.P14220029048706442085

/-! ## A376418.P7631318454099114595

`and(A198275(n), A376417(n+1))`
-/

namespace A376418.P7631318454099114595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A376417 (n + 1))

end

end A376418.P7631318454099114595

/-! ## A376418.P10033887606140617689

`and(A171389(n), A376417(n+1))`
-/

namespace A376418.P10033887606140617689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A376417 (n + 1))

end

end A376418.P10033887606140617689

/-! ## A376418.P2020808952811591754

`and(A198276(n), A376417(n+1))`
-/

namespace A376418.P2020808952811591754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A376417 (n + 1))

end

end A376418.P2020808952811591754

/-! ## A376418.P7275346773481484192

`and(A291557(n), A376417(n+1))`
-/

namespace A376418.P7275346773481484192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A376417 (n + 1))

end

end A376418.P7275346773481484192

/-! ## A376418.P13530358070478100722

`and(A171390(n+1), A376417(n+1))`
-/

namespace A376418.P13530358070478100722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171390 (n + 1)) (A376417 (n + 1))

end

end A376418.P13530358070478100722

/-! ## A376418.P926557776556156023

`and(A118883(n+1), A376417(n+1))`
-/

namespace A376418.P926557776556156023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A376417 (n + 1))

end

end A376418.P926557776556156023

/-! ## A376418.P15546707208677400969

`and(A376417(n+1), A378139(n+1))`
-/

namespace A376418.P15546707208677400969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A376417 (n + 1)) (A378139 (n + 1))

end

end A376418.P15546707208677400969

/-! ## A376418.P10811589000396262445

`and(A047859(n), A376417(n+1))`
-/

namespace A376418.P10811589000396262445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047859 n) (A376417 (n + 1))

end

end A376418.P10811589000396262445

/-! ## A376418.P6823151789889774126

`and(A087522(n), A376417(n+1))`
-/

namespace A376418.P6823151789889774126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A376417 (n + 1))

end

end A376418.P6823151789889774126

/-! ## A376418.P8213021165428138115

`and(A127582(n), A376417(n+1))`
-/

namespace A376418.P8213021165428138115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127582 n) (A376417 (n + 1))

end

end A376418.P8213021165428138115

/-! ## A376418.P5123006439743270763

`and(A178965(n), A376417(n+1))`
-/

namespace A376418.P5123006439743270763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178965 n) (A376417 (n + 1))

end

end A376418.P5123006439743270763

/-! ## A376418.P16612280169879902945

`and(A201914(n), A376417(n+1))`
-/

namespace A376418.P16612280169879902945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201914 n) (A376417 (n + 1))

end

end A376418.P16612280169879902945

/-! ## A376418.P7354625871693063830

`and(A267226(n+1), A376417(n+1))`
-/

namespace A376418.P7354625871693063830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267226 (n + 1)) (A376417 (n + 1))

end

end A376418.P7354625871693063830

/-! ## A376418.P17303062916074411871

`and(A375155(n+1), A376417(n+1))`
-/

namespace A376418.P17303062916074411871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A375155 (n + 1)) (A376417 (n + 1))

end

end A376418.P17303062916074411871

/-! ## A376418.P258367517153515857

`A376417(n+1)%A002064(n)`
-/

namespace A376418.P258367517153515857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376417 (n + 1)) (A002064 n)

end

end A376418.P258367517153515857

/-! ## A376418.P17558304096075794836

`and(A087323(n), A376417(n+1))`
-/

namespace A376418.P17558304096075794836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087323 n) (A376417 (n + 1))

end

end A376418.P17558304096075794836

/-!
# A376419: a(n) = prime(1+n)*A024451(n-1) - A024451(n), where A024451(n) is the numerator of Sum_{i = 1..n} 1/prime(i).

The programs for A376419, there is no canonical definition to state claims against.
-/

/-! ## A376419.P9637323966435959553

`A024451(n)*A065091(n+1)-A024451(n+1)`
-/

namespace A376419.P9637323966435959553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 n * A065091 (n + 1) - A024451 (n + 1)

end

end A376419.P9637323966435959553

/-! ## A376419.P8675336467335124117

`A000040(n+2)*A024451(n)-A024451(n+1)`
-/

namespace A376419.P8675336467335124117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A024451 n - A024451 (n + 1)

end

end A376419.P8675336467335124117

/-!
# A376420: a(n) is the next number after n! with the same number of prime factors as n!, counted with multiplicity.

The programs for A376420, there is no canonical definition to state claims against.
-/

/-! ## A376420.P11846496314463241285

`A165712((n+2)!)`
-/

namespace A376420.P11846496314463241285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (Nat.factorial (n + 2))

end

end A376420.P11846496314463241285

/-! ## A376420.P9975397284600051542

`A165712(∏[n+2])`
-/

namespace A376420.P9975397284600051542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165712 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A376420.P9975397284600051542

/-!
# A376423: Nonnegative numbers m such that the run lengths in binary expansion of m, say (r_1, ..., r_k), correspond to a complete ruler: the sums r_i + ... r_j with i <= j <= k cover an initial interval of the positive integers.

The programs for A376423, there is no canonical definition to state claims against.
-/

/-! ## A376423.P2441802188194456318

`lt[A264977(n), A098729(A278219(n))]`
-/

namespace A376423.P2441802188194456318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098729 (A278219 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376423.P2441802188194456318

/-! ## A376423.P1836606967723082289

`lt[A264977(n), A072649(A270929(n+1))]`
-/

namespace A376423.P1836606967723082289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A270929 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376423.P1836606967723082289

/-! ## A376423.P17490227683735901677

`lt[A175286(3*n+2), A164343(A277325(n))]`
-/

namespace A376423.P17490227683735901677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175286 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164343 (A277325 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376423.P17490227683735901677

/-!
# A376427: The number of distinct values of x+y+z+w (mod n) when x*y*z*w = 1 (mod n).

The programs for A376427, there is no canonical definition to state claims against.
-/

/-! ## A376427.P11778782464395526510

`A234741(A060819(n+1)%A116888(n+1))`
-/

namespace A376427.P11778782464395526510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234741 (Int.tmod (A060819 (n + 1)) (A116888 (n + 1))).toNat

end

end A376427.P11778782464395526510

/-! ## A376427.P2148802035535545731

`A234741(A060819(n+1))%A270929(2*(n+2))`
-/

namespace A376427.P2148802035535545731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234741 (A060819 (n + 1)).toNat) (A270929 (2 * (n + 2)))

end

end A376427.P2148802035535545731

/-! ## A376427.P16422996502205487326

`A060819(n+1)-A035171(A128169(n+4))`
-/

namespace A376427.P16422996502205487326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (n + 1) - A035171 (A128169 (n + 4)).toNat

end

end A376427.P16422996502205487326

/-! ## A376427.P18328047151111017085

`A000196(A318511(n+1)%A093923(3*n+1))`
-/

namespace A376427.P18328047151111017085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A318511 (n + 1)) (A093923 (3 * n + 1))).toNat

end

end A376427.P18328047151111017085

/-! ## A376427.P17120027655477115221

`A288381(A000079(n))+A003958(n+1)`
-/

namespace A376427.P17120027655477115221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288381 (A000079 n).toNat + A003958 (n + 1)

end

end A376427.P17120027655477115221

/-!
# A376428: Numbers k that occur as shorter legs of Pythagorean triangles with Pythagorean primes A002144 as hypotenuses.

The programs for A376428, there is no canonical definition to state claims against.
-/

/-! ## A376428.P14032304890555348842

`A085722(n+1)-A369054(A085395(n+1))`
-/

namespace A376428.P14032304890555348842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1) - A369054 (A085395 (n + 1)).toNat

end

end A376428.P14032304890555348842

/-!
# A376429: Numbers k that occur as longer legs of Pythagorean triangles with Pythagorean primes A002144 as hypotenuses.

The programs for A376429, there is no canonical definition to state claims against.
-/

/-! ## A376429.P12727864448882505574

`A020883(eq[A079694(n), A320316(n)])`
-/

namespace A376429.P12727864448882505574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A376429.P12727864448882505574

/-! ## A376429.P1758024759815022170

`A024354(lt[A202453(n+5), A070561(n)])`
-/

namespace A376429.P1758024759815022170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376429.P1758024759815022170

/-! ## A376429.P16223222303568064825

`A024354(A382895(n+1)!*A081754(n+1))`
-/

namespace A376429.P16223222303568064825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024354 ((Nat.factorial (A382895 (n + 1)).toNat : ℤ) * A081754 (n + 1)).toNat

end

end A376429.P16223222303568064825

/-! ## A376429.P2914764625273411543

`A020883(A047201(n+1))%A114412(2*(n+2))`
-/

namespace A376429.P2914764625273411543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020883 (A047201 (n + 1)).toNat) (A114412 (2 * (n + 2)))

end

end A376429.P2914764625273411543

/-!
# A376430: Numbers that can appear as both short and long legs of Pythagorean triangles with Pythagorean primes A002144 as hypotenuses.

The programs for A376430, there is no canonical definition to state claims against.
-/

/-! ## A376430.P11307824557459258100

`∩[A376428(n+1), A376429(n+1)]`
-/

namespace A376430.P11307824557459258100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376430.P11307824557459258100

/-!
# A376435: Largest n-digit term in A104179.

The programs for A376435, there is no canonical definition to state claims against.
-/

/-! ## A376435.P5184608362885120599

`A104179(∑[A376433(n+1)])`
-/

namespace A376435.P5184608362885120599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104179 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376435.P5184608362885120599

/-!
# A376436: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x^2*log(1-x))^2 ).

The programs for A376436, there is no canonical definition to state claims against.
-/

/-! ## A376436.P9673036477546459240

`A124859(A317060(n+1))*A356962(n)`
-/

namespace A376436.P9673036477546459240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A317060 (n + 1)).toNat * A356962 n

end

end A376436.P9673036477546459240

/-!
# A376441: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x^2))^2 ).

The programs for A376441, there is no canonical definition to state claims against.
-/

/-! ## A376441.P5004724865834152190

`A051903(A215455(n+1))*A376443(n)`
-/

namespace A376441.P5004724865834152190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A215455 (n + 1)).toNat * A376443 n

end

end A376441.P5004724865834152190

/-! ## A376441.P4328698539820359653

`A255317(A375588(n))*A376443(n)`
-/

namespace A376441.P4328698539820359653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255317 (A375588 n).toNat * A376443 n

end

end A376441.P4328698539820359653

/-! ## A376441.P1583326692201312928

`A255317(A375831(n))*A376443(n)`
-/

namespace A376441.P1583326692201312928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255317 (A375831 n).toNat * A376443 n

end

end A376441.P1583326692201312928

/-! ## A376441.P1995204312084211564

`A355741(A389153(n))*A376443(n)`
-/

namespace A376441.P1995204312084211564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A389153 n).toNat * A376443 n

end

end A376441.P1995204312084211564

/-!
# A376442: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x^2))^3 ).

The programs for A376442, there is no canonical definition to state claims against.
-/

/-! ## A376442.P17532693967353716692

`A104607(A242783(n))*A376444(n)`
-/

namespace A376442.P17532693967353716692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104607 (A242783 n).toNat * A376444 n

end

end A376442.P17532693967353716692

/-! ## A376442.P2079828110666295031

`A210961(A335436(n))*A376444(n)`
-/

namespace A376442.P2079828110666295031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210961 (A335436 n).toNat * A376444 n

end

end A376442.P2079828110666295031

/-! ## A376442.P1050889319484686945

`A255317(A375588(n))*A376444(n)`
-/

namespace A376442.P1050889319484686945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255317 (A375588 n).toNat * A376444 n

end

end A376442.P1050889319484686945

/-! ## A376442.P869908152448635640

`A056832(A221943(3*n+1))*A376444(n)`
-/

namespace A376442.P869908152448635640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A221943 (3 * n + 1)).toNat * A376444 n

end

end A376442.P869908152448635640

/-!
# A376443: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x^2) - 1))^2 ).

The programs for A376443, there is no canonical definition to state claims against.
-/

/-! ## A376443.P17313673117810144880

`A376441(n)/A104607(A242783(n))`
-/

namespace A376443.P17313673117810144880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376441 n : ℚ) / (A104607 (A242783 n).toNat : ℚ)

end

end A376443.P17313673117810144880

/-! ## A376443.P16485389032867140085

`A376441(n)/A368330(A006389(n))`
-/

namespace A376443.P16485389032867140085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376441 n : ℚ) / (A368330 (A006389 n).toNat : ℚ)

end

end A376443.P16485389032867140085

/-! ## A376443.P8896850437633637143

`A376441(n)/A210961(A335436(n))`
-/

namespace A376443.P8896850437633637143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376441 n : ℚ) / (A210961 (A335436 n).toNat : ℚ)

end

end A376443.P8896850437633637143

/-! ## A376443.P17932937022116336490

`A376441(n)/A372262(A272107(n+1))`
-/

namespace A376443.P17932937022116336490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376441 n : ℚ) / (A372262 (A272107 (n + 1)).toNat : ℚ)

end

end A376443.P17932937022116336490

/-!
# A376444: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x^2) - 1))^3 ).

The programs for A376444, there is no canonical definition to state claims against.
-/

/-! ## A376444.P676794474467907104

`A376442(n)/A104607(A242783(n))`
-/

namespace A376444.P676794474467907104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376442 n : ℚ) / (A104607 (A242783 n).toNat : ℚ)

end

end A376444.P676794474467907104

/-! ## A376444.P11796372597886129711

`A376442(n)/A210961(A335436(n))`
-/

namespace A376444.P11796372597886129711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376442 n : ℚ) / (A210961 (A335436 n).toNat : ℚ)

end

end A376444.P11796372597886129711

/-! ## A376444.P5508011611150579701

`A376442(n)/A033630(A038076(n+1))`
-/

namespace A376444.P5508011611150579701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376442 n : ℚ) / (A033630 (A038076 (n + 1)).toNat : ℚ)

end

end A376444.P5508011611150579701

/-! ## A376444.P893701546734026557

`A376442(n)/A051903(A000045(3*n+4))`
-/

namespace A376444.P893701546734026557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376442 n : ℚ) / (A051903 (A000045 (3 * n + 4)).toNat : ℚ)

end

end A376444.P893701546734026557

/-!
# A376445: Numbers k such that A374941(k) > k.

The programs for A376445, there is no canonical definition to state claims against.
-/

/-! ## A376445.P5753766356143673833

`lt[n+1, A374941(n+1)]+1`
-/

namespace A376445.P5753766356143673833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376445.P5753766356143673833

/-! ## A376445.P1608186590143321043

`A018851(A069266(n+1))`
-/

namespace A376445.P1608186590143321043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A069266 (n + 1)).toNat

end

end A376445.P1608186590143321043

/-! ## A376445.P7686228537345636361

`∩[A067766(n+1), A184421(n+1)]`
-/

namespace A376445.P7686228537345636361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376445.P7686228537345636361

/-! ## A376445.P10211016908861226309

`∩[A068544(n+1), A184421(n+1)]`
-/

namespace A376445.P10211016908861226309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376445.P10211016908861226309

/-! ## A376445.P15841483962139468517

`lt[A303215(n+1), A000045(A038575(n))]`
-/

namespace A376445.P15841483962139468517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A038575 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376445.P15841483962139468517

/-!
# A376446: Modular phase shift of the tetration base n written by juxtaposing its representative congruence classes modulo 10 taken by starting from height 2 + v(n), and a(n) = -1 if n is a multiple of 10.

The programs for A376446, there is no canonical definition to state claims against.
-/

/-! ## A376446.P4221677276594238392

`A378421(A100793(n)+1)`
-/

namespace A376446.P4221677276594238392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378421 (A100793 n + 1).toNat

end

end A376446.P4221677276594238392

/-! ## A376446.P3329764618173768377

`A378421(A115916(n+1))`
-/

namespace A376446.P3329764618173768377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378421 (A115916 (n + 1)).toNat

end

end A376446.P3329764618173768377

/-!
# A376447: a(n) = Sum_{k=1..n} binomial(n*(m+1)-m*k-1, n-k)*k/(n*m-(m-1)*k), for m=7.

The programs for A376447, there is no canonical definition to state claims against.
-/

/-! ## A376447.P8489294888938422743

`A083853(A000110(n))+A059167(n)`
-/

namespace A376447.P8489294888938422743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083853 (A000110 n).toNat + A059167 n

end

end A376447.P8489294888938422743

/-! ## A376447.P9951177239289497976

`A086645(n)+A002265(A290932(n))`
-/

namespace A376447.P9951177239289497976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n + A002265 (A290932 n).toNat

end

end A376447.P9951177239289497976

/-!
# A376448: a(n) = k if k is odd otherwise a(n) = k+1 and k = floor( 2^n*(1+sqrt(5))/2 ).

The programs for A376448, the canonical program `A376448.P2332171977600246712` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376448 has offset 0).

The definition of A376448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376448.P2332171977600246712

`or(1, floor(ϕ*2^n))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A376448

/-- `or(1, floor(ϕ*2^n))` -/
def P2332171977600246712.Spec : Prop :=
  ∀ n, P2332171977600246712.a n = A376448 n

theorem P2332171977600246712.correct : P2332171977600246712.Spec := by
  intro n
  simp only [A376448]

end A376448

/-! ## A376448.P2122457490000266120

`ceil(ϕ*2^n)-(floor(2^n/ϕ)%2)^n`
-/

namespace A376448.P2122457490000266120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (2 ^ n : ℝ)⌉ - Int.tmod ⌊(2 ^ n : ℝ) / Real.goldenRatio⌋ 2 ^ n

end

end A376448.P2122457490000266120

namespace A376448

/-- `ceil(ϕ*2^n)-(floor(2^n/ϕ)%2)^n` -/
def P2122457490000266120.Spec : Prop :=
  ∀ n, P2122457490000266120.a n = A376448 n

end A376448

/-! ## A376448.P6542998854126653015

`A293314(n)-A068432(n+1)`
-/

namespace A376448.P6542998854126653015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - A068432 (n + 1)

end

end A376448.P6542998854126653015

namespace A376448

/-- `A293314(n)-A068432(n+1)` -/
def P6542998854126653015.Spec : Prop :=
  ∀ n, P6542998854126653015.a n = A376448 n

end A376448

/-! ## A376448.P10112369971963526195

`A293314(n)-(A063524(n)+A004555(n+2))`
-/

namespace A376448.P10112369971963526195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - (A063524 n + A004555 (n + 2))

end

end A376448.P10112369971963526195

namespace A376448

/-- `A293314(n)-(A063524(n)+A004555(n+2))` -/
def P10112369971963526195.Spec : Prop :=
  ∀ n, P10112369971963526195.a n = A376448 n

end A376448

/-! ## A376448.P1512501515279233181

`A159075(n)+A293314(n)-A004555(n+2)`
-/

namespace A376448.P1512501515279233181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + (A293314 n - A004555 (n + 2))

end

end A376448.P1512501515279233181

namespace A376448

/-- `A159075(n)+A293314(n)-A004555(n+2)` -/
def P1512501515279233181.Spec : Prop :=
  ∀ n, P1512501515279233181.a n = A376448 n

end A376448

/-! ## A376448.P2172120541157932276

`A293314(n)-A004555(2-(A063524(n)-n))`
-/

namespace A376448.P2172120541157932276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - A004555 (2 - (A063524 n - (n : ℤ))).toNat

end

end A376448.P2172120541157932276

namespace A376448

/-- `A293314(n)-A004555(2-(A063524(n)-n))` -/
def P2172120541157932276.Spec : Prop :=
  ∀ n, P2172120541157932276.a n = A376448 n

end A376448

/-! ## A376448.P7586965482116885702

`A293314(n)-A004555(n*A157928(n)+2)`
-/

namespace A376448.P7586965482116885702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - A004555 ((n : ℤ) * A157928 n + 2).toNat

end

end A376448.P7586965482116885702

namespace A376448

/-- `A293314(n)-A004555(n*A157928(n)+2)` -/
def P7586965482116885702.Spec : Prop :=
  ∀ n, P7586965482116885702.a n = A376448 n

end A376448

/-!
# A376449: Smallest sum of addition chain for n.

The programs for A376449, there is no canonical definition to state claims against.
-/

/-! ## A376449.P9278600059148595271

`A187449(A342636(n+1))+n`
-/

namespace A376449.P9278600059148595271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187449 (A342636 (n + 1)).toNat + (n : ℤ)

end

end A376449.P9278600059148595271

/-! ## A376449.P601766809040971693

`A233905(2*n+2)+A000523(A000079(n))`
-/

namespace A376449.P601766809040971693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (2 * n + 2) + A000523 (A000079 n).toNat

end

end A376449.P601766809040971693

/-!
# A376450: n in base whose greedy place values are quarter-squares (A002620).

The programs for A376450, there is no canonical definition to state claims against.
-/

/-! ## A376450.P12812743371834245874

`A007088(lt[A282388(n), A246456(3*n+5)])`
-/

namespace A376450.P12812743371834245874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246456 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376450.P12812743371834245874

/-! ## A376450.P15365062266014921016

`A007088(lt[A246353(n), A004195(n+3)])`
-/

namespace A376450.P15365062266014921016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004195 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376450.P15365062266014921016

/-! ## A376450.P18435569179719034251

`A007088(lt[A282388(n), A183422(3*(n+1))])`
-/

namespace A376450.P18435569179719034251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183422 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376450.P18435569179719034251

/-! ## A376450.P1088349981993497548

`A007088(lt[A282388(n), A329366(3*n+4)])`
-/

namespace A376450.P1088349981993497548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376450.P1088349981993497548

/-! ## A376450.P10287392844171911470

`A007088(lt[A278954(n), A001043(n+1)])`
-/

namespace A376450.P10287392844171911470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376450.P10287392844171911470

/-!
# A376451: Quarter-squares greedy Champernowne sequence (or word): write the numbers 0, 1, 10, 11, 100, 101, as in A376450 and concatenate.

The programs for A376451, there is no canonical definition to state claims against.
-/

/-! ## A376451.P14279366929916056491

`(n%floor(sqrt(n+3)))%2`
-/

namespace A376451.P14279366929916056491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 3) % 2

end

end A376451.P14279366929916056491

/-! ## A376451.P6940360195200168842

`a(A055087(n))` with `a(0)=0, a(1)=1`
-/

namespace A376451.P6940360195200168842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A055087 n).toNat

end

end A376451.P6940360195200168842

/-! ## A376451.P14764303584270121287

`char[A376453(n+1)]`
-/

namespace A376451.P14764303584270121287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A376451.P14764303584270121287

/-! ## A376451.P8927768441211615640

`char[eq[1, A257022(n)]]`
-/

namespace A376451.P8927768441211615640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A376451.P8927768441211615640

/-! ## A376451.P15871631273959209728

`char[comp[A376452(n+1)]]`
-/

namespace A376451.P15871631273959209728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376452 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A376451.P15871631273959209728

/-! ## A376451.P2423648891584656542

`a(A122197(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A376451.P2423648891584656542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A122197 (n + 1) - 1).toNat

end

end A376451.P2423648891584656542

/-! ## A376451.P8757829622460977670

`A063524(A257022(n))`
-/

namespace A376451.P8757829622460977670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A257022 n).toNat

end

end A376451.P8757829622460977670

/-! ## A376451.P16612024952687343004

`A000035(n%A000196(n+3))`
-/

namespace A376451.P16612024952687343004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (n : ℤ) (A000196 (n + 3))).toNat

end

end A376451.P16612024952687343004

/-!
# A376452: Positions of numbers in A376450 that end in 0.

The programs for A376452, there is no canonical definition to state claims against.
-/

/-! ## A376452.P18124863430181385867

`comp[A376453(n+1)]`
-/

namespace A376452.P18124863430181385867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376452.P18124863430181385867

/-! ## A376452.P146535716839907625

`comp[eq[1, A257022(n)]]`
-/

namespace A376452.P146535716839907625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376452.P146535716839907625

/-! ## A376452.P2533828722147750396

`comp[comp[A183423(n+1)]+1]`
-/

namespace A376452.P2533828722147750396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376452.P2533828722147750396

/-! ## A376452.P9092955170037908429

`lt[val(3-a(A055087(n)), 2), 1]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A376452.P9092955170037908429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  SequenceMachineLib.valuation (3 - (f1 (A055087 n).toNat : ℤ)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376452.P9092955170037908429

/-! ## A376452.P13263006578129157084

`lt[A158388(n), A257022(n)]`
-/

namespace A376452.P13263006578129157084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376452.P13263006578129157084

/-! ## A376452.P4440259905378128861

`abs(A131738(comp[A183422(n+1)]))`
-/

namespace A376452.P4440259905378128861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183422 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A376452.P4440259905378128861

/-! ## A376452.P6002528124788916035

`eq[2, A000041(a(A055087(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A376452.P6002528124788916035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000041 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376452.P6002528124788916035

/-! ## A376452.P6444460043068867442

`eq[2, A018362(a(A055087(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A376452.P6444460043068867442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A018362 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376452.P6444460043068867442

/-! ## A376452.P16970047040844091423

`eq[2, A027833(a(A055087(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A376452.P16970047040844091423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A027833 (f2 (A055087 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376452.P16970047040844091423

/-! ## A376452.P2689070027705452599

`comp[A000027(n+1)-A257022(n)]`
-/

namespace A376452.P2689070027705452599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A257022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376452.P2689070027705452599

/-!
# A376453: Positions of numbers in A376450 that end in 1.

The programs for A376453, there is no canonical definition to state claims against.
-/

/-! ## A376453.P3419490345418518499

`eq[1, A257022(n)]`
-/

namespace A376453.P3419490345418518499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376453.P3419490345418518499

/-! ## A376453.P13629369883082683156

`comp[A183423(n+1)]+1`
-/

namespace A376453.P13629369883082683156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376453.P13629369883082683156

/-! ## A376453.P16998397145662584624

`record[(n+1)/A257022(n+1)]`
-/

namespace A376453.P16998397145662584624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A257022 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376453.P16998397145662584624

/-! ## A376453.P3093244678478532399

`lt[0, a(A055087(n))/2]` with `a(0)=-2, a(1)=10`
-/

namespace A376453.P3093244678478532399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [-2, 10] fun n f2 =>
  f2 (A055087 n).toNat / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A376453.P3093244678478532399

/-! ## A376453.P4310771813764326957

`lt[A257022(n), 2*A057427(n)]`
-/

namespace A376453.P4310771813764326957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257022 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376453.P4310771813764326957

/-! ## A376453.P6724598277976574384

`record[A000027(n+1)-A257022(n)]`
-/

namespace A376453.P6724598277976574384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A257022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376453.P6724598277976574384

/-!
# A376454: n in base whose place values are a modified ternary sequence; see Comments.

The programs for A376454, there is no canonical definition to state claims against.
-/

/-! ## A376454.P11299120475509409416

`lt[A118881(n)², A006087(n+1)]`
-/

namespace A376454.P11299120475509409416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376454.P11299120475509409416

/-! ## A376454.P12670089239077285524

`lt[A069877(n), A141213(A300362(n))]`
-/

namespace A376454.P12670089239077285524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A300362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376454.P12670089239077285524

/-! ## A376454.P16451102682511742466

`∩[A187126(n+1), A276388(n)]`
-/

namespace A376454.P16451102682511742466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376454.P16451102682511742466

/-!
# A376455: a(n) = least k such that n^(2k+1)/(2k+1)! < 1.

The programs for A376455, there is no canonical definition to state claims against.
-/

/-! ## A376455.P2384672688856040163

`A065033(A065027(n)-1)`
-/

namespace A376455.P2384672688856040163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065027 n - 1).toNat

end

end A376455.P2384672688856040163

/-! ## A376455.P9771924916244340534

`A065033(A086824(n)-1)`
-/

namespace A376455.P9771924916244340534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A086824 n - 1).toNat

end

end A376455.P9771924916244340534

/-! ## A376455.P3067364255847728065

`A123108(xor(1, A065027(n)))`
-/

namespace A376455.P3067364255847728065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (A065027 n)).toNat

end

end A376455.P3067364255847728065

/-! ## A376455.P6128024428183364172

`A004526(A065027(A000007(n)+n))`
-/

namespace A376455.P6128024428183364172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065027 (A000007 n + (n : ℤ)).toNat).toNat

end

end A376455.P6128024428183364172

/-! ## A376455.P8495451044715287199

`A123108(A065027(n)+A000007(n))`
-/

namespace A376455.P8495451044715287199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A065027 n + A000007 n).toNat

end

end A376455.P8495451044715287199

/-!
# A376456: Let s(x) be the Maclaurin series for cos(x); then a(n) is the index k for which the (k+1)-st partial sum of s(2*n*Pi) is greatest among all partial sums.

The programs for A376456, there is no canonical definition to state claims against.
-/

/-! ## A376456.P10124658220194203259

`∑[4/Δ[ceil(10*n/7)]]`
-/

namespace A376456.P10124658220194203259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈10 * ((n : ℚ) / 7)⌉

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376456.P10124658220194203259

/-! ## A376456.P9270452630059443714

`2*ceil(∑[atan((n+1)²²)])`
-/

namespace A376456.P9270452630059443714
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (((n + 1) ^ 2) ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A376456.P9270452630059443714

/-! ## A376456.P16991103547556052722

`and(-2, floor((sqrt(2)+sqrt(3))*(n+1)))`
-/

namespace A376456.P16991103547556052722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ⌊(Real.sqrt (2 : ℝ) + Real.sqrt (3 : ℝ)) * (n + 1 : ℝ)⌋

end

end A376456.P16991103547556052722

/-! ## A376456.P5510026424280868544

`A132222(n+3)-7`
-/

namespace A376456.P5510026424280868544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132222 (n + 3) - 7

end

end A376456.P5510026424280868544

/-! ## A376456.P2261790374803988617

`2*comp[n*A144595(n)]`
-/

namespace A376456.P2261790374803988617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376456.P2261790374803988617

/-! ## A376456.P13173109238462749926

`2*floor(log2(A181140(n+1)))`
-/

namespace A376456.P13173109238462749926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.log 2 (A181140 (n + 1)).toNat

end

end A376456.P13173109238462749926

/-! ## A376456.P6625626867129772144

`2*(A057358(n+1)+n+1)`
-/

namespace A376456.P6625626867129772144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A057358 (n + 1) + (n + 1 : ℤ))

end

end A376456.P6625626867129772144

/-! ## A376456.P5095159849350133188

`A052928(A110117(n+1))`
-/

namespace A376456.P5095159849350133188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A110117 (n + 1)).toNat

end

end A376456.P5095159849350133188

/-! ## A376456.P5984278676733523286

`A052928(A138252(n+1))`
-/

namespace A376456.P5984278676733523286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A138252 (n + 1)).toNat

end

end A376456.P5984278676733523286

/-! ## A376456.P14852635652898564660

`A092533(A075727(n+2))`
-/

namespace A376456.P14852635652898564660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A075727 (n + 2)).toNat

end

end A376456.P14852635652898564660

/-!
# A376457: Let s(x) be the Maclaurin series for cos(x); then a(n) is the index k for which (k+1)-st partial sum of s(2*n*Pi) is least among all partial sums.

The programs for A376457, there is no canonical definition to state claims against.
-/

/-! ## A376457.P7962262859014913081

`or(1, lt[tan(n), tan(12)])`
-/

namespace A376457.P7962262859014913081
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (12 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376457.P7962262859014913081

/-! ## A376457.P2285780053714428593

`or(1, A257984(n+1))`
-/

namespace A376457.P2285780053714428593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A257984 (n + 1))

end

end A376457.P2285780053714428593

/-! ## A376457.P15533919295375895480

`or(1, A022853(n)+2)`
-/

namespace A376457.P15533919295375895480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A022853 n + 2)

end

end A376457.P15533919295375895480

/-! ## A376457.P1828508680319204721

`or(1, A062389(n+1)+1)`
-/

namespace A376457.P1828508680319204721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062389 (n + 1) + 1)

end

end A376457.P1828508680319204721

/-! ## A376457.P5718423210593562102

`2*(A140758(n+4)-1)-7`
-/

namespace A376457.P5718423210593562102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140758 (n + 4) - 1) - 7

end

end A376457.P5718423210593562102

/-! ## A376457.P10049946113396860054

`or(1, floor(A004084(3*(n+1))/3))`
-/

namespace A376457.P10049946113396860054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(A004084 (3 * (n + 1)) : ℚ) / 3⌋

end

end A376457.P10049946113396860054

/-! ## A376457.P7476011790921582434

`A129756(A246394(n))`
-/

namespace A376457.P7476011790921582434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A246394 n).toNat

end

end A376457.P7476011790921582434

/-! ## A376457.P2196262661132016812

`A194511(A248339(n))`
-/

namespace A376457.P2196262661132016812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A248339 n).toNat

end

end A376457.P2196262661132016812

/-! ## A376457.P8924470638348974748

`A109613(A257984(n+1))`
-/

namespace A376457.P8924470638348974748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A257984 (n + 1)).toNat

end

end A376457.P8924470638348974748

/-! ## A376457.P4830170047995912833

`A129756(A246301(n+1))`
-/

namespace A376457.P4830170047995912833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A246301 (n + 1)).toNat

end

end A376457.P4830170047995912833

/-!
# A376458: a(n) = Sum_{k = 0..n} (-1)^(n+k)*binomial(n, k)*binomial(n+k, k)*A108625(n-1, n-k).

The programs for A376458, there is no canonical definition to state claims against.
-/

/-! ## A376458.P10018051297303409134

`A248829(A334705(n+1))`
-/

namespace A376458.P10018051297303409134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248829 (A334705 (n + 1)).toNat

end

end A376458.P10018051297303409134

/-!
# A376462: a(n) = Sum_{k = 0..n} binomial(n, k)^2*binomial(n+k, k)*A108625(n, n-k).

The programs for A376462, there is no canonical definition to state claims against.
-/

/-! ## A376462.P17920351472719040233

`abs(A371882(n))`
-/

namespace A376462.P17920351472719040233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A371882 n|

end

end A376462.P17920351472719040233

/-! ## A376462.P10344830998372598382

`lcm(A043529(3*n+2)-1, A371882(n))`
-/

namespace A376462.P10344830998372598382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A043529 (3 * n + 2) - 1) (A371882 n)

end

end A376462.P10344830998372598382

/-! ## A376462.P11092569438678802923

`gcd(A267602(A134661(n)), A371882(n))`
-/

namespace A376462.P11092569438678802923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267602 (A134661 n).toNat) (A371882 n)

end

end A376462.P11092569438678802923

/-!
# A376467: Triangular array read by rows: A063007 * A007318.

The programs for A376467, there is no canonical definition to state claims against.
-/

/-! ## A376467.P7908435584206963632

`A046899(n)*A118384(n)`
-/

namespace A376467.P7908435584206963632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A118384 n

end

end A376467.P7908435584206963632

/-! ## A376467.P6719668953452412453

`A092392(A061579(n))*A118384(n)`
-/

namespace A376467.P6719668953452412453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A061579 n).toNat * A118384 n

end

end A376467.P6719668953452412453

/-! ## A376467.P2502209392524574948

`A118384(n)/A092392(n)*A371400(n)`
-/

namespace A376467.P2502209392524574948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118384 n : ℚ) / (A092392 n : ℚ) * (A371400 n : ℚ)

end

end A376467.P2502209392524574948

/-! ## A376467.P2411772851782519819

`C(A051162(n), A003056(n))*A118384(n)`
-/

namespace A376467.P2411772851782519819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A051162 n).toNat (A003056 n).toNat : ℤ) * A118384 n

end

end A376467.P2411772851782519819

/-! ## A376467.P10004474798330837602

`A092392(A038722(n+1)-1)*A118384(n)`
-/

namespace A376467.P10004474798330837602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A038722 (n + 1) - 1).toNat * A118384 n

end

end A376467.P10004474798330837602

/-! ## A376467.P18145024032485561015

`A118384(n)/A094531(n)*A220178(n)`
-/

namespace A376467.P18145024032485561015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118384 n : ℚ) / (A094531 n : ℚ) * (A220178 n : ℚ)

end

end A376467.P18145024032485561015

/-!
# A376471: Lexicographically earliest strictly increasing sequence of numbers whose partial products are all exponentially 2^n-numbers (A138302).

The programs for A376471, there is no canonical definition to state claims against.
-/

/-! ## A376471.P18104976105989951818

`A365436(A153010(n+1))`
-/

namespace A376471.P18104976105989951818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365436 (A153010 (n + 1)).toNat

end

end A376471.P18104976105989951818

/-!
# A376472: Composite terms in A376471.

The programs for A376472, there is no canonical definition to state claims against.
-/

/-! ## A376472.P17350877825146553840

`filter[A376471(n+1), A066247(#)]`
-/

namespace A376472.P17350877825146553840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376472.P17350877825146553840

/-! ## A376472.P16911002959570913826

`filter[A376471(n+2), A005171(#)]`
-/

namespace A376472.P16911002959570913826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376471 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A376472.P16911002959570913826

/-! ## A376472.P11028541418509383993

`filter[A376471(n+3), A347950(#)]`
-/

namespace A376472.P11028541418509383993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376471 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A376472.P11028541418509383993

/-! ## A376472.P3523827919303604370

`filter[A376471(n+1), A174898(#)]`
-/

namespace A376472.P3523827919303604370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A376472.P3523827919303604370

/-! ## A376472.P5143362960069441771

`∩[A376471(n+1), A379271(n+1)]`
-/

namespace A376472.P5143362960069441771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376472.P5143362960069441771

/-!
# A376474: E.g.f. satisfies A(x) = exp( x^2*A(x)^2 / (1 - x*A(x)) ).

The programs for A376474, there is no canonical definition to state claims against.
-/

/-! ## A376474.P15781596820167171808

`A337841(A099626(n))`
-/

namespace A376474.P15781596820167171808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337841 (A099626 n).toNat

end

end A376474.P15781596820167171808

/-! ## A376474.P8165265107563112344

`A001831(n)-A032741(A345368(n))`
-/

namespace A376474.P8165265107563112344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n - A032741 (A345368 n).toNat

end

end A376474.P8165265107563112344

/-!
# A376475: E.g.f. satisfies A(x) = exp( x^3*A(x)^3 / (1 - x*A(x)) ).

The programs for A376475, there is no canonical definition to state claims against.
-/

/-! ## A376475.P16667652578126306254

`A113638(A376495(n))`
-/

namespace A376475.P16667652578126306254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (A376495 n).toNat

end

end A376475.P16667652578126306254

/-! ## A376475.P3544818260275799701

`A023443(A376495(n)+1)`
-/

namespace A376475.P3544818260275799701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A376495 n + 1).toNat

end

end A376475.P3544818260275799701

/-! ## A376475.P12674398169988731791

`A004526(2*A376495(n))`
-/

namespace A376475.P12674398169988731791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A376495 n).toNat

end

end A376475.P12674398169988731791

/-!
# A376476: E.g.f. satisfies A(x) = exp( x^2*A(x)^2 * (1 + x*A(x)) ).

The programs for A376476, there is no canonical definition to state claims against.
-/

/-! ## A376476.P15218103060015665038

`A386983(n)/A126387(A262181(n+3))`
-/

namespace A376476.P15218103060015665038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386983 n : ℚ) / (A126387 (A262181 (n + 3)).toNat : ℚ)

end

end A376476.P15218103060015665038

/-! ## A376476.P3120446848946896399

`A247501(A287207(n+2))`
-/

namespace A376476.P3120446848946896399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247501 (A287207 (n + 2)).toNat

end

end A376476.P3120446848946896399

/-!
# A376477: E.g.f. satisfies A(x) = exp( x^3*A(x)^3 * (1 + x*A(x)) ).

The programs for A376477, there is no canonical definition to state claims against.
-/

/-! ## A376477.P1214095030595954707

`A103205(A376493(n))`
-/

namespace A376477.P1214095030595954707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (A376493 n).toNat

end

end A376477.P1214095030595954707

/-! ## A376477.P7313960487390991977

`A023443(A376493(n)+1)`
-/

namespace A376477.P7313960487390991977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A376493 n + 1).toNat

end

end A376477.P7313960487390991977

/-! ## A376477.P3693281597477255293

`A124625(A376493(n)+1)`
-/

namespace A376477.P3693281597477255293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (A376493 n + 1).toNat

end

end A376477.P3693281597477255293

/-!
# A376478: a(1) = 1, a(2) = 2, and a(n) = 3^(n-2) for n > 2.

The programs for A376478, the canonical program `A376478.P15291021963690367141` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376478 has offset 1).

The definition of A376478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376478.P15291021963690367141

`3*a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A376478

/-- `3*a(n-1)` -/
def P15291021963690367141.Spec : Prop :=
  ∀ n, (P15291021963690367141.a n : ℤ) = A376478 (n + 1)

theorem P15291021963690367141.correct : P15291021963690367141.Spec := by
  intro n
  simp only [A376478, Nat.add_sub_cancel]

end A376478

/-! ## A376478.P12923342396576606310

`ogf((-1+x+3x^2)/(-1+3x))`
-/

namespace A376478.P12923342396576606310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3] [1, -3] n

end

end A376478.P12923342396576606310

namespace A376478

/-- `ogf((-1+x+3x^2)/(-1+3x))` -/
def P12923342396576606310.Spec : Prop :=
  ∀ n, P12923342396576606310.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P2259535137336868198

`floor(C(n, n²)+3^(n-1))`
-/

namespace A376478.P2259535137336868198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n (n ^ 2) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A376478.P2259535137336868198

namespace A376478

/-- `floor(C(n, n²)+3^(n-1))` -/
def P2259535137336868198.Spec : Prop :=
  ∀ n, P2259535137336868198.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P9762382568835906220

`round(3^(n-1))+C(n, n²)`
-/

namespace A376478.P9762382568835906220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) + (Nat.choose n (n ^ 2) : ℤ)

end

end A376478.P9762382568835906220

namespace A376478

/-- `round(3^(n-1))+C(n, n²)` -/
def P9762382568835906220.Spec : Prop :=
  ∀ n, P9762382568835906220.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P11795866643214378260

`3^((n-1)%a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A376478.P11795866643214378260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A376478.P11795866643214378260

namespace A376478

/-- `3^((n-1)%a(n-1))` -/
def P11795866643214378260.Spec : Prop :=
  ∀ n, P11795866643214378260.a n = (A376478 (n + 1) : ℚ)

end A376478

/-! ## A376478.P10838714196774213268

`round(3^(n-1)+1/(n+1))`
-/

namespace A376478.P10838714196774213268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1 / (n + 1 : ℚ))

end

end A376478.P10838714196774213268

namespace A376478

/-- `round(3^(n-1)+1/(n+1))` -/
def P10838714196774213268.Spec : Prop :=
  ∀ n, P10838714196774213268.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P9393031213712645922

`gcd(3, a(n-1))^(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A376478.P9393031213712645922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (Int.gcd 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A376478.P9393031213712645922

namespace A376478

/-- `gcd(3, a(n-1))^(n-1)` -/
def P9393031213712645922.Spec : Prop :=
  ∀ n, P9393031213712645922.a n = (A376478 (n + 1) : ℚ)

end A376478

/-! ## A376478.P4858280068406870697

`lcm(3^(n-1), a(n-1))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A376478.P4858280068406870697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A376478.P4858280068406870697

namespace A376478

/-- `lcm(3^(n-1), a(n-1))` -/
def P4858280068406870697.Spec : Prop :=
  ∀ n, (P4858280068406870697.a n : ℤ) = A376478 (n + 1)

end A376478

/-! ## A376478.P3846518302689107814

`3^floor(n-1/a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A376478.P3846518302689107814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 : ℚ) ^ (⌊(n : ℚ) - 1 / a (n - 2)⌋ : ℤ)

end

end A376478.P3846518302689107814

namespace A376478

/-- `3^floor(n-1/a(n-2))` -/
def P3846518302689107814.Spec : Prop :=
  ∀ n, P3846518302689107814.a n = (A376478 (n + 1) : ℚ)

end A376478

/-! ## A376478.P12011211707173338143

`ceil(val(2*n+1, n+2)+3^(n-1))`
-/

namespace A376478.P12011211707173338143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A376478.P12011211707173338143

namespace A376478

/-- `ceil(val(2*n+1, n+2)+3^(n-1))` -/
def P12011211707173338143.Spec : Prop :=
  ∀ n, P12011211707173338143.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P5425484522284953032

`a(n-1)+a(n-1)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A376478.P5425484522284953032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 1))

end

end A376478.P5425484522284953032

namespace A376478

/-- `a(n-1)+a(n-1)+a(n-1)` -/
def P5425484522284953032.Spec : Prop :=
  ∀ n, (P5425484522284953032.a n : ℤ) = A376478 (n + 1)

theorem P5425484522284953032.correct : P5425484522284953032.Spec := by
  intro n
  simp only [A376478, Nat.add_sub_cancel, A376478.P5425484522284953032.a, A376478.P15291021963690367141.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A376478

/-! ## A376478.P3856338889584532708

`A133494(n)+char[1]`
-/

namespace A376478.P3856338889584532708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A376478.P3856338889584532708

namespace A376478

/-- `A133494(n)+char[1]` -/
def P3856338889584532708.Spec : Prop :=
  ∀ n, P3856338889584532708.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P15427834541782536338

`A017914(A004275(n))`
-/

namespace A376478.P15427834541782536338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017914 (A004275 n).toNat

end

end A376478.P15427834541782536338

namespace A376478

/-- `A017914(A004275(n))` -/
def P15427834541782536338.Spec : Prop :=
  ∀ n, P15427834541782536338.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P14552675577419514267

`A018121(A135042(n))`
-/

namespace A376478.P14552675577419514267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018121 (A135042 n).toNat

end

end A376478.P14552675577419514267

namespace A376478

/-- `A018121(A135042(n))` -/
def P14552675577419514267.Spec : Prop :=
  ∀ n, P14552675577419514267.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P1585212363061670836

`A030439(A004274(n+1))`
-/

namespace A376478.P1585212363061670836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A004274 (n + 1)).toNat

end

end A376478.P1585212363061670836

namespace A376478

/-- `A030439(A004274(n+1))` -/
def P1585212363061670836.Spec : Prop :=
  ∀ n, P1585212363061670836.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P1659208662428691874

`A030439(A004280(n+1))`
-/

namespace A376478.P1659208662428691874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 (A004280 (n + 1)).toNat

end

end A376478.P1659208662428691874

namespace A376478

/-- `A030439(A004280(n+1))` -/
def P1659208662428691874.Spec : Prop :=
  ∀ n, P1659208662428691874.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P12531898030971220017

`A018052(A019442(n+1))`
-/

namespace A376478.P12531898030971220017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018052 (A019442 (n + 1)).toNat

end

end A376478.P12531898030971220017

namespace A376478

/-- `A018052(A019442(n+1))` -/
def P12531898030971220017.Spec : Prop :=
  ∀ n, P12531898030971220017.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P11503432421517452108

`A017984(A296515(n+1))`
-/

namespace A376478.P11503432421517452108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017984 (A296515 (n + 1)).toNat

end

end A376478.P11503432421517452108

namespace A376478

/-- `A017984(A296515(n+1))` -/
def P11503432421517452108.Spec : Prop :=
  ∀ n, P11503432421517452108.a n = A376478 (n + 1)

end A376478

/-! ## A376478.P2343920781456019362

`A038754(A289207(n)+n)`
-/

namespace A376478.P2343920781456019362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A289207 n + (n : ℤ)).toNat

end

end A376478.P2343920781456019362

namespace A376478

/-- `A038754(A289207(n)+n)` -/
def P2343920781456019362.Spec : Prop :=
  ∀ n, P2343920781456019362.a n = A376478 (n + 1)

end A376478

/-!
# A376479: Array read by antidiagonals: T(n,k) is the index of prime(k)^n in the numbers with n prime factors, counted with multiplicity.

The programs for A376479, there is no canonical definition to state claims against.
-/

/-! ## A376479.P11757831471383918847

`A058933(A182945(n+1))`
-/

namespace A376479.P11757831471383918847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A182945 (n + 1)).toNat

end

end A376479.P11757831471383918847

/-! ## A376479.P12415678012334361057

`A078812(n)-A279209(A022183(n))`
-/

namespace A376479.P12415678012334361057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - A279209 (A022183 n).toNat

end

end A376479.P12415678012334361057

/-!
# A376482: a(n) = phi( 2^(2*n) + 2^n + 1 ) / (6*n), where phi() is Euler's totient function (A000010).

The programs for A376482, there is no canonical definition to state claims against.
-/

/-! ## A376482.P2309409892868235124

`A135303(A007582(n+1))`
-/

namespace A376482.P2309409892868235124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (A007582 (n + 1)).toNat

end

end A376482.P2309409892868235124

/-! ## A376482.P11934468754581366045

`A005875(A033096(2*a(n-1)-a(n-2)))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A376482.P11934468754581366045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 6] fun n a =>
  A005875 (A033096 (2 * a (n - 1) - a (n - 2)).toNat).toNat

end

end A376482.P11934468754581366045

/-! ## A376482.P13256301147429424350

`A135303(A028403(n+1)-A000079(n))`
-/

namespace A376482.P13256301147429424350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (A028403 (n + 1) - A000079 n).toNat

end

end A376482.P13256301147429424350

/-!
# A376483: Perfect squares k for which sqrt(k) = (Sum of digits of k) - 2.

The programs for A376483, there is no canonical definition to state claims against.
-/

/-! ## A376483.P10763359692214252831

`record[(lcm(3, n)+2)²]`
-/

namespace A376483.P10763359692214252831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376483.P10763359692214252831

/-!
# A376484: Array read by ascending antidiagonals: A(n,k)=4^k*Sum_{j=1..n} sin(2*j*Pi/(2*n+1))^(2*k).

The programs for A376484, there is no canonical definition to state claims against.
-/

/-! ## A376484.P6742201809184160166

`A187988(A077168(n+1))`
-/

namespace A376484.P6742201809184160166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A077168 (n + 1)).toNat

end

end A376484.P6742201809184160166

/-! ## A376484.P1042031231692103030

`A187988(A043319(n+2))`
-/

namespace A376484.P1042031231692103030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A043319 (n + 2)).toNat

end

end A376484.P1042031231692103030

/-! ## A376484.P6028239517851572231

`A187988(A044916(n+2))`
-/

namespace A376484.P6028239517851572231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A044916 (n + 2)).toNat

end

end A376484.P6028239517851572231

/-! ## A376484.P6784464475060322250

`A187988(A065672(n+2))`
-/

namespace A376484.P6784464475060322250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A065672 (n + 2)).toNat

end

end A376484.P6784464475060322250

/-! ## A376484.P10078119624209133709

`A187988(A065673(n+2))`
-/

namespace A376484.P10078119624209133709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (A065673 (n + 2)).toNat

end

end A376484.P10078119624209133709

/-!
# A376486: G.f. satisfies A(x) = 1 / (1 - x^3*A(x)^3 * (1 + x)).

The programs for A376486, there is no canonical definition to state claims against.
-/

/-! ## A376486.P4953671320292287226

`A376546(lt[A276083(3*(n+1)), A370236(3*(n+2))])`
-/

namespace A376486.P4953671320292287226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276083 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370236 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376546 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376486.P4953671320292287226

/-!
# A376490: G.f. satisfies A(x) = 1 / (1 - x^3*A(x)^3 / (1 - x)).

The programs for A376490, there is no canonical definition to state claims against.
-/

/-! ## A376490.P13018693965853412994

`A382019(A394801(n))`
-/

namespace A376490.P13018693965853412994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382019 (A394801 n).toNat

end

end A376490.P13018693965853412994

/-!
# A376492: E.g.f. satisfies A(x) = exp(x^2 * (1 + x) * A(x)^2).

The programs for A376492, there is no canonical definition to state claims against.
-/

/-! ## A376492.P14545715231425482509

`A058207((n+1)*A362702(n))`
-/

namespace A376492.P14545715231425482509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 ((n + 1 : ℤ) * A362702 n).toNat

end

end A376492.P14545715231425482509

/-! ## A376492.P16567461937826119923

`A002322(A008585(10*a(n-1)+1))` with `a(0)=1, a(1)=0`
-/

namespace A376492.P16567461937826119923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A002322 (A008585 (10 * a (n - 1) + 1).toNat).toNat

end

end A376492.P16567461937826119923

/-!
# A376494: E.g.f. satisfies A(x) = exp(x^2 * A(x)^2 / (1 - x)).

The programs for A376494, there is no canonical definition to state claims against.
-/

/-! ## A376494.P6973391841361508025

`A342501(A323144(n+1))`
-/

namespace A376494.P6973391841361508025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342501 (A323144 (n + 1)).toNat

end

end A376494.P6973391841361508025

/-! ## A376494.P15612025879113643588

`A342501(A000111(n)+n)`
-/

namespace A376494.P15612025879113643588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342501 (A000111 n + (n : ℤ)).toNat

end

end A376494.P15612025879113643588

/-!
# A376496: The number of free kissing polyominoes with n cells.

The programs for A376496, there is no canonical definition to state claims against.
-/

/-! ## A376496.P13924143815973237105

`or(A359520(A122510(n+1)), A359520(n+1))`
-/

namespace A376496.P13924143815973237105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A359520 (A122510 (n + 1)).toNat) (A359520 (n + 1))

end

end A376496.P13924143815973237105

/-!
# A376498: Array read by ascending antidiagonals: A(n, k) = 2^k*Sum_{j=1..n} cos((2*j - 1)*Pi/(2*n + 1))^k.

The programs for A376498, there is no canonical definition to state claims against.
-/

/-! ## A376498.P7966288755177003640

`A257994(A232955(n+1))`
-/

namespace A376498.P7966288755177003640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A232955 (n + 1)).toNat

end

end A376498.P7966288755177003640

/-! ## A376498.P8392260341738326692

`gcd(A014473(A202750(n)), A051933(n))`
-/

namespace A376498.P8392260341738326692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 (A202750 n).toNat) (A051933 n)

end

end A376498.P8392260341738326692

/-! ## A376498.P11324301118338050286

`gcd(A094053(n+1), A318325(A177808(n)))`
-/

namespace A376498.P11324301118338050286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094053 (n + 1)) (A318325 (A177808 n).toNat)

end

end A376498.P11324301118338050286

/-! ## A376498.P16174116629369256142

`A307070(A060637(n))`
-/

namespace A376498.P16174116629369256142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307070 (A060637 n).toNat

end

end A376498.P16174116629369256142

/-! ## A376498.P11860893416635150818

`A375359(A395456(n))`
-/

namespace A376498.P11860893416635150818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A395456 n).toNat

end

end A376498.P11860893416635150818

/-!
# A376499: Array read by ascending antidiagonals: A(n,k) = A376484/(2*n+1).

The programs for A376499, there is no canonical definition to state claims against.
-/

/-! ## A376499.P15245069820159279396

`C(A143453(n), A369369(A143632(n)))`
-/

namespace A376499.P15245069820159279396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143453 n).toNat (A369369 (A143632 n).toNat).toNat

end

end A376499.P15245069820159279396

/-! ## A376499.P12696147204755796813

`A326979(A222043(n+1)%A290173(n+1))`
-/

namespace A376499.P12696147204755796813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326979 (Int.tmod (A222043 (n + 1)) (A290173 (n + 1))).toNat

end

end A376499.P12696147204755796813

/-! ## A376499.P12487199463947118345

`A060140(A268956(n+1)%A272763(n+4))`
-/

namespace A376499.P12487199463947118345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060140 (Int.tmod (A268956 (n + 1)) (A272763 (n + 4))).toNat

end

end A376499.P12487199463947118345

/-! ## A376499.P3217192338338356494

`A143453(n)*A333769(A143448(n))`
-/

namespace A376499.P3217192338338356494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 n * A333769 (A143448 n).toNat

end

end A376499.P3217192338338356494

/-! ## A376499.P6638207811881691206

`A143453(n)*A296772(A180502(n))`
-/

namespace A376499.P6638207811881691206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 n * A296772 (A180502 n).toNat

end

end A376499.P6638207811881691206

