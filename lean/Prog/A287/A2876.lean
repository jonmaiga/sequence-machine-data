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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A287600: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A287600, there is no canonical definition to state claims against.
-/

/-! ## A287600.P7667979314205922458

`A007088(A287603(n))`
-/

namespace A287600.P7667979314205922458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287603 n).toNat

end

end A287600.P7667979314205922458

/-! ## A287600.P6806526827838188759

`A007088(A000225(n+2)-A289574(n+1))`
-/

namespace A287600.P6806526827838188759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A289574 (n + 1)).toNat

end

end A287600.P6806526827838188759

/-! ## A287600.P17749542040734574890

`A007088(record[A324821(n+2)]-A289574(n+1))`
-/

namespace A287600.P17749542040734574890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A289574 (n + 1)).toNat

end

end A287600.P17749542040734574890

/-! ## A287600.P14980035081154324420

`A185544(2*A287603(n))`
-/

namespace A287600.P14980035081154324420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287603 n).toNat

end

end A287600.P14980035081154324420

/-! ## A287600.P6919080372051549038

`A185544(2*(A000225(n+2)-A289574(n+1)))`
-/

namespace A287600.P6919080372051549038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A000225 (n + 2) - A289574 (n + 1))).toNat

end

end A287600.P6919080372051549038

/-!
# A287601: a(0) = a(1) = 1; a(2*n) = n - a(a(n)), a(2*n+1) = a(a(n)) + a(n-a(n)).

The programs for A287601, there is no canonical definition to state claims against.
-/

/-! ## A287601.P6758643796280639350

`A037834(A070880(n+1)+2)`
-/

namespace A287601.P6758643796280639350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (A070880 (n + 1) + 2).toNat

end

end A287601.P6758643796280639350

/-! ## A287601.P13026435779770808722

`A336121(A157162(n+1)*A183208(n+1))`
-/

namespace A287601.P13026435779770808722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A157162 (n + 1) * A183208 (n + 1)).toNat

end

end A287601.P13026435779770808722

/-! ## A287601.P4915691775571679577

`and(A092789(A289142(n+2)), A369366(n+1))`
-/

namespace A287601.P4915691775571679577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092789 (A289142 (n + 2)).toNat) (A369366 (n + 1))

end

end A287601.P4915691775571679577

/-!
# A287602: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A287602, there is no canonical definition to state claims against.
-/

/-! ## A287602.P15001636946559558340

`A007088(A287604(n))`
-/

namespace A287602.P15001636946559558340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287604 n).toNat

end

end A287602.P15001636946559558340

/-! ## A287602.P6816683666460161655

`A185544(2*A287604(n))`
-/

namespace A287602.P6816683666460161655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287604 n).toNat

end

end A287602.P6816683666460161655

/-! ## A287602.P8087920308819786927

`A287487(n)*A325768(A287503(n))`
-/

namespace A287602.P8087920308819786927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287487 n * A325768 (A287503 n).toNat

end

end A287602.P8087920308819786927

/-! ## A287602.P8518725875196142781

`lcm(A019554(A287600(n)), A286508(n))`
-/

namespace A287602.P8518725875196142781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A019554 (A287600 n).toNat) (A286508 n)

end

end A287602.P8518725875196142781

/-!
# A287603: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A287603, there is no canonical definition to state claims against.
-/

/-! ## A287603.P16369996433025930427

`A000225(n+2)-A289574(n+1)`
-/

namespace A287603.P16369996433025930427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A289574 (n + 1)

end

end A287603.P16369996433025930427

/-! ## A287603.P10013661331346126879

`record[A324821(n+2)]-A289574(n+1)`
-/

namespace A287603.P10013661331346126879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A289574 (n + 1)

end

end A287603.P10013661331346126879

/-! ## A287603.P3977146995747968344

`A324821(A000040(n+1))-A289574(n+1)`
-/

namespace A287603.P3977146995747968344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324821 (A000040 (n + 1)).toNat - A289574 (n + 1)

end

end A287603.P3977146995747968344

/-! ## A287603.P1496873141521167102

`A000225(A020725(n+1))%A289574(n+1)`
-/

namespace A287603.P1496873141521167102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A020725 (n + 1)).toNat) (A289574 (n + 1))

end

end A287603.P1496873141521167102

/-! ## A287603.P7019972122419066353

`xor(A000225(n+2), A289574(A000027(n+1)))`
-/

namespace A287603.P7019972122419066353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (n + 2)) (A289574 (A000027 (n + 1)).toNat)

end

end A287603.P7019972122419066353

/-!
# A287604: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 310", based on the 5-celled von Neumann neighborhood.

The programs for A287604, there is no canonical definition to state claims against.
-/

/-! ## A287604.P6805286698508390249

`A195199(a(n-2))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A287604.P6805286698508390249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  A195199 (a (n - 2)).toNat

end

end A287604.P6805286698508390249

/-! ## A287604.P2351882547874405020

`∏[abs(A001222(∑[2^n]²)-n)+1]`
-/

namespace A287604.P2351882547874405020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001222 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A287604.P2351882547874405020

/-! ## A287604.P10056009511635155812

`∏[A020639(floor(abs(2-n)^(n-1))+1)]`
-/

namespace A287604.P10056009511635155812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(|2 - (n : ℤ)| : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A287604.P10056009511635155812

/-! ## A287604.P8595275119026848128

`A348846(A072486(n+1))`
-/

namespace A287604.P8595275119026848128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348846 (A072486 (n + 1)).toNat

end

end A287604.P8595275119026848128

/-!
# A287605: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A287605, there is no canonical definition to state claims against.
-/

/-! ## A287605.P556864484374232992

`A007088(A287607(n))`
-/

namespace A287605.P556864484374232992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287607 n).toNat

end

end A287605.P556864484374232992

/-! ## A287605.P10796161953417563741

`A185544(2*A287607(n))`
-/

namespace A287605.P10796161953417563741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287607 n).toNat

end

end A287605.P10796161953417563741

/-! ## A287605.P12885753847096860974

`A185544(A287607(n)+A287607(n)+A185284(n))`
-/

namespace A287605.P12885753847096860974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287607 n + (A287607 n + A185284 n)).toNat

end

end A287605.P12885753847096860974

/-! ## A287605.P1594202138352910704

`A185544(A287607(n)-(A185284(n)-A287607(n)))`
-/

namespace A287605.P1594202138352910704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287607 n - (A185284 n - A287607 n)).toNat

end

end A287605.P1594202138352910704

/-! ## A287605.P12744469061547772423

`A007088(A282417(n)+A185284((5-n)²))`
-/

namespace A287605.P12744469061547772423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282417 n + A185284 ((5 - (n : ℤ)) ^ 2).toNat).toNat

end

end A287605.P12744469061547772423

/-!
# A287606: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A287606, there is no canonical definition to state claims against.
-/

/-! ## A287606.P11575598383510420081

`A007088(A287608(n))`
-/

namespace A287606.P11575598383510420081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287608 n).toNat

end

end A287606.P11575598383510420081

/-! ## A287606.P1942720919249636054

`A185544(2*A287608(n))`
-/

namespace A287606.P1942720919249636054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287608 n).toNat

end

end A287606.P1942720919249636054

/-! ## A287606.P6935799798406078374

`A185544(A287608(n)+A287608(n))`
-/

namespace A287606.P6935799798406078374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287608 n + A287608 n).toNat

end

end A287606.P6935799798406078374

/-!
# A287607: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 313", based on the 5-celled von Neumann neighborhood.

The programs for A287607, there is no canonical definition to state claims against.
-/

/-! ## A287607.P754151898783641039

`A282417(n)+A185284((5-n)²)`
-/

namespace A287607.P754151898783641039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 n + A185284 ((5 - (n : ℤ)) ^ 2).toNat

end

end A287607.P754151898783641039

/-! ## A287607.P310311733139751718

`or(A185284(3*(n+1)), A282417(n))`
-/

namespace A287607.P310311733139751718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (3 * (n + 1))) (A282417 n)

end

end A287607.P310311733139751718

/-!
# A287609: Intersection of A034961 and A127345.

The programs for A287609, there is no canonical definition to state claims against.
-/

/-! ## A287609.P17679044424014882173

`∩[A034961(n+1), A127345(n+1)]`
-/

namespace A287609.P17679044424014882173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287609.P17679044424014882173

/-! ## A287609.P12980860786755300416

`∩[A034961(n+1), A357679(n+2)+A090076(n+1)]`
-/

namespace A287609.P12980860786755300416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2) + A090076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287609.P12980860786755300416

/-!
# A287611: Numbers which are twice an Ulam number but not the sum of two distinct Ulam numbers.

The programs for A287611, there is no canonical definition to state claims against.
-/

/-! ## A287611.P17389120069523452317

`A285882(n+1)/2`
-/

namespace A287611.P17389120069523452317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285882 (n + 1) : ℚ) / 2

end

end A287611.P17389120069523452317

/-! ## A287611.P3855110033032690251

`eq[1, A285884(n+1)]+1`
-/

namespace A287611.P3855110033032690251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287611.P3855110033032690251

/-! ## A287611.P10756606966079674990

`A302042(A285882(n+1))`
-/

namespace A287611.P10756606966079674990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A285882 (n + 1)).toNat

end

end A287611.P10756606966079674990

/-! ## A287611.P10729057027918683354

`eq[1, A285884(A028310(n))]`
-/

namespace A287611.P10729057027918683354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285884 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287611.P10729057027918683354

/-! ## A287611.P1729906122078010451

`A246425(A285882(n+1)-1)`
-/

namespace A287611.P1729906122078010451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A285882 (n + 1) - 1).toNat

end

end A287611.P1729906122078010451

/-!
# A287612: Ulam numbers k such that 4*k is also an Ulam number.

The programs for A287612, there is no canonical definition to state claims against.
-/

/-! ## A287612.P4429730009385742757

`record[gcd(2^n+n, eq[1, A141197(n+1)])]`
-/

namespace A287612.P4429730009385742757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141197 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n + n) (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287612.P4429730009385742757

/-! ## A287612.P11620013684314907503

`record[A344059(n+1)-A185035(n)]`
-/

namespace A287612.P11620013684314907503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344059 (n + 1) - A185035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287612.P11620013684314907503

/-!
# A287614: Primes of the form (1 + x)^y + (-x)^y for some positive x, y.

The programs for A287614, there is no canonical definition to state claims against.
-/

/-! ## A287614.P15522134323399172768

`A000040(lt[A220883(n+4), A000578(n)])`
-/

namespace A287614.P15522134323399172768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220883 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287614.P15522134323399172768

/-! ## A287614.P7666049190801881549

`A065091(lt[A231227(n+4), A014601(n)])`
-/

namespace A287614.P7666049190801881549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287614.P7666049190801881549

/-! ## A287614.P12704854816037029482

`A000040(lt[A286870(n+3), A064801(n+1)])`
-/

namespace A287614.P12704854816037029482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287614.P12704854816037029482

/-! ## A287614.P2040668916929089913

`A000040(lt[A299018(n+3), A298992(n+1)])`
-/

namespace A287614.P2040668916929089913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299018 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287614.P2040668916929089913

/-! ## A287614.P15730298017953277179

`A065091(lt[A231227(n+4), A000069(n+1)])`
-/

namespace A287614.P15730298017953277179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231227 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A287614.P15730298017953277179

/-!
# A287615: Let r = prime(n). Then a(n) is the smallest prime p such that there is a prime q with p > q > r and p mod q = r.

The programs for A287615, there is no canonical definition to state claims against.
-/

/-! ## A287615.P10916038354433734881

`A335046(A335120(n+1)+A335002(n+1))`
-/

namespace A287615.P10916038354433734881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335046 (A335120 (n + 1) + A335002 (n + 1)).toNat

end

end A287615.P10916038354433734881

/-! ## A287615.P4546593850784957125

`A354200(A252793(n+1)-A319510(n+1))`
-/

namespace A287615.P4546593850784957125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354200 (A252793 (n + 1) - A319510 (n + 1)).toNat

end

end A287615.P4546593850784957125

/-!
# A287616: Number of ways to write n as x*(x+1)/2 + y*(3*y+1)/2 + z*(5*z+1)/2 with x,y,z nonnegative integers.

The programs for A287616, there is no canonical definition to state claims against.
-/

/-! ## A287616.P711950154563674309

`A001221(A129080(n+1)+5)`
-/

namespace A287616.P711950154563674309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A129080 (n + 1) + 5).toNat

end

end A287616.P711950154563674309

/-! ## A287616.P16678453845481872298

`A326787(A185035(n))+A132399(n)`
-/

namespace A287616.P16678453845481872298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 (A185035 n).toNat + A132399 n

end

end A287616.P16678453845481872298

/-! ## A287616.P12274826333188221878

`or(A010054(n), A193330(A164263(n)))`
-/

namespace A287616.P12274826333188221878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A193330 (A164263 n).toNat)

end

end A287616.P12274826333188221878

/-! ## A287616.P4012845460642974811

`A356226(A356254(n+1)+A356225(3*n+5))`
-/

namespace A287616.P4012845460642974811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356226 (A356254 (n + 1) + A356225 (3 * n + 5)).toNat

end

end A287616.P4012845460642974811

/-! ## A287616.P9053496284060067352

`A078929(A261347(n+1)+13)`
-/

namespace A287616.P9053496284060067352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078929 (A261347 (n + 1) + 13).toNat

end

end A287616.P9053496284060067352

/-!
# A287617: Main diagonal of A045847.

The programs for A287617, there is no canonical definition to state claims against.
-/

/-! ## A287617.P11656956786338899704

`A045847(∑[4*n])`
-/

namespace A287617.P11656956786338899704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A287617.P11656956786338899704

/-! ## A287617.P7544272398403173097

`or(char[1], A045847(A106232(n+1)))`
-/

namespace A287617.P7544272398403173097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A045847 (A106232 (n + 1)).toNat)

end

end A287617.P7544272398403173097

/-! ## A287617.P5987405300167117197

`Δ[A045847(A106232(n))+a(n-1)]` with `a(0)=2`
-/

namespace A287617.P5987405300167117197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A045847 (A106232 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287617.P5987405300167117197

/-! ## A287617.P11128409734083664415

`A045847((n+1)*2*n)%A150414(n+1)`
-/

namespace A287617.P11128409734083664415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 ((n + 1) * (2 * n))) (A150414 (n + 1))

end

end A287617.P11128409734083664415

/-! ## A287617.P2502109848294492124

`or(A000007(n), A045847(A046092(n)))`
-/

namespace A287617.P2502109848294492124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A045847 (A046092 n).toNat)

end

end A287617.P2502109848294492124

/-! ## A287617.P16914038086899739933

`A045847(A106232(n+1))/A007318(∑[n])`
-/

namespace A287617.P16914038086899739933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (A106232 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A287617.P16914038086899739933

/-! ## A287617.P13126643609864712940

`gcd(53, A000203(n+1))*A045847(A106232(n+1))`
-/

namespace A287617.P13126643609864712940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 53 (A000203 (n + 1)) : ℤ) * A045847 (A106232 (n + 1)).toNat

end

end A287617.P13126643609864712940

/-! ## A287617.P6419836271709042483

`A045847(A106232(n+1))+A010052(A131762(n))`
-/

namespace A287617.P6419836271709042483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A106232 (n + 1)).toNat + A010052 (A131762 n).toNat

end

end A287617.P6419836271709042483

/-!
# A287618: Triangle read by rows: T(j,k) is the number of distinct edge segments in a j X k rectangular grid.

The programs for A287618, the canonical program `A287618.P888519761362367504` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287618 has offset 1).

The definition of A287618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287618.P888519761362367504

`A110654(A002024(n+1))+A110654(A048151(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A287618

/-- `A110654(A002024(n+1))+A110654(A048151(n+1))` -/
def P888519761362367504.Spec : Prop :=
  ∀ n, P888519761362367504.a n = A287618 (n + 1)

theorem P888519761362367504.correct : P888519761362367504.Spec := by
  intro n
  simp only [A287618, Nat.add_sub_cancel]

end A287618

/-! ## A287618.P3459533055413734266

`A274701(A245300(n+1))`
-/

namespace A287618.P3459533055413734266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A245300 (n + 1)).toNat

end

end A287618.P3459533055413734266

namespace A287618

/-- `A274701(A245300(n+1))` -/
def P3459533055413734266.Spec : Prop :=
  ∀ n, P3459533055413734266.a n = A287618 (n + 1)

end A287618

/-! ## A287618.P5525455693234273107

`A007895((n+1-A204985(n+1))²)`
-/

namespace A287618.P5525455693234273107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (((n + 1 : ℤ) - A204985 (n + 1)) ^ 2).toNat

end

end A287618.P5525455693234273107

namespace A287618

/-- `A007895((n+1-A204985(n+1))²)` -/
def P5525455693234273107.Spec : Prop :=
  ∀ n, P5525455693234273107.a n = A287618 (n + 1)

end A287618

/-! ## A287618.P621717542707971925

`A050430(A338879(n+1)%A303264(n+1))`
-/

namespace A287618.P621717542707971925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050430 (Int.tmod (A338879 (n + 1)) (A303264 (n + 1))).toNat

end

end A287618.P621717542707971925

namespace A287618

/-- `A050430(A338879(n+1)%A303264(n+1))` -/
def P621717542707971925.Spec : Prop :=
  ∀ n, P621717542707971925.a n = A287618 (n + 1)

end A287618

/-! ## A287618.P2433211028906476282

`A293895(A038218(n+1))`
-/

namespace A287618.P2433211028906476282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293895 (A038218 (n + 1)).toNat

end

end A287618.P2433211028906476282

namespace A287618

/-- `A293895(A038218(n+1))` -/
def P2433211028906476282.Spec : Prop :=
  ∀ n, P2433211028906476282.a n = A287618 (n + 1)

end A287618

/-!
# A287619: Number of positive odd solutions to equation x^2 + 39y^2 = 8*(n + 5).

The programs for A287619, there is no canonical definition to state claims against.
-/

/-! ## A287619.P8206134308536276407

`C(A055172(A034477(n+1)+1), A211700(n+1))`
-/

namespace A287619.P8206134308536276407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055172 (A034477 (n + 1) + 1).toNat).toNat (A211700 (n + 1)).toNat

end

end A287619.P8206134308536276407

/-! ## A287619.P14513328446406397160

`ceil(A298426(A152036(n))/2)`
-/

namespace A287619.P14513328446406397160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298426 (A152036 n).toNat : ℚ) / 2⌉

end

end A287619.P14513328446406397160

/-! ## A287619.P1792302223278890266

`A000045(A298426(A152036(n)))`
-/

namespace A287619.P1792302223278890266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A298426 (A152036 n).toNat).toNat

end

end A287619.P1792302223278890266

/-! ## A287619.P2322442068564166898

`A070676(3*(n+1))^A070680(A208917(n+1))`
-/

namespace A287619.P2322442068564166898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070676 (3 * (n + 1)) : ℚ) ^ (A070680 (A208917 (n + 1)).toNat : ℤ)

end

end A287619.P2322442068564166898

/-! ## A287619.P6519238805934541078

`A010054(∑[C(19*n, 17*n+77)]+n)`
-/

namespace A287619.P6519238805934541078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (19 * n) (17 * n + 77)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A287619.P6519238805934541078

/-!
# A287620: a(n) = product, with multiplicity, of the prime numbers appearing at leaf positions in the prime tower factorization of n.

The programs for A287620, there is no canonical definition to state claims against.
-/

/-! ## A287620.P16290326221518124834

`A020639(∏{e}[2*n-(n-1), #]²²*∏{e}[n+1, #²]²)*A055231(n+1)`
-/

namespace A287620.P16290326221518124834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2) ^ 2) * A055231 (n + 1)

end

end A287620.P16290326221518124834

/-! ## A287620.P8065585554308704868

`A000026(n+1)/A015052(A183102(n+1))`
-/

namespace A287620.P8065585554308704868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (n + 1) : ℚ) / (A015052 (A183102 (n + 1)).toNat : ℚ)

end

end A287620.P8065585554308704868

/-! ## A287620.P9617888194114449981

`∏{p}[n+1, #*val(n+1, #)]/A000188(A033445(n+2))`
-/

namespace A287620.P9617888194114449981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℚ) / (A000188 (A033445 (n + 2)).toNat : ℚ)

end

end A287620.P9617888194114449981

/-! ## A287620.P17913665721155467855

`A007947(A222254(n+1)^4)`
-/

namespace A287620.P17913665721155467855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A222254 (n + 1) ^ 4).toNat

end

end A287620.P17913665721155467855

/-!
# A287621: a(n) = least k such that A287620(k) = n.

The programs for A287621, there is no canonical definition to state claims against.
-/

/-! ## A287621.P3233638509202406526

`A382659((n+1)^A069010(n+2))`
-/

namespace A287621.P3233638509202406526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A069010 (n + 2) : ℤ))).toNat

end

end A287621.P3233638509202406526

/-!
# A287622: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A287622, there is no canonical definition to state claims against.
-/

/-! ## A287622.P3184464545888024422

`A007088(A287624(n))`
-/

namespace A287622.P3184464545888024422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287624 n).toNat

end

end A287622.P3184464545888024422

/-! ## A287622.P14188412721021598649

`A185544(2*A287624(n))`
-/

namespace A287622.P14188412721021598649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287624 n).toNat

end

end A287622.P14188412721021598649

/-! ## A287622.P3982685134853460643

`A185544(2*A287598(n))+char[11]`
-/

namespace A287622.P3982685134853460643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287598 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287622.P3982685134853460643

/-! ## A287622.P13975666800872894744

`A286818(n)+A014108(A287705(n))`
-/

namespace A287622.P13975666800872894744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286818 n + A014108 (A287705 n).toNat

end

end A287622.P13975666800872894744

/-! ## A287622.P6189305155199312249

`A386313(A002989(n))+A286818(n)`
-/

namespace A287622.P6189305155199312249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386313 (A002989 n).toNat + A286818 n

end

end A287622.P6189305155199312249

/-!
# A287623: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A287623, there is no canonical definition to state claims against.
-/

/-! ## A287623.P15309442667174697164

`A007088(A287625(n))`
-/

namespace A287623.P15309442667174697164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287625 n).toNat

end

end A287623.P15309442667174697164

/-! ## A287623.P8258682919087192911

`A185544(2*A287625(n))`
-/

namespace A287623.P8258682919087192911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287625 n).toNat

end

end A287623.P8258682919087192911

/-!
# A287624: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A287624, there is no canonical definition to state claims against.
-/

/-! ## A287624.P12954651265406843553

`or(A099307(A282986(n)), A287598(n))`
-/

namespace A287624.P12954651265406843553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099307 (A282986 n).toNat) (A287598 n)

end

end A287624.P12954651265406843553

/-! ## A287624.P15484447430816078427

`A287598(n)+A014108(A287705(n))`
-/

namespace A287624.P15484447430816078427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287598 n + A014108 (A287705 n).toNat

end

end A287624.P15484447430816078427

/-! ## A287624.P13041530956448176800

`A287598(n)+A080224(A288334(n))`
-/

namespace A287624.P13041530956448176800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287598 n + A080224 (A288334 n).toNat

end

end A287624.P13041530956448176800

/-! ## A287624.P5197745375619717416

`or(A010054(A287625(n)), A287598(n))`
-/

namespace A287624.P5197745375619717416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A287625 n).toNat) (A287598 n)

end

end A287624.P5197745375619717416

/-!
# A287626: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A287626, there is no canonical definition to state claims against.
-/

/-! ## A287626.P7420444197525755467

`A007088(A287628(n))`
-/

namespace A287626.P7420444197525755467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287628 n).toNat

end

end A287626.P7420444197525755467

/-! ## A287626.P4987642546383783649

`A007088(A126646(n+1)-A288901(n+1))`
-/

namespace A287626.P4987642546383783649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A288901 (n + 1)).toNat

end

end A287626.P4987642546383783649

/-! ## A287626.P535685675741901652

`A007088(A000225(n+2)-A288901(n+1))`
-/

namespace A287626.P535685675741901652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A288901 (n + 1)).toNat

end

end A287626.P535685675741901652

/-! ## A287626.P9877720464612756653

`A185544(2*A287628(n))`
-/

namespace A287626.P9877720464612756653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287628 n).toNat

end

end A287626.P9877720464612756653

/-! ## A287626.P6612833550424664587

`A185544(A287628(n)+A287628(n))`
-/

namespace A287626.P6612833550424664587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A287628 n + A287628 n).toNat

end

end A287626.P6612833550424664587

/-!
# A287627: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A287627, there is no canonical definition to state claims against.
-/

/-! ## A287627.P7281962023374654544

`A007088(A287629(n))`
-/

namespace A287627.P7281962023374654544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287629 n).toNat

end

end A287627.P7281962023374654544

/-! ## A287627.P14505870196876201949

`A185544(2*A287629(n))`
-/

namespace A287627.P14505870196876201949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287629 n).toNat

end

end A287627.P14505870196876201949

/-! ## A287627.P10675030251828802256

`∏{p}[A287949(n)+1, #]-1`
-/

namespace A287627.P10675030251828802256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287949 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1

end

end A287627.P10675030251828802256

/-!
# A287628: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A287628, there is no canonical definition to state claims against.
-/

/-! ## A287628.P8720913003883881268

`A126646(n+1)-A288901(n+1)`
-/

namespace A287628.P8720913003883881268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A288901 (n + 1)

end

end A287628.P8720913003883881268

/-! ## A287628.P10379794370181550339

`A000225(n+2)-A288901(n+1)`
-/

namespace A287628.P10379794370181550339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A288901 (n + 1)

end

end A287628.P10379794370181550339

/-! ## A287628.P9322770829149458865

`A288902(n)-and(A288901(n+1), A288902(n))`
-/

namespace A287628.P9322770829149458865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288902 n - Int.land (A288901 (n + 1)) (A288902 n)

end

end A287628.P9322770829149458865

/-! ## A287628.P9896748335318647001

`A126646(char[A003188(n)]+n)%A288901(n+1)`
-/

namespace A287628.P9896748335318647001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)) (A288901 (n + 1))

end

end A287628.P9896748335318647001

/-! ## A287628.P1188621076868698220

`A000225(A002262(∑[n])+n+2)%A288901(n+1)`
-/

namespace A287628.P1188621076868698220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)).toNat) (A288901 (n + 1))

end

end A287628.P1188621076868698220

/-!
# A287629: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 318", based on the 5-celled von Neumann neighborhood.

The programs for A287629, there is no canonical definition to state claims against.
-/

/-! ## A287629.P11325098743035707370

`A019554(lcm(A000079(n), A287628(n)))`
-/

namespace A287629.P11325098743035707370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.lcm (A000079 n) (A287628 n))

end

end A287629.P11325098743035707370

/-! ## A287629.P515787903418616541

`gcd(A290419(n), A336253(A127307(n+1)))`
-/

namespace A287629.P515787903418616541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A290419 n) (A336253 (A127307 (n + 1)).toNat)

end

end A287629.P515787903418616541

/-! ## A287629.P14866606488458527729

`A257736(A287951(n)%A066722(2*n+1))`
-/

namespace A287629.P14866606488458527729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257736 (Int.tmod (A287951 n) (A066722 (2 * n + 1))).toNat

end

end A287629.P14866606488458527729

/-!
# A287630: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A287630, there is no canonical definition to state claims against.
-/

/-! ## A287630.P408719910920609755

`A059841(n)*A286112(n*A059841(n))`
-/

namespace A287630.P408719910920609755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286112 ((n : ℤ) * A059841 n).toNat

end

end A287630.P408719910920609755

/-! ## A287630.P7150099421734748633

`A059841(n)*A286112(n)`
-/

namespace A287630.P7150099421734748633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286112 n

end

end A287630.P7150099421734748633

/-! ## A287630.P14695681448066683426

`lcm(A056594(n), A286112(n))`
-/

namespace A287630.P14695681448066683426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286112 n)

end

end A287630.P14695681448066683426

/-! ## A287630.P6452383985264399947

`Δ[A110654(n)]*A286112(n)`
-/

namespace A287630.P6452383985264399947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A286112 n

end

end A287630.P6452383985264399947

/-! ## A287630.P12970275630439421057

`A000035(n+1)*A286112(n)`
-/

namespace A287630.P12970275630439421057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A286112 n

end

end A287630.P12970275630439421057

/-! ## A287630.P3946225172136391263

`(1-A000035(n))*A286112(n)`
-/

namespace A287630.P3946225172136391263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A286112 n

end

end A287630.P3946225172136391263

/-! ## A287630.P8731110118222797163

`A014577(2*n)*A286112(n)`
-/

namespace A287630.P8731110118222797163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * n) * A286112 n

end

end A287630.P8731110118222797163

/-! ## A287630.P4768249806819762636

`A056594(A265723(n))*A286112(n)`
-/

namespace A287630.P4768249806819762636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A265723 n).toNat * A286112 n

end

end A287630.P4768249806819762636

/-! ## A287630.P15157369906786188798

`A286112(n)*A287631(n*A000035(n))`
-/

namespace A287630.P15157369906786188798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286112 n * A287631 ((n : ℤ) * A000035 n).toNat

end

end A287630.P15157369906786188798

/-! ## A287630.P10397618354856115061

`A287632(n)^A277936(n)*A286112(n)`
-/

namespace A287630.P10397618354856115061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287632 n : ℚ) ^ (A277936 n : ℤ) * (A286112 n : ℚ)

end

end A287630.P10397618354856115061

/-! ## A287630.P16649281952024244694

`A056594(n²)*A286112(n)`
-/

namespace A287630.P16649281952024244694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A286112 n

end

end A287630.P16649281952024244694

/-!
# A287631: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A287631, there is no canonical definition to state claims against.
-/

/-! ## A287631.P12436174390055675964

`char[2*n]*A286113(n)`
-/

namespace A287631.P12436174390055675964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A286113 n

end

end A287631.P12436174390055675964

/-! ## A287631.P10277089255663202065

`lcm(A056594(n), A286113(n))`
-/

namespace A287631.P10277089255663202065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286113 n)

end

end A287631.P10277089255663202065

/-! ## A287631.P17937174743920801908

`and(A115634(n), A286113(n))`
-/

namespace A287631.P17937174743920801908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A286113 n)

end

end A287631.P17937174743920801908

/-! ## A287631.P4641409171522096387

`and(-A077896(n), A286113(n))`
-/

namespace A287631.P4641409171522096387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A077896 n) (A286113 n)

end

end A287631.P4641409171522096387

/-! ## A287631.P11501636395407592896

`floor(A286113(n)^A033999(n))`
-/

namespace A287631.P11501636395407592896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286113 n : ℚ) ^ (A033999 n : ℤ)⌋

end

end A287631.P11501636395407592896

/-! ## A287631.P11517291124744379121

`A286113(n)*A000035(n+1)`
-/

namespace A287631.P11517291124744379121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286113 n * A000035 (n + 1)

end

end A287631.P11517291124744379121

/-! ## A287631.P14925004968583708953

`A286113(n)-A000035(n)*A286113(n)`
-/

namespace A287631.P14925004968583708953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286113 n - A000035 n * A286113 n

end

end A287631.P14925004968583708953

/-! ## A287631.P9415076816344598434

`A059841(n)*A286113(n)*A059841(n)`
-/

namespace A287631.P9415076816344598434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286113 n * A059841 n

end

end A287631.P9415076816344598434

/-! ## A287631.P17615368852057958749

`A286113(n)*A287630(n*A000035(n))`
-/

namespace A287631.P17615368852057958749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286113 n * A287630 ((n : ℤ) * A000035 n).toNat

end

end A287631.P17615368852057958749

/-!
# A287632: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A287632, there is no canonical definition to state claims against.
-/

/-! ## A287632.P14281162589803189999

`A059841(n)*A286114(n*A059841(n))`
-/

namespace A287632.P14281162589803189999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286114 ((n : ℤ) * A059841 n).toNat

end

end A287632.P14281162589803189999

/-! ## A287632.P14826184060899414145

`A059841(n)*A286114(n)`
-/

namespace A287632.P14826184060899414145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286114 n

end

end A287632.P14826184060899414145

/-! ## A287632.P9272976430217776876

`A286114(n)%A052552(n)`
-/

namespace A287632.P9272976430217776876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286114 n) (A052552 n)

end

end A287632.P9272976430217776876

/-! ## A287632.P14316440095182277485

`lcm(A056594(n), A286114(n))`
-/

namespace A287632.P14316440095182277485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286114 n)

end

end A287632.P14316440095182277485

/-! ## A287632.P16059764193310507473

`and(A077896(n), A286114(n))`
-/

namespace A287632.P16059764193310507473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A286114 n)

end

end A287632.P16059764193310507473

/-! ## A287632.P14974794352502504311

`A000035(n+1)*A286114(n)`
-/

namespace A287632.P14974794352502504311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A286114 n

end

end A287632.P14974794352502504311

/-! ## A287632.P13901671229878340526

`(1-A000035(n))*A286114(n)`
-/

namespace A287632.P13901671229878340526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A286114 n

end

end A287632.P13901671229878340526

/-! ## A287632.P718147293196600210

`and(1, A328571(n))*A286114(n)`
-/

namespace A287632.P718147293196600210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A328571 n) * A286114 n

end

end A287632.P718147293196600210

/-! ## A287632.P5027820410468587156

`A286114(n)*A287633(n*A000035(n))`
-/

namespace A287632.P5027820410468587156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286114 n * A287633 ((n : ℤ) * A000035 n).toNat

end

end A287632.P5027820410468587156

/-! ## A287632.P7899697875156765181

`and(A279872(n), A286114(n))`
-/

namespace A287632.P7899697875156765181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279872 n) (A286114 n)

end

end A287632.P7899697875156765181

/-! ## A287632.P2487425687673439560

`and(A285475(n+1), A286114(n))`
-/

namespace A287632.P2487425687673439560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285475 (n + 1)) (A286114 n)

end

end A287632.P2487425687673439560

/-! ## A287632.P16278156118406977547

`or(A286829(n+1), A286829(n))-A286829(n+1)`
-/

namespace A287632.P16278156118406977547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286829 (n + 1)) (A286829 n) - A286829 (n + 1)

end

end A287632.P16278156118406977547

/-! ## A287632.P12039872287427951818

`A056594(n²)*A286114(n)`
-/

namespace A287632.P12039872287427951818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n ^ 2) * A286114 n

end

end A287632.P12039872287427951818

/-!
# A287633: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 324", based on the 5-celled von Neumann neighborhood.

The programs for A287633, there is no canonical definition to state claims against.
-/

/-! ## A287633.P2081348961467603894

`char[2*n]*A286115(n)`
-/

namespace A287633.P2081348961467603894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A286115 n

end

end A287633.P2081348961467603894

/-! ## A287633.P17383834026928924114

`A286115(n)%A281500(n)`
-/

namespace A287633.P17383834026928924114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286115 n) (A281500 n)

end

end A287633.P17383834026928924114

/-! ## A287633.P3002606364040362622

`lcm(A056594(n), A286115(n))`
-/

namespace A287633.P3002606364040362622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A286115 n)

end

end A287633.P3002606364040362622

/-! ## A287633.P16570246616741173910

`and(A115634(n), A286115(n))`
-/

namespace A287633.P16570246616741173910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115634 n) (A286115 n)

end

end A287633.P16570246616741173910

/-! ## A287633.P17711509727232660020

`and(A279872(n), A286115(n))`
-/

namespace A287633.P17711509727232660020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279872 n) (A286115 n)

end

end A287633.P17711509727232660020

/-! ## A287633.P16947363888202557004

`and(A286115(n), A287470(n))`
-/

namespace A287633.P16947363888202557004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286115 n) (A287470 n)

end

end A287633.P16947363888202557004

/-! ## A287633.P1765060187120503067

`A286115(n)*A000035(n+1)`
-/

namespace A287633.P1765060187120503067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286115 n * A000035 (n + 1)

end

end A287633.P1765060187120503067

/-! ## A287633.P5706145536450411968

`A286115(A006370(A265723(n)))`
-/

namespace A287633.P5706145536450411968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286115 (A006370 (A265723 n).toNat).toNat

end

end A287633.P5706145536450411968

/-! ## A287633.P18121347796655365715

`A059841(n)*A286115(n)*A059841(n)`
-/

namespace A287633.P18121347796655365715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286115 n * A059841 n

end

end A287633.P18121347796655365715

/-! ## A287633.P14112200460346354840

`A286115(n)*A287632(n*A000035(n))`
-/

namespace A287633.P14112200460346354840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286115 n * A287632 ((n : ℤ) * A000035 n).toNat

end

end A287633.P14112200460346354840

/-!
# A287635: a(1) = a(2) = a(3) = a(4) = 1; a(n) = a(a(n-4)) + a(n-a(n-3)) for n > 4.

The programs for A287635, the canonical program `A287635.P3400015626396395549` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287635 has offset 1).

The definition of A287635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-4)-1)+a(n-a(n-3))` (program `A287635.P3400015626396395549`, by `A287635.P3400015626396395549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287635.P3400015626396395549

`a(a(n-4)-1)+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287635

/-- `a(a(n-4)-1)+a(n-a(n-3))` -/
def P3400015626396395549.Spec : Prop :=
  ∀ n, (P3400015626396395549.a n : ℤ) = A287635 (n + 1)

theorem P3400015626396395549.correct : P3400015626396395549.Spec := by
  intro n
  simp only [A287635, Nat.add_sub_cancel]

end A287635

/-!
# A287637: a(n) = A249125(n)/concatenation of prime factors of A249125(n).

The programs for A287637, there is no canonical definition to state claims against.
-/

/-! ## A287637.P9315316129599739370

`A249125(n+1)/A084317(A249125(n+1))`
-/

namespace A287637.P9315316129599739370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249125 (n + 1) : ℚ) / (A084317 (A249125 (n + 1)).toNat : ℚ)

end

end A287637.P9315316129599739370

/-!
# A287638: Odd primes with no other odd primes as prefixes in binary.

The programs for A287638, the canonical program `A287638.P4499298965654757907` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287638 has offset 1).

The definition of A287638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287638.P4499298965654757907

`p?[A287117(n+3)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A287638

/-- `p?[A287117(n+3)]` -/
def P4499298965654757907.Spec : Prop :=
  ∀ n, P4499298965654757907.a n = A287638 (n + 1)

theorem P4499298965654757907.correct : P4499298965654757907.Spec := by
  intro n
  simp only [A287638, Nat.add_sub_cancel]

end A287638

/-! ## A287638.P2645403153363257321

`A065091(eq[2, A039638(n+1)])`
-/

namespace A287638.P2645403153363257321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287638.P2645403153363257321

namespace A287638

/-- `A065091(eq[2, A039638(n+1)])` -/
def P2645403153363257321.Spec : Prop :=
  ∀ n, P2645403153363257321.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P2904924382815988599

`filter[A287117(n+3), A010051(#)]`
-/

namespace A287638.P2904924382815988599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A287638.P2904924382815988599

namespace A287638

/-- `filter[A287117(n+3), A010051(#)]` -/
def P2904924382815988599.Spec : Prop :=
  ∀ n, P2904924382815988599.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P4072548067170106028

`A000040(eq[2, A039638(n+1)]+1)`
-/

namespace A287638.P4072548067170106028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287638.P4072548067170106028

namespace A287638

/-- `A000040(eq[2, A039638(n+1)]+1)` -/
def P4072548067170106028.Spec : Prop :=
  ∀ n, P4072548067170106028.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P10696478304181707003

`filter[A287117(2*n+1), A379969(#)]`
-/

namespace A287638.P10696478304181707003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A287638.P10696478304181707003

namespace A287638

/-- `filter[A287117(2*n+1), A379969(#)]` -/
def P10696478304181707003.Spec : Prop :=
  ∀ n, P10696478304181707003.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P13827097067718096099

`p?[A040976(n+1)+A039638(n+1)]`
-/

namespace A287638.P13827097067718096099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A039638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287638.P13827097067718096099

namespace A287638

/-- `p?[A040976(n+1)+A039638(n+1)]` -/
def P13827097067718096099.Spec : Prop :=
  ∀ n, P13827097067718096099.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P2851038927888654536

`filter[A287117(2*n+1), A353817(#)]`
-/

namespace A287638.P2851038927888654536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A287638.P2851038927888654536

namespace A287638

/-- `filter[A287117(2*n+1), A353817(#)]` -/
def P2851038927888654536.Spec : Prop :=
  ∀ n, P2851038927888654536.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P12002384621009159052

`filter[A287117(n+1), A353670(#)]`
-/

namespace A287638.P12002384621009159052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A287638.P12002384621009159052

namespace A287638

/-- `filter[A287117(n+1), A353670(#)]` -/
def P12002384621009159052.Spec : Prop :=
  ∀ n, P12002384621009159052.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P15597834189303720825

`filter[A287117(n+3), A323152(#)]`
-/

namespace A287638.P15597834189303720825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A287638.P15597834189303720825

namespace A287638

/-- `filter[A287117(n+3), A323152(#)]` -/
def P15597834189303720825.Spec : Prop :=
  ∀ n, P15597834189303720825.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P6444338815236697666

`filter[A287117(n+3), A323153(#)]`
-/

namespace A287638.P6444338815236697666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A287638.P6444338815236697666

namespace A287638

/-- `filter[A287117(n+3), A323153(#)]` -/
def P6444338815236697666.Spec : Prop :=
  ∀ n, P6444338815236697666.a n = A287638 (n + 1)

end A287638

/-! ## A287638.P7994373181789481139

`∩[A064728(n+1), A287117(n+1)]`
-/

namespace A287638.P7994373181789481139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287638.P7994373181789481139

namespace A287638

/-- `∩[A064728(n+1), A287117(n+1)]` -/
def P7994373181789481139.Spec : Prop :=
  ∀ n, (P7994373181789481139.a n : ℤ) = A287638 (n + 1)

end A287638

/-! ## A287638.P8200712915540011761

`∩[A065091(n+1), A287117(n+1)]`
-/

namespace A287638.P8200712915540011761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287638.P8200712915540011761

namespace A287638

/-- `∩[A065091(n+1), A287117(n+1)]` -/
def P8200712915540011761.Spec : Prop :=
  ∀ n, (P8200712915540011761.a n : ℤ) = A287638 (n + 1)

end A287638

/-! ## A287638.P17825517987312700609

`∩[A065396(n+1), A287117(n+1)]`
-/

namespace A287638.P17825517987312700609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287638.P17825517987312700609

namespace A287638

/-- `∩[A065396(n+1), A287117(n+1)]` -/
def P17825517987312700609.Spec : Prop :=
  ∀ n, (P17825517987312700609.a n : ℤ) = A287638 (n + 1)

end A287638

/-! ## A287638.P12997622978856532083

`∩[A106119(n+1), A287117(n+1)]`
-/

namespace A287638.P12997622978856532083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287638.P12997622978856532083

namespace A287638

/-- `∩[A106119(n+1), A287117(n+1)]` -/
def P12997622978856532083.Spec : Prop :=
  ∀ n, (P12997622978856532083.a n : ℤ) = A287638 (n + 1)

end A287638

/-! ## A287638.P11422213025165703152

`∩[A287117(n+1), A351398(n+1)]`
-/

namespace A287638.P11422213025165703152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287638.P11422213025165703152

namespace A287638

/-- `∩[A287117(n+1), A351398(n+1)]` -/
def P11422213025165703152.Spec : Prop :=
  ∀ n, (P11422213025165703152.a n : ℤ) = A287638 (n + 1)

end A287638

/-!
# A287640: Number T(n,k) of set partitions of [n], where k is minimal such that for all j in [n]: j is member of block b implies b = 1 or at least one of j-1, ..., j-k is member of a block >= b-1; triangle T(n,k), n >= 0, 0 <= k <= max(floor(n/2), n-2), read by rows.

The programs for A287640, there is no canonical definition to state claims against.
-/

/-! ## A287640.P4651724247840947833

`A390146(A066729(n+1))`
-/

namespace A287640.P4651724247840947833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390146 (A066729 (n + 1)).toNat

end

end A287640.P4651724247840947833

/-! ## A287640.P17359753069857613781

`∑{digits}[A094424(A266504(n)), #]`
-/

namespace A287640.P17359753069857613781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (A266504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A287640.P17359753069857613781

/-! ## A287640.P4489487937721762507

`A323206(and(∑[n], A007716(n)))`
-/

namespace A287640.P4489487937721762507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323206 (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A007716 n)).toNat

end

end A287640.P4489487937721762507

/-! ## A287640.P5665346088920199311

`A193559(A324225(n+1)^A140081(n))`
-/

namespace A287640.P5665346088920199311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193559 (SequenceMachineLib.roundAway ((A324225 (n + 1) : ℚ) ^ (A140081 n : ℤ))).toNat

end

end A287640.P5665346088920199311

/-! ## A287640.P17357997017280640055

`A052529(A011973(n)^A213275(2*n))`
-/

namespace A287640.P17357997017280640055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 (SequenceMachineLib.roundAway ((A011973 n : ℚ) ^ (A213275 (2 * n) : ℤ))).toNat

end

end A287640.P17357997017280640055

/-!
# A287641: Number A(n,k) of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-k is member of a block >= b-1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A287641, there is no canonical definition to state claims against.
-/

/-! ## A287641.P8776218439244277896

`A026371(A135339(A287417(n)))%19`
-/

namespace A287641.P8776218439244277896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026371 (A135339 (A287417 n).toNat).toNat) 19

end

end A287641.P8776218439244277896

/-! ## A287641.P10162658765086981003

`A149877(A039993(A287216(n)²²))`
-/

namespace A287641.P10162658765086981003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149877 (A039993 ((A287216 n ^ 2) ^ 2).toNat).toNat

end

end A287641.P10162658765086981003

/-! ## A287641.P11820350338005892913

`A000108(A114219(n)%A095688(n+1))`
-/

namespace A287641.P11820350338005892913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.tmod (A114219 n) (A095688 (n + 1))).toNat

end

end A287641.P11820350338005892913

/-! ## A287641.P4095845836211110496

`A000108(A114219(n))%A114264(2*(n+1))`
-/

namespace A287641.P4095845836211110496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (A114219 n).toNat) (A114264 (2 * (n + 1)))

end

end A287641.P4095845836211110496

/-! ## A287641.P18270291814944783934

`A191793(A191318(A001859(A205573(n))))`
-/

namespace A287641.P18270291814944783934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191793 (A191318 (A001859 (A205573 n).toNat).toNat).toNat

end

end A287641.P18270291814944783934

/-!
# A287643: a(1) = ... = a(6) = 1; a(n) = a(a(n-3)) + a(n-a(n-6)) for n > 6.

The programs for A287643, the canonical program `A287643.P5023192479390006519` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287643 has offset 1).

The definition of A287643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-3)-1)+a(n-a(n-6))` (program `A287643.P5023192479390006519`, by `A287643.P5023192479390006519.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287643.P5023192479390006519

`a(a(n-3)-1)+a(n-a(n-6))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287643

/-- `a(a(n-3)-1)+a(n-a(n-6))` -/
def P5023192479390006519.Spec : Prop :=
  ∀ n, (P5023192479390006519.a n : ℤ) = A287643 (n + 1)

theorem P5023192479390006519.correct : P5023192479390006519.Spec := by
  intro n
  simp only [A287643, Nat.add_sub_cancel]

end A287643

/-!
# A287644: Maximum number of transversals in a diagonal Latin square of order n.

The programs for A287644, there is no canonical definition to state claims against.
-/

/-! ## A287644.P13588393861635443960

`A090741(1-char[2]+n)`
-/

namespace A287644.P13588393861635443960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090741 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A287644.P13588393861635443960

/-! ## A287644.P17937727873756716007

`A090741(n+1)*A317088(n)`
-/

namespace A287644.P17937727873756716007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090741 (n + 1) * A317088 n

end

end A287644.P17937727873756716007

/-! ## A287644.P17069017571290617083

`and(-A112691(n), A090741(n+1))`
-/

namespace A287644.P17069017571290617083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A112691 n) (A090741 (n + 1))

end

end A287644.P17069017571290617083

/-! ## A287644.P13106395534886687123

`char[A163874(n)]*A090741(n+1)`
-/

namespace A287644.P13106395534886687123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163874 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A090741 (n + 1)

end

end A287644.P13106395534886687123

/-! ## A287644.P9529344611121521521

`char[A238797(n)]*A090741(n+1)`
-/

namespace A287644.P9529344611121521521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238797 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A090741 (n + 1)

end

end A287644.P9529344611121521521

/-!
# A287646: Irregular triangle read by rows where row n lists all odd primitive abundant numbers with n prime factors, counted with multiplicity.

The programs for A287646, there is no canonical definition to state claims against.
-/

/-! ## A287646.P4201871662551572782

`filter[A006038(n+1), A066829(#)]`
-/

namespace A287646.P4201871662551572782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A287646.P4201871662551572782

/-! ## A287646.P12300732654515105538

`filter[A006038(n+1), A353558(#)]`
-/

namespace A287646.P12300732654515105538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A287646.P12300732654515105538

/-! ## A287646.P1381063551862051464

`filter[A005231(n+1), A358751(#)]`
-/

namespace A287646.P1381063551862051464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A287646.P1381063551862051464

/-! ## A287646.P4689230017241324399

`filter[A005231(n+1), A358771(#)]`
-/

namespace A287646.P4689230017241324399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A287646.P4689230017241324399

/-! ## A287646.P13164074968149024791

`filter[A006038(n+1), A358751(#)]`
-/

namespace A287646.P13164074968149024791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A287646.P13164074968149024791

/-!
# A287648: Maximum number of diagonal transversals in a diagonal Latin square of order n.

The programs for A287648, there is no canonical definition to state claims against.
-/

/-! ## A287648.P4821058163397355600

`A284118(n+1)+A360220(n+1)-1`
-/

namespace A287648.P4821058163397355600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284118 (n + 1) + (A360220 (n + 1) - 1)

end

end A287648.P4821058163397355600

/-! ## A287648.P3661952945594115369

`A360220(n+1)+A132440(A212964(n+1))`
-/

namespace A287648.P3661952945594115369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360220 (n + 1) + A132440 (A212964 (n + 1)).toNat

end

end A287648.P3661952945594115369

/-! ## A287648.P14834017827756239040

`A360220(n+1)+A152128(A243055(n+1))`
-/

namespace A287648.P14834017827756239040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360220 (n + 1) + A152128 (A243055 (n + 1)).toNat

end

end A287648.P14834017827756239040

/-! ## A287648.P6842380425248227950

`A360220(n+1)+A054000(A345992(n+1))`
-/

namespace A287648.P6842380425248227950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360220 (n + 1) + A054000 (A345992 (n + 1)).toNat

end

end A287648.P6842380425248227950

/-! ## A287648.P2733449737006570307

`A360220(n+1)+A195831(A284118(n+1))`
-/

namespace A287648.P2733449737006570307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360220 (n + 1) + A195831 (A284118 (n + 1)).toNat

end

end A287648.P2733449737006570307

/-!
# A287651: Number of reduced pairs of orthogonal diagonal Latin squares of order n.

The programs for A287651, there is no canonical definition to state claims against.
-/

/-! ## A287651.P11777551371709205758

`A339926(n+1)/(n+1)!²`
-/

namespace A287651.P11777551371709205758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339926 (n + 1) : ℚ) / (Nat.factorial (n + 1) ^ 2 : ℚ)

end

end A287651.P11777551371709205758

/-! ## A287651.P14118976620308883850

`A339926(n+1)/A060817(n+1)²`
-/

namespace A287651.P14118976620308883850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339926 (n + 1) : ℚ) / (A060817 (n + 1) ^ 2 : ℚ)

end

end A287651.P14118976620308883850

/-! ## A287651.P4949742172271985062

`A341415(A304357(n))`
-/

namespace A287651.P4949742172271985062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341415 (A304357 n).toNat

end

end A287651.P4949742172271985062

/-!
# A287652: Number of simple disconnected perfect matching graphs on 2n nodes.

The programs for A287652, there is no canonical definition to state claims against.
-/

/-! ## A287652.P12860280516705436446

`A218462(n+1)-A218463(n+1)`
-/

namespace A287652.P12860280516705436446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218462 (n + 1) - A218463 (n + 1)

end

end A287652.P12860280516705436446

/-!
# A287653: Prime numbers of the form p*q + q*r + r*s with p,q,r,s consecutive primes.

The programs for A287653, there is no canonical definition to state claims against.
-/

/-! ## A287653.P15145553625709307001

`p?[A074745(n+4)-A074745(n+1)]`
-/

namespace A287653.P15145553625709307001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074745 (n + 4) - A074745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287653.P15145553625709307001

/-!
# A287654: a(1) = 1, a(2) = a(3) = a(4) = 2; a(n) = a(a(n-1)) + a(a(n-a(n-1)) + a(n-a(n-2))) for n > 4.

The programs for A287654, the canonical program `A287654.P17403938079650057144` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287654 has offset 1).

The definition of A287654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(a(n-a(n-1))+a(n-a(n-2))-1)` (program `A287654.P17403938079650057144`, by `A287654.P17403938079650057144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A287654.P17403938079650057144

`a(a(n-1)-1)+a(a(n-a(n-1))+a(n-a(n-2))-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287654

/-- `a(a(n-1)-1)+a(a(n-a(n-1))+a(n-a(n-2))-1)` -/
def P17403938079650057144.Spec : Prop :=
  ∀ n, (P17403938079650057144.a n : ℤ) = A287654 (n + 1)

theorem P17403938079650057144.correct : P17403938079650057144.Spec := by
  intro n
  simp only [A287654, Nat.add_sub_cancel]

end A287654

/-!
# A287656: Number of partitions of n into distinct tetranacci numbers (with a single type of 1) (A000078).

The programs for A287656, there is no canonical definition to state claims against.
-/

/-! ## A287656.P14430109421963635050

`A288120(A115420(n+1))`
-/

namespace A287656.P14430109421963635050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 (A115420 (n + 1)).toNat

end

end A287656.P14430109421963635050

/-! ## A287656.P972821144269502819

`A288120(A331048(n+1)+A207187(n+1))`
-/

namespace A287656.P972821144269502819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 (A331048 (n + 1) + A207187 (n + 1)).toNat

end

end A287656.P972821144269502819

/-! ## A287656.P15495689369384931926

`A325837(and(A127104(n+1), A141883(2*(n+1))))`
-/

namespace A287656.P15495689369384931926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (Int.land (A127104 (n + 1)) (A141883 (2 * (n + 1)))).toNat

end

end A287656.P15495689369384931926

/-! ## A287656.P17152123259256484198

`A008284(gcd(A193231(n), A345961(n+1)))`
-/

namespace A287656.P17152123259256484198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (Int.gcd (A193231 n) (A345961 (n + 1)))

end

end A287656.P17152123259256484198

/-! ## A287656.P5066762527888574655

`∏{e}[A001222(A058879(n+3)+A006063(n+1)), #]`
-/

namespace A287656.P5066762527888574655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A058879 (n + 3) + A006063 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A287656.P5066762527888574655

/-! ## A287656.P5721403226494419041

`gcd(Δ[A259729(n+1)], A139407(n+1))`
-/

namespace A287656.P5721403226494419041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A139407 (n + 1))

end

end A287656.P5721403226494419041

/-! ## A287656.P10866563863526584941

`A294937(A133880(n)+A091351(n+3))+1`
-/

namespace A287656.P10866563863526584941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (A133880 n + A091351 (n + 3)).toNat + 1

end

end A287656.P10866563863526584941

/-! ## A287656.P11314600461268875907

`A342017(A063183(n))`
-/

namespace A287656.P11314600461268875907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342017 (A063183 n).toNat

end

end A287656.P11314600461268875907

/-!
# A287657: {0->01, 1->10}-transform of the infinite Fibonacci word A003849.

The programs for A287657, the canonical program `A287657.P14767657760280168455` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287657 has offset 1).

The definition of A287657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287657.P11939851259664044719

`char[Δ[ceil((n+1)/ϕ)]+2*n]`
-/

namespace A287657.P11939851259664044719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287657.P11939851259664044719

namespace A287657

/-- `char[Δ[ceil((n+1)/ϕ)]+2*n]` -/
def P11939851259664044719.Spec : Prop :=
  ∀ n, (P11939851259664044719.a n : ℤ) = A287657 (n + 1)

end A287657

/-! ## A287657.P18264089009749476639

`1-char[A003849(n)+2*n]`
-/

namespace A287657.P18264089009749476639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287657.P18264089009749476639

namespace A287657

/-- `1-char[A003849(n)+2*n]` -/
def P18264089009749476639.Spec : Prop :=
  ∀ n, P18264089009749476639.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P14767657760280168455

`xor(n%2, A003849(floor(n/2)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287657

/-- `xor(n%2, A003849(floor(n/2)))` -/
def P14767657760280168455.Spec : Prop :=
  ∀ n, P14767657760280168455.a n = A287657 (n + 1)

theorem P14767657760280168455.correct : P14767657760280168455.Spec := by
  intro n
  simp only [A287657, Nat.add_sub_cancel]

end A287657

/-! ## A287657.P4789610639940951483

`1-char[∑[Δ[A188432(n+1)]+1]+n-1]`
-/

namespace A287657.P4789610639940951483
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A287657.P4789610639940951483

namespace A287657

/-- `1-char[∑[Δ[A188432(n+1)]+1]+n-1]` -/
def P4789610639940951483.Spec : Prop :=
  ∀ n, P4789610639940951483.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P13540086960750840617

`A005614(A307294(n))`
-/

namespace A287657.P13540086960750840617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A307294 n).toNat

end

end A287657.P13540086960750840617

namespace A287657

/-- `A005614(A307294(n))` -/
def P13540086960750840617.Spec : Prop :=
  ∀ n, P13540086960750840617.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P6556571308636550758

`A096270(A307294(n)+1)`
-/

namespace A287657.P6556571308636550758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A307294 n + 1).toNat

end

end A287657.P6556571308636550758

namespace A287657

/-- `A096270(A307294(n)+1)` -/
def P6556571308636550758.Spec : Prop :=
  ∀ n, P6556571308636550758.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P14113162038941050578

`(3*(A014675(A004526(n))+n))%2`
-/

namespace A287657.P14113162038941050578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * (A014675 (A004526 n).toNat + (n : ℤ))) 2

end

end A287657.P14113162038941050578

namespace A287657

/-- `(3*(A014675(A004526(n))+n))%2` -/
def P14113162038941050578.Spec : Prop :=
  ∀ n, P14113162038941050578.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P17160777052186416063

`abs(A130233(A139764(floor(n/2)+1))-n)%2`
-/

namespace A287657.P17160777052186416063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A130233 (A139764 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat - (n : ℤ)| 2

end

end A287657.P17160777052186416063

namespace A287657

/-- `abs(A130233(A139764(floor(n/2)+1))-n)%2` -/
def P17160777052186416063.Spec : Prop :=
  ∀ n, P17160777052186416063.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P11721272703394366093

`and(2, A063037(n+2))/2`
-/

namespace A287657.P11721272703394366093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A063037 (n + 2)) : ℚ) / 2

end

end A287657.P11721272703394366093

namespace A287657

/-- `and(2, A063037(n+2))/2` -/
def P11721272703394366093.Spec : Prop :=
  ∀ n, P11721272703394366093.a n = (A287657 (n + 1) : ℚ)

end A287657

/-! ## A287657.P2502319404970323525

`and(1, Δ[A317203(n+1)]+n)`
-/

namespace A287657.P2502319404970323525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n + (n : ℤ))

end

end A287657.P2502319404970323525

namespace A287657

/-- `and(1, Δ[A317203(n+1)]+n)` -/
def P2502319404970323525.Spec : Prop :=
  ∀ n, P2502319404970323525.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P10207623831890032006

`C(2, A319432(A188435(n+2)))`
-/

namespace A287657.P10207623831890032006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A319432 (A188435 (n + 2)).toNat).toNat

end

end A287657.P10207623831890032006

namespace A287657

/-- `C(2, A319432(A188435(n+2)))` -/
def P10207623831890032006.Spec : Prop :=
  ∀ n, (P10207623831890032006.a n : ℤ) = A287657 (n + 1)

end A287657

/-! ## A287657.P16537373378247632408

`A005614(A219636(n+3)-2)`
-/

namespace A287657.P16537373378247632408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A219636 (n + 3) - 2).toNat

end

end A287657.P16537373378247632408

namespace A287657

/-- `A005614(A219636(n+3)-2)` -/
def P16537373378247632408.Spec : Prop :=
  ∀ n, P16537373378247632408.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P11428281333521854785

`A003849(A307295(n)+1)`
-/

namespace A287657.P11428281333521854785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A307295 n + 1).toNat

end

end A287657.P11428281333521854785

namespace A287657

/-- `A003849(A307295(n)+1)` -/
def P11428281333521854785.Spec : Prop :=
  ∀ n, P11428281333521854785.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P548715874091847307

`A003849(A188435(n+2))`
-/

namespace A287657.P548715874091847307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A188435 (n + 2)).toNat

end

end A287657.P548715874091847307

namespace A287657

/-- `A003849(A188435(n+2))` -/
def P548715874091847307.Spec : Prop :=
  ∀ n, P548715874091847307.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P3966959864832797952

`A003849(A187485(n+1)+2)`
-/

namespace A287657.P3966959864832797952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A187485 (n + 1) + 2).toNat

end

end A287657.P3966959864832797952

namespace A287657

/-- `A003849(A187485(n+1)+2)` -/
def P3966959864832797952.Spec : Prop :=
  ∀ n, P3966959864832797952.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P11201264131590088318

`A003849(A287723(n+1)+1-n)`
-/

namespace A287657.P11201264131590088318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A287723 (n + 1) + (1 - (n : ℤ))).toNat

end

end A287657.P11201264131590088318

namespace A287657

/-- `A003849(A287723(n+1)+1-n)` -/
def P11201264131590088318.Spec : Prop :=
  ∀ n, P11201264131590088318.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P17825687201642341686

`A003849(record[A003849(a(n-1))+n])` with `a(0)=3`
-/

namespace A287657.P17825687201642341686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A003849 (f1 (n - 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A287657.P17825687201642341686

namespace A287657

/-- `A003849(record[A003849(a(n-1))+n])` -/
def P17825687201642341686.Spec : Prop :=
  ∀ n, P17825687201642341686.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P1521626326382205508

`A003849(eq[A003849(n), A114986(n)]+2)`
-/

namespace A287657.P1521626326382205508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A287657.P1521626326382205508

namespace A287657

/-- `A003849(eq[A003849(n), A114986(n)]+2)` -/
def P1521626326382205508.Spec : Prop :=
  ∀ n, P1521626326382205508.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P11377503828300861098

`A327219(A219636(n+2))`
-/

namespace A287657.P11377503828300861098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 (A219636 (n + 2)).toNat

end

end A287657.P11377503828300861098

namespace A287657

/-- `A327219(A219636(n+2))` -/
def P11377503828300861098.Spec : Prop :=
  ∀ n, P11377503828300861098.a n = A287657 (n + 1)

end A287657

/-! ## A287657.P17107793991005939947

`A188432(A188435(n+2)+2)`
-/

namespace A287657.P17107793991005939947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (A188435 (n + 2) + 2).toNat

end

end A287657.P17107793991005939947

namespace A287657

/-- `A188432(A188435(n+2)+2)` -/
def P17107793991005939947.Spec : Prop :=
  ∀ n, P17107793991005939947.a n = A287657 (n + 1)

end A287657

/-!
# A287658: Positions of 0 in A287657; complement of A287659.

The programs for A287658, the canonical program `A287658.P9810160959772235257` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287658 has offset 1).

The definition of A287658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287658.P9810160959772235257

`2*(n+1)-A005614(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287658

/-- `2*(n+1)-A005614(n)` -/
def P9810160959772235257.Spec : Prop :=
  ∀ n, P9810160959772235257.a n = A287658 (n + 1)

theorem P9810160959772235257.correct : P9810160959772235257.Spec := by
  intro n
  simp only [A287658, Nat.add_sub_cancel]

end A287658

/-! ## A287658.P1384880712516626572

`Δ[floor((1-ϕ+n)*(n+1))]`
-/

namespace A287658.P1384880712516626572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - Real.goldenRatio + (n : ℝ)) * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287658.P1384880712516626572

namespace A287658

/-- `Δ[floor((1-ϕ+n)*(n+1))]` -/
def P1384880712516626572.Spec : Prop :=
  ∀ n, P1384880712516626572.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P12538426357829465417

`gcd(2, Δ[floor((n+1)/ϕ)])+2*n`
-/

namespace A287658.P12538426357829465417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n) + 2 * n

end

end A287658.P12538426357829465417

namespace A287658

/-- `gcd(2, Δ[floor((n+1)/ϕ)])+2*n` -/
def P12538426357829465417.Spec : Prop :=
  ∀ n, (P12538426357829465417.a n : ℤ) = A287658 (n + 1)

end A287658

/-! ## A287658.P7700045416124414690

`C(2, Δ[floor(ϕ*(n+1))])+2*n`
-/

namespace A287658.P7700045416124414690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat + 2 * n

end

end A287658.P7700045416124414690

namespace A287658

/-- `C(2, Δ[floor(ϕ*(n+1))])+2*n` -/
def P7700045416124414690.Spec : Prop :=
  ∀ n, (P7700045416124414690.a n : ℤ) = A287658 (n + 1)

end A287658

/-! ## A287658.P7507653894339828783

`and(1, Δ[floor(ϕ*(n+1))])+2*n+1`
-/

namespace A287658.P7507653894339828783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) + (2 * n + 1 : ℤ)

end

end A287658.P7507653894339828783

namespace A287658

/-- `and(1, Δ[floor(ϕ*(n+1))])+2*n+1` -/
def P7507653894339828783.Spec : Prop :=
  ∀ n, P7507653894339828783.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P11459900921270122015

`∑[2-A014677(n)]`
-/

namespace A287658.P11459900921270122015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287658.P11459900921270122015

namespace A287658

/-- `∑[2-A014677(n)]` -/
def P11459900921270122015.Spec : Prop :=
  ∀ n, P11459900921270122015.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P14616635243715041679

`A380960(n)+1+n`
-/

namespace A287658.P14616635243715041679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380960 n + 1 + (n : ℤ)

end

end A287658.P14616635243715041679

namespace A287658

/-- `A380960(n)+1+n` -/
def P14616635243715041679.Spec : Prop :=
  ∀ n, P14616635243715041679.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P4261472564267733511

`A003842(n)+2*n`
-/

namespace A287658.P4261472564267733511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n + (2 * n : ℤ)

end

end A287658.P4261472564267733511

namespace A287658

/-- `A003842(n)+2*n` -/
def P4261472564267733511.Spec : Prop :=
  ∀ n, P4261472564267733511.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P1363440934401328541

`A003849(n)+Δ[n²]`
-/

namespace A287658.P1363440934401328541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A287658.P1363440934401328541

namespace A287658

/-- `A003849(n)+Δ[n²]` -/
def P1363440934401328541.Spec : Prop :=
  ∀ n, P1363440934401328541.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P10250317225126095162

`2*n+3-A014675(n)`
-/

namespace A287658.P10250317225126095162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A014675 n

end

end A287658.P10250317225126095162

namespace A287658

/-- `2*n+3-A014675(n)` -/
def P10250317225126095162.Spec : Prop :=
  ∀ n, P10250317225126095162.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P1902062750960264002

`2*(n+1)-A096270(n+1)`
-/

namespace A287658.P1902062750960264002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A096270 (n + 1)

end

end A287658.P1902062750960264002

namespace A287658

/-- `2*(n+1)-A096270(n+1)` -/
def P1902062750960264002.Spec : Prop :=
  ∀ n, P1902062750960264002.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P13371740893032592546

`2*(n+1)-A114986(n+1)`
-/

namespace A287658.P13371740893032592546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A114986 (n + 1)

end

end A287658.P13371740893032592546

namespace A287658

/-- `2*(n+1)-A114986(n+1)` -/
def P13371740893032592546.Spec : Prop :=
  ∀ n, P13371740893032592546.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P4730268031573511682

`(A287803(n+1)+n+1)/2`
-/

namespace A287658.P4730268031573511682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287803 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A287658.P4730268031573511682

namespace A287658

/-- `(A287803(n+1)+n+1)/2` -/
def P4730268031573511682.Spec : Prop :=
  ∀ n, P4730268031573511682.a n = (A287658 (n + 1) : ℚ)

end A287658

/-! ## A287658.P1472939073117904061

`2*(n+2)-A282162(n+1)`
-/

namespace A287658.P1472939073117904061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A282162 (n + 1)

end

end A287658.P1472939073117904061

namespace A287658

/-- `2*(n+2)-A282162(n+1)` -/
def P1472939073117904061.Spec : Prop :=
  ∀ n, P1472939073117904061.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P6115712353687956047

`A000032(Δ[floor((n+1)/ϕ)])+2*n`
-/

namespace A287658.P6115712353687956047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat + (2 * n : ℤ)

end

end A287658.P6115712353687956047

namespace A287658

/-- `A000032(Δ[floor((n+1)/ϕ)])+2*n` -/
def P6115712353687956047.Spec : Prop :=
  ∀ n, P6115712353687956047.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P13536134422477955870

`A000045(Δ[floor((n+1)/ϕ²)])+2*n+1`
-/

namespace A287658.P13536134422477955870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat + (2 * n + 1 : ℤ)

end

end A287658.P13536134422477955870

namespace A287658

/-- `A000045(Δ[floor((n+1)/ϕ²)])+2*n+1` -/
def P13536134422477955870.Spec : Prop :=
  ∀ n, P13536134422477955870.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P2543370569555372149

`A005408(n)+A003849(n)`
-/

namespace A287658.P2543370569555372149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A003849 n

end

end A287658.P2543370569555372149

namespace A287658

/-- `A005408(n)+A003849(n)` -/
def P2543370569555372149.Spec : Prop :=
  ∀ n, P2543370569555372149.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P9501713222714996728

`A005843(n)+A003842(n)`
-/

namespace A287658.P9501713222714996728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A003842 n

end

end A287658.P9501713222714996728

namespace A287658

/-- `A005843(n)+A003842(n)` -/
def P9501713222714996728.Spec : Prop :=
  ∀ n, P9501713222714996728.a n = A287658 (n + 1)

end A287658

/-! ## A287658.P13467723952904582136

`∑[A003849(n)+A001468(n)]`
-/

namespace A287658.P13467723952904582136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287658.P13467723952904582136

namespace A287658

/-- `∑[A003849(n)+A001468(n)]` -/
def P13467723952904582136.Spec : Prop :=
  ∀ n, P13467723952904582136.a n = A287658 (n + 1)

end A287658

/-!
# A287659: Positions of 1 in A287657; complement of A287658.

The programs for A287659, the canonical program `A287659.P10046964900207517982` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287659 has offset 1).

The definition of A287659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287659.P10046964900207517982

`2*(n+1)-A003849(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287659

/-- `2*(n+1)-A003849(n)` -/
def P10046964900207517982.Spec : Prop :=
  ∀ n, P10046964900207517982.a n = A287659 (n + 1)

theorem P10046964900207517982.correct : P10046964900207517982.Spec := by
  intro n
  simp only [A287659, Nat.add_sub_cancel]

end A287659

/-! ## A287659.P8585796116416376731

`Δ[floor((n+1)/ϕ)+n²]`
-/

namespace A287659.P8585796116416376731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A287659.P8585796116416376731

namespace A287659

/-- `Δ[floor((n+1)/ϕ)+n²]` -/
def P8585796116416376731.Spec : Prop :=
  ∀ n, P8585796116416376731.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P4804729473552832534

`Δ[floor(ϕ*(n+1))]!+2*n`
-/

namespace A287659.P4804729473552832534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat + 2 * n

end

end A287659.P4804729473552832534

namespace A287659

/-- `Δ[floor(ϕ*(n+1))]!+2*n` -/
def P4804729473552832534.Spec : Prop :=
  ∀ n, (P4804729473552832534.a n : ℤ) = A287659 (n + 1)

end A287659

/-! ## A287659.P12946478338650755506

`gcd(2, Δ[floor(ϕ*(n+1))])+2*n`
-/

namespace A287659.P12946478338650755506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n) + 2 * n

end

end A287659.P12946478338650755506

namespace A287659

/-- `gcd(2, Δ[floor(ϕ*(n+1))])+2*n` -/
def P12946478338650755506.Spec : Prop :=
  ∀ n, (P12946478338650755506.a n : ℤ) = A287659 (n + 1)

end A287659

/-! ## A287659.P12174133036685277862

`Δ[floor(ϕ*(n+1))]+lcm(2, 2*n)`
-/

namespace A287659.P12174133036685277862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.lcm 2 (2 * n) : ℤ)

end

end A287659.P12174133036685277862

namespace A287659

/-- `Δ[floor(ϕ*(n+1))]+lcm(2, 2*n)` -/
def P12174133036685277862.Spec : Prop :=
  ∀ n, P12174133036685277862.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P11988970173845380042

`C(2, Δ[floor((n+1)/ϕ)])+2*n`
-/

namespace A287659.P11988970173845380042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat + 2 * n

end

end A287659.P11988970173845380042

namespace A287659

/-- `C(2, Δ[floor((n+1)/ϕ)])+2*n` -/
def P11988970173845380042.Spec : Prop :=
  ∀ n, (P11988970173845380042.a n : ℤ) = A287659 (n + 1)

end A287659

/-! ## A287659.P15636990156022414698

`or(2*n, Δ[ceil((n+1)/ϕ)])+1`
-/

namespace A287659.P15636990156022414698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (f1 (n + 1) - f1 n) + 1

end

end A287659.P15636990156022414698

namespace A287659

/-- `or(2*n, Δ[ceil((n+1)/ϕ)])+1` -/
def P15636990156022414698.Spec : Prop :=
  ∀ n, P15636990156022414698.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P15657258190387871177

`xor(2*n, Δ[ceil((n+1)/ϕ)])+1`
-/

namespace A287659.P15657258190387871177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (f1 (n + 1) - f1 n) + 1

end

end A287659.P15657258190387871177

namespace A287659

/-- `xor(2*n, Δ[ceil((n+1)/ϕ)])+1` -/
def P15657258190387871177.Spec : Prop :=
  ∀ n, P15657258190387871177.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P11246536915369442826

`Δ[floor(ϕ*C(n+1, n))]+2*n`
-/

namespace A287659.P11246536915369442826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * n : ℤ)

end

end A287659.P11246536915369442826

namespace A287659

/-- `Δ[floor(ϕ*C(n+1, n))]+2*n` -/
def P11246536915369442826.Spec : Prop :=
  ∀ n, P11246536915369442826.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P10045210379213287065

`and(1, Δ[floor((n+1)/ϕ)])+2*n+1`
-/

namespace A287659.P10045210379213287065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n) + (2 * n + 1 : ℤ)

end

end A287659.P10045210379213287065

namespace A287659

/-- `and(1, Δ[floor((n+1)/ϕ)])+2*n+1` -/
def P10045210379213287065.Spec : Prop :=
  ∀ n, P10045210379213287065.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P4041254214486221557

`Δ[n-a(a(n-1))]+2*n+1` with `a(0)=0`
-/

namespace A287659.P4041254214486221557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * n + 1 : ℤ)

end

end A287659.P4041254214486221557

namespace A287659

/-- `Δ[n-a(a(n-1))]+2*n+1` -/
def P4041254214486221557.Spec : Prop :=
  ∀ n, P4041254214486221557.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P18085765735726724427

`∑[Δ[floor(ϕ*floor((n+1)/ϕ))]%3+1]`
-/

namespace A287659.P18085765735726724427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287659.P18085765735726724427

namespace A287659

/-- `∑[Δ[floor(ϕ*floor((n+1)/ϕ))]%3+1]` -/
def P18085765735726724427.Spec : Prop :=
  ∀ n, P18085765735726724427.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P3532328619532791863

`Δ[floor(ϕ*(n+1))]+and(2*n+1, 2*n)`
-/

namespace A287659.P3532328619532791863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.land (2 * n + 1) (2 * n) : ℤ)

end

end A287659.P3532328619532791863

namespace A287659

/-- `Δ[floor(ϕ*(n+1))]+and(2*n+1, 2*n)` -/
def P3532328619532791863.Spec : Prop :=
  ∀ n, P3532328619532791863.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P5287299957711154917

`A014675(n)+2*n`
-/

namespace A287659.P5287299957711154917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + (2 * n : ℤ)

end

end A287659.P5287299957711154917

namespace A287659

/-- `A014675(n)+2*n` -/
def P5287299957711154917.Spec : Prop :=
  ∀ n, P5287299957711154917.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P1219844714097546314

`A005614(n)+Δ[n²]`
-/

namespace A287659.P1219844714097546314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A287659.P1219844714097546314

namespace A287659

/-- `A005614(n)+Δ[n²]` -/
def P1219844714097546314.Spec : Prop :=
  ∀ n, P1219844714097546314.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P2494424100549333457

`2*n+3-A003842(n)`
-/

namespace A287659.P2494424100549333457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A003842 n

end

end A287659.P2494424100549333457

namespace A287659

/-- `2*n+3-A003842(n)` -/
def P2494424100549333457.Spec : Prop :=
  ∀ n, P2494424100549333457.a n = A287659 (n + 1)

end A287659

/-! ## A287659.P8962529487249270467

`A096270(n+1)+Δ[n²]`
-/

namespace A287659.P8962529487249270467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A287659.P8962529487249270467

namespace A287659

/-- `A096270(n+1)+Δ[n²]` -/
def P8962529487249270467.Spec : Prop :=
  ∀ n, P8962529487249270467.a n = A287659 (n + 1)

end A287659

/-!
# A287661: Smallest odd number with exactly n nonprime divisors.

The programs for A287661, there is no canonical definition to state claims against.
-/

/-! ## A287661.P12778460168972674605

`A003961(lcm(A034886(n), A055079(n+1)))`
-/

namespace A287661.P12778460168972674605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lcm (A034886 n) (A055079 (n + 1)))

end

end A287661.P12778460168972674605

/-! ## A287661.P14942586271261761636

`A173453(3*n+5)+A003961(A330972(n+1))`
-/

namespace A287661.P14942586271261761636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173453 (3 * n + 5) + A003961 (A330972 (n + 1)).toNat

end

end A287661.P14942586271261761636

/-! ## A287661.P16889175038999112959

`A003961(A055079(n+1)²)/A003961(A055079(n+1))`
-/

namespace A287661.P16889175038999112959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (A055079 (n + 1) ^ 2).toNat : ℚ) / (A003961 (A055079 (n + 1)).toNat : ℚ)

end

end A287661.P16889175038999112959

/-!
# A287663: {0->1, 1->000}-transform of the infinite Fibonacci word A003849.

The programs for A287663, the canonical program `A287663.P7313700078120150536` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287663 has offset 1).

The definition of A287663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287663.P7313700078120150536

`char[∑[Δ[floor(ϕ*n)]²]-1]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287663

/-- `char[∑[Δ[floor(ϕ*n)]²]-1]` -/
def P7313700078120150536.Spec : Prop :=
  ∀ n, (P7313700078120150536.a n : ℤ) = A287663 (n + 1)

theorem P7313700078120150536.correct : P7313700078120150536.Spec := by
  intro n
  simp only [A287663, Nat.add_sub_cancel]

end A287663

/-! ## A287663.P12226115025393084922

`A287674(a(n-1)+n)` with `a(0)=1`
-/

namespace A287663.P12226115025393084922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287674 (a (n - 1) + (n : ℤ)).toNat

end

end A287663.P12226115025393084922

namespace A287663

/-- `A287674(a(n-1)+n)` -/
def P12226115025393084922.Spec : Prop :=
  ∀ n, P12226115025393084922.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P14193662275614306553

`A287674(A286749(n+1)+n)`
-/

namespace A287663.P14193662275614306553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (A286749 (n + 1) + (n : ℤ)).toNat

end

end A287663.P14193662275614306553

namespace A287663

/-- `A287674(A286749(n+1)+n)` -/
def P14193662275614306553.Spec : Prop :=
  ∀ n, P14193662275614306553.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P17776449058562402997

`A287674(A287769(n+1)+n)`
-/

namespace A287663.P17776449058562402997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (A287769 (n + 1) + (n : ℤ)).toNat

end

end A287663.P17776449058562402997

namespace A287663

/-- `A287674(A287769(n+1)+n)` -/
def P17776449058562402997.Spec : Prop :=
  ∀ n, P17776449058562402997.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P13271450104017148693

`A287674(n+1-A221151(n))`
-/

namespace A287663.P13271450104017148693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 ((n + 1 : ℤ) - A221151 n).toNat

end

end A287663.P13271450104017148693

namespace A287663

/-- `A287674(n+1-A221151(n))` -/
def P13271450104017148693.Spec : Prop :=
  ∀ n, P13271450104017148693.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P13829576214376740261

`xor(A221151(n), A287674(n+1))`
-/

namespace A287663.P13829576214376740261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A221151 n) (A287674 (n + 1))

end

end A287663.P13829576214376740261

namespace A287663

/-- `xor(A221151(n), A287674(n+1))` -/
def P13829576214376740261.Spec : Prop :=
  ∀ n, P13829576214376740261.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P4807451975306657327

`A286749(n+1)*A287722(n+1)`
-/

namespace A287663.P4807451975306657327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286749 (n + 1) * A287722 (n + 1)

end

end A287663.P4807451975306657327

namespace A287663

/-- `A286749(n+1)*A287722(n+1)` -/
def P4807451975306657327.Spec : Prop :=
  ∀ n, P4807451975306657327.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P11878441604148545280

`A286749(n+1)*A287725(n+1)`
-/

namespace A287663.P11878441604148545280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286749 (n + 1) * A287725 (n + 1)

end

end A287663.P11878441604148545280

namespace A287663

/-- `A286749(n+1)*A287725(n+1)` -/
def P11878441604148545280.Spec : Prop :=
  ∀ n, P11878441604148545280.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P11253037641012667528

`A287674(n+1)*A287722(n+1)`
-/

namespace A287663.P11253037641012667528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (n + 1) * A287722 (n + 1)

end

end A287663.P11253037641012667528

namespace A287663

/-- `A287674(n+1)*A287722(n+1)` -/
def P11253037641012667528.Spec : Prop :=
  ∀ n, P11253037641012667528.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P6228405447866013210

`and(A187342(n+1), A287674(n+1))`
-/

namespace A287663.P6228405447866013210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187342 (n + 1)) (A287674 (n + 1))

end

end A287663.P6228405447866013210

namespace A287663

/-- `and(A187342(n+1), A287674(n+1))` -/
def P6228405447866013210.Spec : Prop :=
  ∀ n, P6228405447866013210.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P7699953337162215152

`and(A187342(n+1), A287722(n+1))`
-/

namespace A287663.P7699953337162215152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187342 (n + 1)) (A287722 (n + 1))

end

end A287663.P7699953337162215152

namespace A287663

/-- `and(A187342(n+1), A287722(n+1))` -/
def P7699953337162215152.Spec : Prop :=
  ∀ n, P7699953337162215152.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P1059627874918916172

`and(A187342(n+1), A287725(n+1))`
-/

namespace A287663.P1059627874918916172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187342 (n + 1)) (A287725 (n + 1))

end

end A287663.P1059627874918916172

namespace A287663

/-- `and(A187342(n+1), A287725(n+1))` -/
def P1059627874918916172.Spec : Prop :=
  ∀ n, P1059627874918916172.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P5734242501988834926

`A287674(n+1)*A287674(A028310(n))`
-/

namespace A287663.P5734242501988834926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 (n + 1) * A287674 (A028310 n).toNat

end

end A287663.P5734242501988834926

namespace A287663

/-- `A287674(n+1)*A287674(A028310(n))` -/
def P5734242501988834926.Spec : Prop :=
  ∀ n, P5734242501988834926.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P54921868611406719

`A286749(a(n-1)+n+1)` with `a(0)=1`
-/

namespace A287663.P54921868611406719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286749 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A287663.P54921868611406719

namespace A287663

/-- `A286749(a(n-1)+n+1)` -/
def P54921868611406719.Spec : Prop :=
  ∀ n, P54921868611406719.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P3929813109871867704

`A287722(A287769(n+2)+n)`
-/

namespace A287663.P3929813109871867704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (A287769 (n + 2) + (n : ℤ)).toNat

end

end A287663.P3929813109871867704

namespace A287663

/-- `A287722(A287769(n+2)+n)` -/
def P3929813109871867704.Spec : Prop :=
  ∀ n, P3929813109871867704.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P2466827861038266493

`A286749(A286749(n+1)+n+1)`
-/

namespace A287663.P2466827861038266493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286749 (A286749 (n + 1) + (n + 1 : ℤ)).toNat

end

end A287663.P2466827861038266493

namespace A287663

/-- `A286749(A286749(n+1)+n+1)` -/
def P2466827861038266493.Spec : Prop :=
  ∀ n, P2466827861038266493.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P1537133560544483502

`A287674(n+1-A287674(n+2))`
-/

namespace A287663.P1537133560544483502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287674 ((n + 1 : ℤ) - A287674 (n + 2)).toNat

end

end A287663.P1537133560544483502

namespace A287663

/-- `A287674(n+1-A287674(n+2))` -/
def P1537133560544483502.Spec : Prop :=
  ∀ n, P1537133560544483502.a n = A287663 (n + 1)

end A287663

/-! ## A287663.P16150533779017736281

`A287725(n+1)*A287769(n+1)*A287769(n+2)`
-/

namespace A287663.P16150533779017736281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 (n + 1) * A287769 (n + 1) * A287769 (n + 2)

end

end A287663.P16150533779017736281

namespace A287663

/-- `A287725(n+1)*A287769(n+1)*A287769(n+2)` -/
def P16150533779017736281.Spec : Prop :=
  ∀ n, P16150533779017736281.a n = A287663 (n + 1)

end A287663

/-!
# A287664: Positions of 0's in A287663; complement of A287665.

The programs for A287664, the canonical program `A287664.P15191477513936064077` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287664 has offset 1).

The definition of A287664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287664.P16522703025698966392

`comp[3*(floor(n*ϕ²)+1)-n-record[xor(3, n)]]`
-/

namespace A287664.P16522703025698966392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 1) - (n : ℤ) - (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287664.P16522703025698966392

namespace A287664

/-- `comp[3*(floor(n*ϕ²)+1)-n-record[xor(3, n)]]` -/
def P16522703025698966392.Spec : Prop :=
  ∀ n, (P16522703025698966392.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P4160238230239812885

`comp[3*A060143(n)+n]`
-/

namespace A287664.P4160238230239812885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060143 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287664.P4160238230239812885

namespace A287664

/-- `comp[3*A060143(n)+n]` -/
def P4160238230239812885.Spec : Prop :=
  ∀ n, (P4160238230239812885.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P8153598370900186724

`comp[∑[A284749(n+1)²]]`
-/

namespace A287664.P8153598370900186724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287664.P8153598370900186724

namespace A287664

/-- `comp[∑[A284749(n+1)²]]` -/
def P8153598370900186724.Spec : Prop :=
  ∀ n, (P8153598370900186724.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P121679241789671440

`A000201(∑[char[3*n]])+n+1`
-/

namespace A287664.P121679241789671440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A287664.P121679241789671440

namespace A287664

/-- `A000201(∑[char[3*n]])+n+1` -/
def P121679241789671440.Spec : Prop :=
  ∀ n, P121679241789671440.a n = A287664 (n + 1)

end A287664

/-! ## A287664.P11139369100553889500

`comp[3*(lt[A329130(n), n+1]-(n+1))+n+3]`
-/

namespace A287664.P11139369100553889500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - (n + 1 : ℤ)) + (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287664.P11139369100553889500

namespace A287664

/-- `comp[3*(lt[A329130(n), n+1]-(n+1))+n+3]` -/
def P11139369100553889500.Spec : Prop :=
  ∀ n, (P11139369100553889500.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P15191477513936064077

`A004956(A002264(n)+1)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287664

/-- `A004956(A002264(n)+1)+n` -/
def P15191477513936064077.Spec : Prop :=
  ∀ n, P15191477513936064077.a n = A287664 (n + 1)

theorem P15191477513936064077.correct : P15191477513936064077.Spec := by
  intro n
  simp only [A287664, Nat.add_sub_cancel]

end A287664

/-! ## A287664.P6169911829697646675

`A000201(A008620(n))+1+n`
-/

namespace A287664.P6169911829697646675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A008620 n).toNat + 1 + (n : ℤ)

end

end A287664.P6169911829697646675

namespace A287664

/-- `A000201(A008620(n))+1+n` -/
def P6169911829697646675.Spec : Prop :=
  ∀ n, P6169911829697646675.a n = A287664 (n + 1)

end A287664

/-! ## A287664.P18228891537019488182

`A026351(A002264(n)+1)+n`
-/

namespace A287664.P18228891537019488182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A002264 n + 1).toNat + (n : ℤ)

end

end A287664.P18228891537019488182

namespace A287664

/-- `A026351(A002264(n)+1)+n` -/
def P18228891537019488182.Spec : Prop :=
  ∀ n, P18228891537019488182.a n = A287664 (n + 1)

end A287664

/-! ## A287664.P11979726990571710626

`A000201(A002264(n)+1)+1+n`
-/

namespace A287664.P11979726990571710626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A002264 n + 1).toNat + 1 + (n : ℤ)

end

end A287664.P11979726990571710626

namespace A287664

/-- `A000201(A002264(n)+1)+1+n` -/
def P11979726990571710626.Spec : Prop :=
  ∀ n, P11979726990571710626.a n = A287664 (n + 1)

end A287664

/-! ## A287664.P7965249437007713130

`∪[A286750(n+1), A287675(n+1)]`
-/

namespace A287664.P7965249437007713130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287664.P7965249437007713130

namespace A287664

/-- `∪[A286750(n+1), A287675(n+1)]` -/
def P7965249437007713130.Spec : Prop :=
  ∀ n, (P7965249437007713130.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P9588570975780561041

`∪[A286750(n+1), A287723(n+1)]`
-/

namespace A287664.P9588570975780561041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287664.P9588570975780561041

namespace A287664

/-- `∪[A286750(n+1), A287723(n+1)]` -/
def P9588570975780561041.Spec : Prop :=
  ∀ n, (P9588570975780561041.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P13914514914116320591

`∪[A286750(n+1), A287726(n+1)]`
-/

namespace A287664.P13914514914116320591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287664.P13914514914116320591

namespace A287664

/-- `∪[A286750(n+1), A287726(n+1)]` -/
def P13914514914116320591.Spec : Prop :=
  ∀ n, (P13914514914116320591.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P10401768976809426535

`∪[A287675(n+1), A287723(n+1)]`
-/

namespace A287664.P10401768976809426535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287664.P10401768976809426535

namespace A287664

/-- `∪[A287675(n+1), A287723(n+1)]` -/
def P10401768976809426535.Spec : Prop :=
  ∀ n, (P10401768976809426535.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P15774158586787497147

`∪[A286751(n+1)+2, A287675(n+1)]`
-/

namespace A287664.P15774158586787497147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287664.P15774158586787497147

namespace A287664

/-- `∪[A286751(n+1)+2, A287675(n+1)]` -/
def P15774158586787497147.Spec : Prop :=
  ∀ n, (P15774158586787497147.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P7107580845760813073

`∪[A286750(n+2), A287676(n+2)-2]`
-/

namespace A287664.P7107580845760813073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287664.P7107580845760813073

namespace A287664

/-- `∪[A286750(n+2), A287676(n+2)-2]` -/
def P7107580845760813073.Spec : Prop :=
  ∀ n, (P7107580845760813073.a n : ℤ) = A287664 (n + 1)

end A287664

/-! ## A287664.P3339107087096501321

`∑[A284394(n+2)+1]`
-/

namespace A287664.P3339107087096501321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284394 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287664.P3339107087096501321

namespace A287664

/-- `∑[A284394(n+2)+1]` -/
def P3339107087096501321.Spec : Prop :=
  ∀ n, P3339107087096501321.a n = A287664 (n + 1)

end A287664

/-!
# A287665: Positions of 1's in A287663; complement of A287664.

The programs for A287665, the canonical program `A287665.P1654031477920743580` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287665 has offset 1).

The definition of A287665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A287665.P1654031477920743580

`3*floor((n+1)*ϕ)-2*(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A287665

/-- `3*floor((n+1)*ϕ)-2*(n+1)` -/
def P1654031477920743580.Spec : Prop :=
  ∀ n, P1654031477920743580.a n = A287665 (n + 1)

theorem P1654031477920743580.correct : P1654031477920743580.Spec := by
  intro n
  simp only [A287665, Nat.add_sub_cancel]

end A287665

/-! ## A287665.P10437577997157526700

`A035337(n)%A016825(n)`
-/

namespace A287665.P10437577997157526700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n) (A016825 n)

end

end A287665.P10437577997157526700

namespace A287665

/-- `A035337(n)%A016825(n)` -/
def P10437577997157526700.Spec : Prop :=
  ∀ n, P10437577997157526700.a n = A287665 (n + 1)

end A287665

/-!
# A287666: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-3 is member of a block >= b-1.

The programs for A287666, there is no canonical definition to state claims against.
-/

/-! ## A287666.P5031654114020802810

`A287641(∑[n+3]+n+3)`
-/

namespace A287666.P5031654114020802810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A287666.P5031654114020802810

/-! ## A287666.P3787677766960183433

`A287641(A046691(n+2))+A008683(8*n+4)`
-/

namespace A287666.P3787677766960183433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A046691 (n + 2)).toNat + A008683 (8 * n + 4)

end

end A287666.P3787677766960183433

/-! ## A287666.P10204138198625242441

`A007318(C(n+2, 2))*A287641(A046691(n+2))`
-/

namespace A287666.P10204138198625242441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A287641 (A046691 (n + 2)).toNat

end

end A287666.P10204138198625242441

/-! ## A287666.P12648130923620159019

`A007318(A001222(2*n+1))*A287641(A046691(n+2))`
-/

namespace A287666.P12648130923620159019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (2 * n + 1)).toNat * A287641 (A046691 (n + 2)).toNat

end

end A287666.P12648130923620159019

/-! ## A287666.P2125562054622673353

`A014963(10*A000040(n+1))*A287641(A046691(n+2))`
-/

namespace A287666.P2125562054622673353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * A000040 (n + 1)).toNat * A287641 (A046691 (n + 2)).toNat

end

end A287666.P2125562054622673353

/-!
# A287667: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-4 is member of a block >= b-1.

The programs for A287667, there is no canonical definition to state claims against.
-/

/-! ## A287667.P499477064685181918

`A287641(A052905(n+2))`
-/

namespace A287667.P499477064685181918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A052905 (n + 2)).toNat

end

end A287667.P499477064685181918

/-! ## A287667.P16427537603141424116

`A287641(eq[4, A025581(n)])`
-/

namespace A287667.P16427537603141424116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287667.P16427537603141424116

/-! ## A287667.P14789951585478238766

`A287641(A034856(n+4)-3)`
-/

namespace A287667.P14789951585478238766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A034856 (n + 4) - 3).toNat

end

end A287667.P14789951585478238766

/-! ## A287667.P17421718011086352735

`A287641(A000096(n+4)-4)`
-/

namespace A287667.P17421718011086352735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000096 (n + 4) - 4).toNat

end

end A287667.P17421718011086352735

/-! ## A287667.P3444219422171924400

`A287641(A000217(n+5)-5)`
-/

namespace A287667.P3444219422171924400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000217 (n + 5) - 5).toNat

end

end A287667.P3444219422171924400

/-!
# A287668: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-5 is member of a block >= b-1.

The programs for A287668, there is no canonical definition to state claims against.
-/

/-! ## A287668.P18008532276682951721

`A287641(A055999(n+3))`
-/

namespace A287668.P18008532276682951721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A055999 (n + 3)).toNat

end

end A287668.P18008532276682951721

/-! ## A287668.P11710375087045462987

`A287641(A052905(n+3)-1)`
-/

namespace A287668.P11710375087045462987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A052905 (n + 3) - 1).toNat

end

end A287668.P11710375087045462987

/-! ## A287668.P8897086986665979957

`A287641(A000217(n+6)-6)`
-/

namespace A287668.P8897086986665979957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000217 (n + 6) - 6).toNat

end

end A287668.P8897086986665979957

/-! ## A287668.P4249720491442699973

`A287641(eq[6, A004736(n+1)])`
-/

namespace A287668.P4249720491442699973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287668.P4249720491442699973

/-! ## A287668.P4975945450141325774

`A287641(A000096(n+4)+n+1)`
-/

namespace A287668.P4975945450141325774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A287668.P4975945450141325774

/-!
# A287669: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-6 is member of a block >= b-1.

The programs for A287669, there is no canonical definition to state claims against.
-/

/-! ## A287669.P13338445182318027477

`A287641(eq[6, A025581(n)])`
-/

namespace A287669.P13338445182318027477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287669.P13338445182318027477

/-! ## A287669.P11928171536218094697

`A287641(A034856(n+6)-5)`
-/

namespace A287669.P11928171536218094697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A034856 (n + 6) - 5).toNat

end

end A287669.P11928171536218094697

/-! ## A287669.P2871318043563580560

`A287641(A000217(n+7)-7)`
-/

namespace A287669.P2871318043563580560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000217 (n + 7) - 7).toNat

end

end A287669.P2871318043563580560

/-! ## A287669.P15999280748155368941

`A287641(A000124(n+7)-8)`
-/

namespace A287669.P15999280748155368941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000124 (n + 7) - 8).toNat

end

end A287669.P15999280748155368941

/-! ## A287669.P14054792656115158977

`A287641(eq[7, A004736(n+1)])`
-/

namespace A287669.P14054792656115158977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287669.P14054792656115158977

/-!
# A287670: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-7 is member of a block >= b-1.

The programs for A287670, there is no canonical definition to state claims against.
-/

/-! ## A287670.P16447685183278885994

`A287641(eq[7, A025581(n)])`
-/

namespace A287670.P16447685183278885994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287670.P16447685183278885994

/-! ## A287670.P6512354131566790875

`A287641(eq[8, A193739(n)])`
-/

namespace A287670.P6512354131566790875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287670.P6512354131566790875

/-! ## A287670.P10781014853829239233

`A287641(A000217(n+8)-8)`
-/

namespace A287670.P10781014853829239233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000217 (n + 8) - 8).toNat

end

end A287670.P10781014853829239233

/-! ## A287670.P14254167006837805640

`A287641(eq[8, A004736(n+1)])`
-/

namespace A287670.P14254167006837805640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287670.P14254167006837805640

/-! ## A287670.P2894618076792965589

`A287641(A000124(n+7)+n-1)`
-/

namespace A287670.P2894618076792965589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A287670.P2894618076792965589

/-!
# A287671: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-8 is member of a block >= b-1.

The programs for A287671, there is no canonical definition to state claims against.
-/

/-! ## A287671.P2546924593881468277

`A287641(eq[8, A025581(n)])`
-/

namespace A287671.P2546924593881468277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287671.P2546924593881468277

/-! ## A287671.P3953510050634803839

`A287641(A000217(n+9)-9)`
-/

namespace A287671.P3953510050634803839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000217 (n + 9) - 9).toNat

end

end A287671.P3953510050634803839

/-! ## A287671.P16886502209971368247

`A287641(eq[9, A004736(n+1)])`
-/

namespace A287671.P16886502209971368247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287671.P16886502209971368247

/-! ## A287671.P2518618776160200693

`A287641(A000096(n+7)+n+1)`
-/

namespace A287671.P2518618776160200693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A287671.P2518618776160200693

/-! ## A287671.P7251838743053940559

`A287641(A056000(n+6)-(n+9))`
-/

namespace A287671.P7251838743053940559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A056000 (n + 6) - (n + 9 : ℤ)).toNat

end

end A287671.P7251838743053940559

/-!
# A287672: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-9 is member of a block >= b-1.

The programs for A287672, there is no canonical definition to state claims against.
-/

/-! ## A287672.P4889777827769380104

`A287641(A056000(n+6))`
-/

namespace A287672.P4889777827769380104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A056000 (n + 6)).toNat

end

end A287672.P4889777827769380104

/-! ## A287672.P12003381642093677999

`A287641(eq[8, A116598(n)])`
-/

namespace A287672.P12003381642093677999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287672.P12003381642093677999

/-! ## A287672.P813495224264201607

`A287641(eq[9, A025581(n)])`
-/

namespace A287672.P813495224264201607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287672.P813495224264201607

/-! ## A287672.P13113692501676123692

`A287641(eq[10, A193739(n)])`
-/

namespace A287672.P13113692501676123692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287672.P13113692501676123692

/-! ## A287672.P16619437782467615087

`A287641(eq[19, A099375(n)])`
-/

namespace A287672.P16619437782467615087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287672.P16619437782467615087

/-!
# A287673: Number of set partitions of [n] such that j is member of block b only if b = 1 or at least one of j-1, ..., j-10 is member of a block >= b-1.

The programs for A287673, there is no canonical definition to state claims against.
-/

/-! ## A287673.P17057923891160808778

`A287641(eq[10, A025581(n)])`
-/

namespace A287673.P17057923891160808778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A287673.P17057923891160808778

/-! ## A287673.P9948544485261670149

`A287641(A155212(n+7)-3)`
-/

namespace A287673.P9948544485261670149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A155212 (n + 7) - 3).toNat

end

end A287673.P9948544485261670149

/-! ## A287673.P17534804734364744048

`A287641(A000217(n+11)-11)`
-/

namespace A287673.P17534804734364744048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A000217 (n + 11) - 11).toNat

end

end A287673.P17534804734364744048

/-! ## A287673.P16703035979809659877

`A287641(A028310(n)+A000217(n+10))`
-/

namespace A287673.P16703035979809659877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (A028310 n + A000217 (n + 10)).toNat

end

end A287673.P16703035979809659877

/-! ## A287673.P11191485196069907027

`A104725(2^n)-char[13]`
-/

namespace A287673.P11191485196069907027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (2 ^ n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A287673.P11191485196069907027

/-!
# A287674: {0->1, 1->001}-transform of the infinite Fibonacci word A003849.

The programs for A287674, the canonical program `A287674.P4910867926422161195` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287674 has offset 1).

The definition of A287674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287674.P8264214234880723761

`char[(4*n)%∑[2*Δ[floor(n/ϕ)]+1]]`
-/

namespace A287674.P8264214234880723761
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f3 (n + 1) - f3 n) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287674.P8264214234880723761

namespace A287674

/-- `char[(4*n)%∑[2*Δ[floor(n/ϕ)]+1]]` -/
def P8264214234880723761.Spec : Prop :=
  ∀ n, (P8264214234880723761.a n : ℤ) = A287674 (n + 1)

end A287674

/-! ## A287674.P11342213183639797332

`char[A286751(n+1)-2]`
-/

namespace A287674.P11342213183639797332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286751 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A287674.P11342213183639797332

namespace A287674

/-- `char[A286751(n+1)-2]` -/
def P11342213183639797332.Spec : Prop :=
  ∀ n, (P11342213183639797332.a n : ℤ) = A287674 (n + 1)

end A287674

/-! ## A287674.P4489938642616394106

`A287722(a(n-1)+n)` with `a(0)=1`
-/

namespace A287674.P4489938642616394106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287722 (a (n - 1) + (n : ℤ)).toNat

end

end A287674.P4489938642616394106

namespace A287674

/-- `A287722(a(n-1)+n)` -/
def P4489938642616394106.Spec : Prop :=
  ∀ n, P4489938642616394106.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P4889545036349357517

`A287725(a(n-1)+n)` with `a(0)=1`
-/

namespace A287674.P4889545036349357517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A287725 (a (n - 1) + (n : ℤ)).toNat

end

end A287674.P4889545036349357517

namespace A287674

/-- `A287725(a(n-1)+n)` -/
def P4889545036349357517.Spec : Prop :=
  ∀ n, P4889545036349357517.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P4910867926422161195

`A287663(n+1)+A221151(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287674

/-- `A287663(n+1)+A221151(n)` -/
def P4910867926422161195.Spec : Prop :=
  ∀ n, P4910867926422161195.a n = A287674 (n + 1)

theorem P4910867926422161195.correct : P4910867926422161195.Spec := by
  intro n
  simp only [A287674, Nat.add_sub_cancel]

end A287674

/-! ## A287674.P9473600446026764408

`A287722(A286749(n+1)+n)`
-/

namespace A287674.P9473600446026764408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287722 (A286749 (n + 1) + (n : ℤ)).toNat

end

end A287674.P9473600446026764408

namespace A287674

/-- `A287722(A286749(n+1)+n)` -/
def P9473600446026764408.Spec : Prop :=
  ∀ n, P9473600446026764408.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P7504081603038580993

`A287725(A286749(n+1)+n)`
-/

namespace A287674.P7504081603038580993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 (A286749 (n + 1) + (n : ℤ)).toNat

end

end A287674.P7504081603038580993

namespace A287674

/-- `A287725(A286749(n+1)+n)` -/
def P7504081603038580993.Spec : Prop :=
  ∀ n, P7504081603038580993.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P10134628058989985780

`A286749(n+2)`
-/

namespace A287674.P10134628058989985780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286749 (n + 2)

end

end A287674.P10134628058989985780

namespace A287674

/-- `A286749(n+2)` -/
def P10134628058989985780.Spec : Prop :=
  ∀ n, P10134628058989985780.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P6863504906503684603

`A287725(A287769(n+2)+n)`
-/

namespace A287674.P6863504906503684603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 (A287769 (n + 2) + (n : ℤ)).toNat

end

end A287674.P6863504906503684603

namespace A287674

/-- `A287725(A287769(n+2)+n)` -/
def P6863504906503684603.Spec : Prop :=
  ∀ n, P6863504906503684603.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P10040363272057229912

`A287725(n+1-A221151(n+1))`
-/

namespace A287674.P10040363272057229912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287725 ((n + 1 : ℤ) - A221151 (n + 1)).toNat

end

end A287674.P10040363272057229912

namespace A287674

/-- `A287725(n+1-A221151(n+1))` -/
def P10040363272057229912.Spec : Prop :=
  ∀ n, P10040363272057229912.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P4828767453396508435

`A287663(A287663(n+2)+n+1)`
-/

namespace A287674.P4828767453396508435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (A287663 (n + 2) + (n + 1 : ℤ)).toNat

end

end A287674.P4828767453396508435

namespace A287674

/-- `A287663(A287663(n+2)+n+1)` -/
def P4828767453396508435.Spec : Prop :=
  ∀ n, P4828767453396508435.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P12484228056898600966

`A287769(A221151(n+2)+n+2)`
-/

namespace A287674.P12484228056898600966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A221151 (n + 2) + (n + 2 : ℤ)).toNat

end

end A287674.P12484228056898600966

namespace A287674

/-- `A287769(A221151(n+2)+n+2)` -/
def P12484228056898600966.Spec : Prop :=
  ∀ n, P12484228056898600966.a n = A287674 (n + 1)

end A287674

/-! ## A287674.P15726360820105024600

`A287769(A287769(n+2)+n+2)`
-/

namespace A287674.P15726360820105024600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287769 (A287769 (n + 2) + (n + 2 : ℤ)).toNat

end

end A287674.P15726360820105024600

namespace A287674

/-- `A287769(A287769(n+2)+n+2)` -/
def P15726360820105024600.Spec : Prop :=
  ∀ n, P15726360820105024600.a n = A287674 (n + 1)

end A287674

/-!
# A287675: Positions of 0 in A287674; complement of A287676.

The programs for A287675, the canonical program `A287675.P5352225782856583721` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287675 has offset 1).

The definition of A287675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287675.P13876228710139721638

`floor((floor(n/2)+1)*ϕ²)+n`
-/

namespace A287675.P13876228710139721638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ + 1 : ℝ) * Real.goldenRatio ^ 2⌋ + (n : ℤ)

end

end A287675.P13876228710139721638

namespace A287675

/-- `floor((floor(n/2)+1)*ϕ²)+n` -/
def P13876228710139721638.Spec : Prop :=
  ∀ n, P13876228710139721638.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P12871706192151768173

`comp[(7*n+3)%(floor(n*ϕ²)+2)-2]`
-/

namespace A287675.P12871706192151768173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * n + 3 : ℤ) (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A287675.P12871706192151768173

namespace A287675

/-- `comp[(7*n+3)%(floor(n*ϕ²)+2)-2]` -/
def P12871706192151768173.Spec : Prop :=
  ∀ n, (P12871706192151768173.a n : ℤ) = A287675 (n + 1)

end A287675

/-! ## A287675.P17115591517305259167

`abs(1-A286750(n+1))`
-/

namespace A287675.P17115591517305259167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A286750 (n + 1)|

end

end A287675.P17115591517305259167

namespace A287675

/-- `abs(1-A286750(n+1))` -/
def P17115591517305259167.Spec : Prop :=
  ∀ n, P17115591517305259167.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P5352225782856583721

`floor(A287775(n+1)+n/2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A287675

/-- `floor(A287775(n+1)+n/2)` -/
def P5352225782856583721.Spec : Prop :=
  ∀ n, P5352225782856583721.a n = A287675 (n + 1)

theorem P5352225782856583721.correct : P5352225782856583721.Spec := by
  intro n
  simp only [A287675, Nat.add_sub_cancel]

end A287675

/-! ## A287675.P12557579234734830427

`A000027(A286750(n+1)-1)`
-/

namespace A287675.P12557579234734830427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A286750 (n + 1) - 1).toNat

end

end A287675.P12557579234734830427

namespace A287675

/-- `A000027(A286750(n+1)-1)` -/
def P12557579234734830427.Spec : Prop :=
  ∀ n, P12557579234734830427.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P9968898573018121146

`∪[A287726(n+1)+1, A287726(n+1)]`
-/

namespace A287675.P9968898573018121146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287675.P9968898573018121146

namespace A287675

/-- `∪[A287726(n+1)+1, A287726(n+1)]` -/
def P9968898573018121146.Spec : Prop :=
  ∀ n, (P9968898573018121146.a n : ℤ) = A287675 (n + 1)

end A287675

/-! ## A287675.P1283331610399312244

`∪[A286750(2*n+1), A287723(2*n+1)]`
-/

namespace A287675.P1283331610399312244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287675.P1283331610399312244

namespace A287675

/-- `∪[A286750(2*n+1), A287723(2*n+1)]` -/
def P1283331610399312244.Spec : Prop :=
  ∀ n, (P1283331610399312244.a n : ℤ) = A287675 (n + 1)

end A287675

/-! ## A287675.P10427594463372209634

`eq[0, A103344(n)]`
-/

namespace A287675.P10427594463372209634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A287675.P10427594463372209634

namespace A287675

/-- `eq[0, A103344(n)]` -/
def P10427594463372209634.Spec : Prop :=
  ∀ n, (P10427594463372209634.a n : ℤ) = A287675 (n + 1)

end A287675

/-! ## A287675.P16053172481228507567

`A287664(A001651(n+1))`
-/

namespace A287675.P16053172481228507567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A001651 (n + 1)).toNat

end

end A287675.P16053172481228507567

namespace A287675

/-- `A287664(A001651(n+1))` -/
def P16053172481228507567.Spec : Prop :=
  ∀ n, P16053172481228507567.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P479465749812152692

`A287664(A032766(n)+1)`
-/

namespace A287675.P479465749812152692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A032766 n + 1).toNat

end

end A287675.P479465749812152692

namespace A287675

/-- `A287664(A032766(n)+1)` -/
def P479465749812152692.Spec : Prop :=
  ∀ n, P479465749812152692.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P3149322638822476482

`A287664(A007494(n+1)-1)`
-/

namespace A287675.P3149322638822476482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A007494 (n + 1) - 1).toNat

end

end A287675.P3149322638822476482

namespace A287675

/-- `A287664(A007494(n+1)-1)` -/
def P3149322638822476482.Spec : Prop :=
  ∀ n, P3149322638822476482.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P1102464365659236143

`A287664(A294732(n+3)-1)`
-/

namespace A287675.P1102464365659236143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A294732 (n + 3) - 1).toNat

end

end A287675.P1102464365659236143

namespace A287675

/-- `A287664(A294732(n+3)-1)` -/
def P1102464365659236143.Spec : Prop :=
  ∀ n, P1102464365659236143.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P2733329009543640628

`∩[A287664(n+1), A287770(n+1)]`
-/

namespace A287675.P2733329009543640628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287675.P2733329009543640628

namespace A287675

/-- `∩[A287664(n+1), A287770(n+1)]` -/
def P2733329009543640628.Spec : Prop :=
  ∀ n, (P2733329009543640628.a n : ℤ) = A287675 (n + 1)

end A287675

/-! ## A287675.P3472844113294149858

`filter[A287664(n+1), A287769(#)]`
-/

namespace A287675.P3472844113294149858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A287769 (f1 j).toNat = 1) n)

end

end A287675.P3472844113294149858

namespace A287675

/-- `filter[A287664(n+1), A287769(#)]` -/
def P3472844113294149858.Spec : Prop :=
  ∀ n, P3472844113294149858.a n = A287675 (n + 1)

end A287675

/-! ## A287675.P6238114482171907431

`A023443(A286750(n+1))`
-/

namespace A287675.P6238114482171907431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A286750 (n + 1)).toNat

end

end A287675.P6238114482171907431

namespace A287675

/-- `A023443(A286750(n+1))` -/
def P6238114482171907431.Spec : Prop :=
  ∀ n, P6238114482171907431.a n = A287675 (n + 1)

end A287675

/-!
# A287676: Positions of 1 in A287674; complement of A287675.

The programs for A287676, the canonical program `A287676.P3792131562201660675` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A287676 has offset 1).

The definition of A287676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A287676.P7073295749189955866

`∑[gcd(3, Δ[ceil((n+1)/ϕ)])]`
-/

namespace A287676.P7073295749189955866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P7073295749189955866

namespace A287676

/-- `∑[gcd(3, Δ[ceil((n+1)/ϕ)])]` -/
def P7073295749189955866.Spec : Prop :=
  ∀ n, (P7073295749189955866.a n : ℤ) = A287676 (n + 1)

end A287676

/-! ## A287676.P4165278996029270303

`∑[or(1, 2-Δ[floor((n+1)/ϕ)])]`
-/

namespace A287676.P4165278996029270303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P4165278996029270303

namespace A287676

/-- `∑[or(1, 2-Δ[floor((n+1)/ϕ)])]` -/
def P4165278996029270303.Spec : Prop :=
  ∀ n, P4165278996029270303.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P17222816677016407421

`∑[C(3, Δ[floor(ϕ*(n+1))]%2)]`
-/

namespace A287676.P17222816677016407421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.tmod (f2 (n + 1) - f2 n) 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P17222816677016407421

namespace A287676

/-- `∑[C(3, Δ[floor(ϕ*(n+1))]%2)]` -/
def P17222816677016407421.Spec : Prop :=
  ∀ n, (P17222816677016407421.a n : ℤ) = A287676 (n + 1)

end A287676

/-! ## A287676.P7362729476801032861

`2*floor((n+2)/ϕ²)+n+1`
-/

namespace A287676.P7362729476801032861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 2 : ℝ) / Real.goldenRatio ^ 2⌋ + (n + 1 : ℤ)

end

end A287676.P7362729476801032861

namespace A287676

/-- `2*floor((n+2)/ϕ²)+n+1` -/
def P7362729476801032861.Spec : Prop :=
  ∀ n, P7362729476801032861.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P1521645287739167973

`∑[C(3, 2-Δ[floor(ϕ*(n+1))]!)]`
-/

namespace A287676.P1521645287739167973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (2 - (Nat.factorial (f2 (n + 1) - f2 n).toNat : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P1521645287739167973

namespace A287676

/-- `∑[C(3, 2-Δ[floor(ϕ*(n+1))]!)]` -/
def P1521645287739167973.Spec : Prop :=
  ∀ n, (P1521645287739167973.a n : ℤ) = A287676 (n + 1)

end A287676

/-! ## A287676.P3792131562201660675

`∑[2*A003849(n)+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A287676

/-- `∑[2*A003849(n)+1]` -/
def P3792131562201660675.Spec : Prop :=
  ∀ n, P3792131562201660675.a n = A287676 (n + 1)

theorem P3792131562201660675.correct : P3792131562201660675.Spec := by
  intro n
  simp only [A287676, Nat.add_sub_cancel]

end A287676

/-! ## A287676.P10168551932336444521

`∑[4-A050141(n+1)]`
-/

namespace A287676.P10168551932336444521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A050141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P10168551932336444521

namespace A287676

/-- `∑[4-A050141(n+1)]` -/
def P10168551932336444521.Spec : Prop :=
  ∀ n, P10168551932336444521.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P5480519159899125824

`∑[3-2*A005614(n)]`
-/

namespace A287676.P5480519159899125824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P5480519159899125824

namespace A287676

/-- `∑[3-2*A005614(n)]` -/
def P5480519159899125824.Spec : Prop :=
  ∀ n, P5480519159899125824.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P7154795171812897369

`∑[6-A194584(n+1)]`
-/

namespace A287676.P7154795171812897369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A194584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P7154795171812897369

namespace A287676

/-- `∑[6-A194584(n+1)]` -/
def P7154795171812897369.Spec : Prop :=
  ∀ n, P7154795171812897369.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P14918786075639279556

`∑[A000203(2-Δ[floor((n+1)/ϕ)])]`
-/

namespace A287676.P14918786075639279556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P14918786075639279556

namespace A287676

/-- `∑[A000203(2-Δ[floor((n+1)/ϕ)])]` -/
def P14918786075639279556.Spec : Prop :=
  ∀ n, P14918786075639279556.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P15944657550563186049

`∑[A003849(n)+A003842(n)]`
-/

namespace A287676.P15944657550563186049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P15944657550563186049

namespace A287676

/-- `∑[A003849(n)+A003842(n)]` -/
def P15944657550563186049.Spec : Prop :=
  ∀ n, P15944657550563186049.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P12900490989654918876

`∑[A014677(∑[A014677(n)])+2]`
-/

namespace A287676.P12900490989654918876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P12900490989654918876

namespace A287676

/-- `∑[A014677(∑[A014677(n)])+2]` -/
def P12900490989654918876.Spec : Prop :=
  ∀ n, P12900490989654918876.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P12224160898570282562

`∑[A000201(2-Δ[A005206(n)])]`
-/

namespace A287676.P12224160898570282562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P12224160898570282562

namespace A287676

/-- `∑[A000201(2-Δ[A005206(n)])]` -/
def P12224160898570282562.Spec : Prop :=
  ∀ n, P12224160898570282562.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P2494282407875388277

`∑[A133512(2-Δ[A005206(n)])]`
-/

namespace A287676.P2494282407875388277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133512 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P2494282407875388277

namespace A287676

/-- `∑[A133512(2-Δ[A005206(n)])]` -/
def P2494282407875388277.Spec : Prop :=
  ∀ n, P2494282407875388277.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P12803919613769638071

`∑[A344158(2-Δ[A005206(n)])]`
-/

namespace A287676.P12803919613769638071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344158 (2 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P12803919613769638071

namespace A287676

/-- `∑[A344158(2-Δ[A005206(n)])]` -/
def P12803919613769638071.Spec : Prop :=
  ∀ n, P12803919613769638071.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P15283349313926028356

`∑[A003842(n)+1-A005614(n)]`
-/

namespace A287676.P15283349313926028356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n + (1 - A005614 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P15283349313926028356

namespace A287676

/-- `∑[A003842(n)+1-A005614(n)]` -/
def P15283349313926028356.Spec : Prop :=
  ∀ n, P15283349313926028356.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P1865272572669268225

`∑[A003849(n)+2-A005614(n)]`
-/

namespace A287676.P1865272572669268225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + (2 - A005614 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P1865272572669268225

namespace A287676

/-- `∑[A003849(n)+2-A005614(n)]` -/
def P1865272572669268225.Spec : Prop :=
  ∀ n, P1865272572669268225.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P3122478209179759779

`∑[A000032(A000032(Δ[floor((n+1)/ϕ)]))]`
-/

namespace A287676.P3122478209179759779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000032 (f2 (n + 1) - f2 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P3122478209179759779

namespace A287676

/-- `∑[A000032(A000032(Δ[floor((n+1)/ϕ)]))]` -/
def P3122478209179759779.Spec : Prop :=
  ∀ n, P3122478209179759779.a n = A287676 (n + 1)

end A287676

/-! ## A287676.P4079165441356861207

`∪[A286750(n+1)+1, A287665(n+1)]`
-/

namespace A287676.P4079165441356861207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286750 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A287676.P4079165441356861207

namespace A287676

/-- `∪[A286750(n+1)+1, A287665(n+1)]` -/
def P4079165441356861207.Spec : Prop :=
  ∀ n, (P4079165441356861207.a n : ℤ) = A287676 (n + 1)

end A287676

/-!
# A287677: 

The programs for A287677, there is no canonical definition to state claims against.
-/

/-! ## A287677.P1235227695826498859

`A000032(∏[or(n, A000005(2*n+1))])`
-/

namespace A287677.P1235227695826498859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A000005 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287677.P1235227695826498859

/-!
# A287679: Practical Pell numbers.

The programs for A287679, there is no canonical definition to state claims against.
-/

/-! ## A287679.P5673358298221403265

`A000129(A023141(2^n))`
-/

namespace A287679.P5673358298221403265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A023141 (2 ^ n)).toNat

end

end A287679.P5673358298221403265

/-! ## A287679.P10860706167015904201

`A000129(∑[A060594(2^n)])`
-/

namespace A287679.P10860706167015904201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A287679.P10860706167015904201

/-! ## A287679.P11013855552710146923

`A000129(∪[A350794(2*n+1), A063200(3*n+1)])`
-/

namespace A287679.P11013855552710146923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350794 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A287679.P11013855552710146923

/-! ## A287679.P12764116315055660321

`A000129(∪[A067499(n+1), A008574(n)])`
-/

namespace A287679.P12764116315055660321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A287679.P12764116315055660321

/-! ## A287679.P16207564611003739610

`A000129(∪[A042948(2*(n+1)), A268311(n+1)])`
-/

namespace A287679.P16207564611003739610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268311 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A287679.P16207564611003739610

/-!
# A287681: Twin practical numbers: numbers k such that both k and k+2 are practical numbers.

The programs for A287681, there is no canonical definition to state claims against.
-/

/-! ## A287681.P849610207039549505

`∩[A005153(n+1)-2, A005153(n+1)]`
-/

namespace A287681.P849610207039549505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287681.P849610207039549505

/-! ## A287681.P5607009308237917788

`A005153(eq[2, A005153(n+2)-A005153(n+1)]+1)`
-/

namespace A287681.P5607009308237917788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 2) - A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A287681.P5607009308237917788

/-! ## A287681.P8693173724497253453

`record[A327832(A005153(n+3)-2)]`
-/

namespace A287681.P8693173724497253453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A005153 (n + 3) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287681.P8693173724497253453

/-! ## A287681.P8462738848939173089

`record[A327832(A327832(n+2)+2)-2]`
-/

namespace A287681.P8462738848939173089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (A327832 (n + 2) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287681.P8462738848939173089

/-! ## A287681.P5550351381806256519

`record[A327832(n+2)%A030057(n+4)]`
-/

namespace A287681.P5550351381806256519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327832 (n + 2)) (A030057 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287681.P5550351381806256519

/-!
# A287682: Triples of practical numbers: numbers n such that n-2, n, n+2 are all practical numbers.

The programs for A287682, there is no canonical definition to state claims against.
-/

/-! ## A287682.P8603782592806526045

`∩[A287681(n+1)+2, A287681(n+1)]`
-/

namespace A287682.P8603782592806526045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287681 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A287682.P8603782592806526045

/-!
# A287683: 5-tuples of practical numbers: numbers n such that n-6, n-2, n, n+2, n+6 are all practical numbers.

The programs for A287683, there is no canonical definition to state claims against.
-/

/-! ## A287683.P7600559961124570159

`A287682(A087950(n+3)^A347811(n))`
-/

namespace A287683.P7600559961124570159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (SequenceMachineLib.roundAway ((A087950 (n + 3) : ℚ) ^ (A347811 n : ℤ))).toNat

end

end A287683.P7600559961124570159

/-! ## A287683.P9586952576280899688

`A287682(A113929(n+1)+2)`
-/

namespace A287683.P9586952576280899688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287682 (A113929 (n + 1) + 2).toNat

end

end A287683.P9586952576280899688

/-!
# A287685: Numbers k such that 89*10^k - 9 is prime.

The programs for A287685, there is no canonical definition to state claims against.
-/

/-! ## A287685.P13983810407254337861

`A248756(A248716(n))+A248741(2*n+1)`
-/

namespace A287685.P13983810407254337861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248756 (A248716 n).toNat + A248741 (2 * n + 1)

end

end A287685.P13983810407254337861

/-! ## A287685.P6710414524302592737

`A339162(2*(n+2))-A000035(A023998(n))`
-/

namespace A287685.P6710414524302592737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339162 (2 * (n + 2)) - A000035 (A023998 n).toNat

end

end A287685.P6710414524302592737

/-!
# A287689: Number of (non-null) connected induced subgraphs in the n-triangular graph.

The programs for A287689, there is no canonical definition to state claims against.
-/

/-! ## A287689.P4832913550493316038

`A006125(n+2)-A327199(n+2)`
-/

namespace A287689.P4832913550493316038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 (n + 2) - A327199 (n + 2)

end

end A287689.P4832913550493316038

/-! ## A287689.P16435372779844949177

`A327078(n+2)-1`
-/

namespace A287689.P16435372779844949177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327078 (n + 2) - 1

end

end A287689.P16435372779844949177

/-! ## A287689.P1736088089397110469

`A167939(n+2)-(n+2)`
-/

namespace A287689.P1736088089397110469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167939 (n + 2) - (n + 2 : ℤ)

end

end A287689.P1736088089397110469

/-! ## A287689.P18151274273934916200

`A182100(n+2)-(n+3)`
-/

namespace A287689.P18151274273934916200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182100 (n + 2) - (n + 3 : ℤ)

end

end A287689.P18151274273934916200

/-! ## A287689.P17085533043067857762

`record[A327078(n)+A057428(n)]`
-/

namespace A287689.P17085533043067857762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327078 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287689.P17085533043067857762

/-!
# A287690: Number of connected dominating sets in the n X n grid graph.

The programs for A287690, there is no canonical definition to state claims against.
-/

/-! ## A287690.P17128650093364897497

`A291872(∑[4*n]+1)`
-/

namespace A287690.P17128650093364897497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291872 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A287690.P17128650093364897497

/-! ## A287690.P1331070744828664362

`or(1, A291872(A001844(n)))`
-/

namespace A287690.P1331070744828664362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A291872 (A001844 n).toNat)

end

end A287690.P1331070744828664362

/-! ## A287690.P11262035666393070285

`record[A291872(Δ[A235355(n)])]`
-/

namespace A287690.P11262035666393070285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291872 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287690.P11262035666393070285

/-! ## A287690.P10743821878474224526

`record[A291872(A330613(n+1))]`
-/

namespace A287690.P10743821878474224526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291872 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287690.P10743821878474224526

/-! ## A287690.P5654080431587513744

`record[A003982(n)*A291872(n+1)]`
-/

namespace A287690.P5654080431587513744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A291872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287690.P5654080431587513744

/-!
# A287693: Number of connected chordless graphs on n vertices.

The programs for A287693, there is no canonical definition to state claims against.
-/

/-! ## A287693.P9796417966120120255

`A178210(A000085(n))`
-/

namespace A287693.P9796417966120120255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A000085 n).toNat

end

end A287693.P9796417966120120255

/-! ## A287693.P3037295958517294079

`A178210(A007578(n))`
-/

namespace A287693.P3037295958517294079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A007578 n).toNat

end

end A287693.P3037295958517294079

/-! ## A287693.P4934217103973184395

`A178210(A007580(n))`
-/

namespace A287693.P4934217103973184395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A007580 n).toNat

end

end A287693.P4934217103973184395

/-! ## A287693.P6494738503159835656

`A178210(A212915(n))`
-/

namespace A287693.P6494738503159835656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A212915 n).toNat

end

end A287693.P6494738503159835656

/-!
# A287694: Number of not-necessarily connected simple chordless graphs on n vertices.

The programs for A287694, there is no canonical definition to state claims against.
-/

/-! ## A287694.P5755734274570357396

`A064557(A150293(n+1))`
-/

namespace A287694.P5755734274570357396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064557 (A150293 (n + 1)).toNat

end

end A287694.P5755734274570357396

/-! ## A287694.P4426465787031758459

`A282697(A018067(n+1))`
-/

namespace A287694.P4426465787031758459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282697 (A018067 (n + 1)).toNat

end

end A287694.P4426465787031758459

/-! ## A287694.P3045333455138806998

`A130446(A006080(n+2))`
-/

namespace A287694.P3045333455138806998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A006080 (n + 2)).toNat

end

end A287694.P3045333455138806998

/-!
# A287695: Maximum number of diagonal Latin squares with the first row in ascending order that can be orthogonal to a given diagonal Latin square of order n.

The programs for A287695, there is no canonical definition to state claims against.
-/

/-! ## A287695.P3934198067059468248

`A316675(A054238(n)^4)`
-/

namespace A287695.P3934198067059468248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 (A054238 n ^ 4).toNat

end

end A287695.P3934198067059468248

/-! ## A287695.P4160434966465772993

`A316675(A054238(n)²²)`
-/

namespace A287695.P4160434966465772993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316675 ((A054238 n ^ 2) ^ 2).toNat

end

end A287695.P4160434966465772993

/-! ## A287695.P13928143573556297693

`A329707(A329685(n+1))-A329699(A329685(n+1))`
-/

namespace A287695.P13928143573556297693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329707 (A329685 (n + 1)).toNat - A329699 (A329685 (n + 1)).toNat

end

end A287695.P13928143573556297693

/-!
# A287697: Triangle read by rows, (Sum_{k=0..n} T[n,k]*x^k) / (1-x)^(n+1) are generating functions of the columns of A287698.

The programs for A287697, there is no canonical definition to state claims against.
-/

/-! ## A287697.P734226686532483093

`A159268(A304330(n))`
-/

namespace A287697.P734226686532483093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159268 (A304330 n).toNat

end

end A287697.P734226686532483093

/-! ## A287697.P14005337078051797858

`A229047(A303535(n))`
-/

namespace A287697.P14005337078051797858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229047 (A303535 n).toNat

end

end A287697.P14005337078051797858

/-! ## A287697.P9463825101084008034

`A377419(A256069(n))`
-/

namespace A287697.P9463825101084008034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377419 (A256069 n).toNat

end

end A287697.P9463825101084008034

/-! ## A287697.P6802258463417202387

`A382764(A304334(n))`
-/

namespace A287697.P6802258463417202387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382764 (A304334 n).toNat

end

end A287697.P6802258463417202387

/-! ## A287697.P16669237121590853675

`A275327(A057285(n+2))`
-/

namespace A287697.P16669237121590853675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275327 (A057285 (n + 2)).toNat

end

end A287697.P16669237121590853675

/-!
# A287698: Square array A(n,k) = (n!)^3 [x^n] hypergeom([], [1, 1], z)^k read by antidiagonals.

The programs for A287698, there is no canonical definition to state claims against.
-/

/-! ## A287698.P14254296380718303841

`A181578(A366834(n))`
-/

namespace A287698.P14254296380718303841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A366834 n).toNat

end

end A287698.P14254296380718303841

/-! ## A287698.P13047360027787470721

`A025581(C(n, A238010(n)))`
-/

namespace A287698.P13047360027787470721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose n (A238010 n).toNat)

end

end A287698.P13047360027787470721

/-! ## A287698.P11470771818621902874

`A282673(A038763(n))+A246106(n)`
-/

namespace A287698.P11470771818621902874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (A038763 n).toNat + A246106 n

end

end A287698.P11470771818621902874

/-! ## A287698.P5583719065372666776

`A025581(A165253(n)^A112367(n))`
-/

namespace A287698.P5583719065372666776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A165253 n : ℚ) ^ (A112367 n : ℤ))).toNat

end

end A287698.P5583719065372666776

/-! ## A287698.P15275007577314969261

`A025581(A165253(n)^A143632(n))`
-/

namespace A287698.P15275007577314969261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A165253 n : ℚ) ^ (A143632 n : ℤ))).toNat

end

end A287698.P15275007577314969261

/-!
# A287699: a(n) = (n!)^3 * [x^n] hypergeom([], [1, 1], x)^4.

The programs for A287699, there is no canonical definition to state claims against.
-/

/-! ## A287699.P10670397874570964251

`record[A287698(∑[n+3]-2)]`
-/

namespace A287699.P10670397874570964251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A287699.P10670397874570964251

/-! ## A287699.P3564207566594633151

`A287698(∑[round(sqrt(n²+1))+5]+4)`
-/

namespace A287699.P3564207566594633151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287698 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A287699.P3564207566594633151

