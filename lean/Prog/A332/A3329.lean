import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A332900: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = 0 if n > 1 and n is a square or twice square, with f(n) = n for all other numbers.

The programs for A332900, there is no canonical definition to state claims against.
-/

/-! ## A332900.P3475541090265927229

`A304492(A052410((n+1)²²))-char[8]`
-/

namespace A332900.P3475541090265927229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (A052410 (((n + 1) ^ 2) ^ 2)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332900.P3475541090265927229

/-! ## A332900.P786074405260446392

`A007305(2^(A085985(n+1)+1))-char[8]`
-/

namespace A332900.P786074405260446392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A085985 (n + 1) + 1 : ℤ))).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332900.P786074405260446392

/-! ## A332900.P5933341704627018924

`and(A085985(n+1)+A015161(n)!, A304492(n+1))`
-/

namespace A332900.P5933341704627018924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085985 (n + 1) + (Nat.factorial (A015161 n).toNat : ℤ)) (A304492 (n + 1))

end

end A332900.P5933341704627018924

/-! ## A332900.P15695626657588892654

`A288325(A288324(n+1))+A085972(A304491(n+1))`
-/

namespace A332900.P15695626657588892654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288325 (A288324 (n + 1)).toNat + A085972 (A304491 (n + 1)).toNat

end

end A332900.P15695626657588892654

/-! ## A332900.P4658738232469335562

`A000005(A186748(n)+A010693(n)^A085985(n+1))`
-/

namespace A332900.P4658738232469335562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A186748 n : ℚ) + (A010693 n : ℚ) ^ (A085985 (n + 1) : ℤ))).toNat

end

end A332900.P4658738232469335562

/-!
# A332901: Lexicographically earliest infinite sequence such that a(i) = a(j) => A278222(A332896(i)) = A278222(A332896(j)) for all i, j.

The programs for A332901, there is no canonical definition to state claims against.
-/

/-! ## A332901.P8767839402955050296

`A332898(n+1)+A051340(A185238(n))`
-/

namespace A332901.P8767839402955050296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (n + 1) + A051340 (A185238 n).toNat

end

end A332901.P8767839402955050296

/-! ## A332901.P2147280777727261136

`A332898(record[A332917(n+4)])+1`
-/

namespace A332901.P2147280777727261136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332917 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A332901.P2147280777727261136

/-! ## A332901.P624960982722109841

`A332898(n+1)%A068078(n+1)+1`
-/

namespace A332901.P624960982722109841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332898 (n + 1)) (A068078 (n + 1)) + 1

end

end A332901.P624960982722109841

/-! ## A332901.P13036751773839433061

`A332898(((A036894(n+1)+1)%2)!+n)+1`
-/

namespace A332901.P13036751773839433061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (Nat.factorial (Int.tmod (A036894 (n + 1) + 1) 2).toNat + n) + 1

end

end A332901.P13036751773839433061

/-! ## A332901.P9031764671578601021

`A332898(n+1)+A001511(A143451(n))`
-/

namespace A332901.P9031764671578601021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (n + 1) + A001511 (A143451 n).toNat

end

end A332901.P9031764671578601021

/-!
# A332902: a(1) = 1, then after the first differences of A332809.

The programs for A332902, there is no canonical definition to state claims against.
-/

/-! ## A332902.P3235920853223365837

`1-Δ[A332810(A028310(n))]`
-/

namespace A332902.P3235920853223365837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332810 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A332902.P3235920853223365837

/-! ## A332902.P7083439176491747590

`Δ[A332809(A028310(n))%A005893(n)]`
-/

namespace A332902.P7083439176491747590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332809 (A028310 n).toNat) (A005893 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332902.P7083439176491747590

/-! ## A332902.P9856297768441385360

`A332810(A028310(n))+1-A332810(n+1)`
-/

namespace A332902.P9856297768441385360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332810 (A028310 n).toNat + (1 - A332810 (n + 1))

end

end A332902.P9856297768441385360

/-! ## A332902.P6870781015169075412

`A332810(A028310(n))+A024000(A332810(n+1))`
-/

namespace A332902.P6870781015169075412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332810 (A028310 n).toNat + A024000 (A332810 (n + 1)).toNat

end

end A332902.P6870781015169075412

/-! ## A332902.P7072165374376054581

`A332809(n+1)-A057427(n)*A332809(A028310(n))`
-/

namespace A332902.P7072165374376054581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (n + 1) - A057427 n * A332809 (A028310 n).toNat

end

end A332902.P7072165374376054581

/-! ## A332902.P11741607354070307989

`Δ[A332809(A028310(n))+A057427(n)]`
-/

namespace A332902.P11741607354070307989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332902.P11741607354070307989

/-!
# A332903: a(1) = 1, then after the first differences of A333123.

The programs for A332903, there is no canonical definition to state claims against.
-/

/-! ## A332903.P5652881775838761364

`A000007(n)+Δ[A333123(A028310(n))]`
-/

namespace A332903.P5652881775838761364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333123 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A332903.P5652881775838761364

/-! ## A332903.P3461667905940730678

`A333123(n+1)+A000007(n)-A333123(A028310(n))`
-/

namespace A332903.P3461667905940730678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333123 (n + 1) + (A000007 n - A333123 (A028310 n).toNat)

end

end A332903.P3461667905940730678

/-! ## A332903.P15373484644062440569

`A000007(n)+Δ[A333123(A123108(2*n))]`
-/

namespace A332903.P15373484644062440569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333123 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A332903.P15373484644062440569

/-! ## A332903.P6682777582504904339

`Δ[A333123(A123108(2*n))+A057427(n)]`
-/

namespace A332903.P6682777582504904339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333123 (A123108 (2 * n)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332903.P6682777582504904339

/-! ## A332903.P4380544458265342545

`Δ[A333123(A123108(2*n))%A003215(n)]`
-/

namespace A332903.P4380544458265342545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333123 (A123108 (2 * n)).toNat) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332903.P4380544458265342545

/-! ## A332903.P16724444286252808564

`Δ[A333123(A123108(2*n))+A036453(n+1)]`
-/

namespace A332903.P16724444286252808564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333123 (A123108 (2 * n)).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332903.P16724444286252808564

/-!
# A332906: Number of entries in the second cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332906, there is no canonical definition to state claims against.
-/

/-! ## A332906.P1593964332438936629

`A322383(∑[n+1]+2)`
-/

namespace A332906.P1593964332438936629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332906.P1593964332438936629

/-! ## A332906.P17239523864433179734

`record[gcd(A098825(n), A322383(n+1))]`
-/

namespace A332906.P17239523864433179734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A322383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332906.P17239523864433179734

/-! ## A332906.P3406565810922074956

`record[gcd(A123125(n), A322383(n+2))]`
-/

namespace A332906.P3406565810922074956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123125 n) (A322383 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332906.P3406565810922074956

/-! ## A332906.P16006864697730570410

`record[and(A287325(n), A322383(n+1))]`
-/

namespace A332906.P16006864697730570410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287325 n) (A322383 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332906.P16006864697730570410

/-! ## A332906.P86735748266249414

`record[A322383(A133263(A037213(n)))]`
-/

namespace A332906.P86735748266249414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A133263 (A037213 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332906.P86735748266249414

/-! ## A332906.P17161545927615138016

`record[A322383(A133263(A142150(n)))]`
-/

namespace A332906.P17161545927615138016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A133263 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332906.P17161545927615138016

/-!
# A332907: Number of entries in the third cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332907, there is no canonical definition to state claims against.
-/

/-! ## A332907.P17797987285005062502

`A322383(∑[n+2]+4)`
-/

namespace A332907.P17797987285005062502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A332907.P17797987285005062502

/-! ## A332907.P6071188109063671116

`or(char[1], A322383(A167614(n+1)))`
-/

namespace A332907.P6071188109063671116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A322383 (A167614 (n + 1)).toNat)

end

end A332907.P6071188109063671116

/-! ## A332907.P12175152749633442388

`record[A322383(n+6)%A322384(n+4)]`
-/

namespace A332907.P12175152749633442388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322383 (n + 6)) (A322384 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332907.P12175152749633442388

/-! ## A332907.P6157366021520223627

`lcm(A033999(n), A322383(A167614(n+1)))`
-/

namespace A332907.P6157366021520223627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A322383 (A167614 (n + 1)).toNat)

end

end A332907.P6157366021520223627

/-! ## A332907.P15077209902235195840

`A322383(A167614(n+1))^(A000007(n)+1)`
-/

namespace A332907.P15077209902235195840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322383 (A167614 (n + 1)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A332907.P15077209902235195840

/-! ## A332907.P3621905279924062856

`or(A322383(A167614(n+1)), A353480(n+1))`
-/

namespace A332907.P3621905279924062856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322383 (A167614 (n + 1)).toNat) (A353480 (n + 1))

end

end A332907.P3621905279924062856

/-!
# A332908: Number of entries in the fourth cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332908, there is no canonical definition to state claims against.
-/

/-! ## A332908.P556519633917322035

`A322383(A055999(n)+10)`
-/

namespace A332908.P556519633917322035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A055999 n + 10).toNat

end

end A332908.P556519633917322035

/-! ## A332908.P2558691478103252176

`A322383(A167614(n+2)+1)`
-/

namespace A332908.P2558691478103252176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167614 (n + 2) + 1).toNat

end

end A332908.P2558691478103252176

/-! ## A332908.P17916202513160799184

`A322383(A167499(n+2)-1)`
-/

namespace A332908.P17916202513160799184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167499 (n + 2) - 1).toNat

end

end A332908.P17916202513160799184

/-! ## A332908.P16462411008615587656

`A322383(A167487(n+2)-3)`
-/

namespace A332908.P16462411008615587656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167487 (n + 2) - 3).toNat

end

end A332908.P16462411008615587656

/-! ## A332908.P7820952576828254296

`A322383(A000096(n+2)+5)`
-/

namespace A332908.P7820952576828254296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000096 (n + 2) + 5).toNat

end

end A332908.P7820952576828254296

/-!
# A332909: Number of entries in the fifth cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332909, there is no canonical definition to state claims against.
-/

/-! ## A332909.P3937391234700675698

`A322383(A167499(n+3))`
-/

namespace A332909.P3937391234700675698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167499 (n + 3)).toNat

end

end A332909.P3937391234700675698

/-! ## A332909.P17939219262469617798

`A322383(A155212(n)+13)`
-/

namespace A332909.P17939219262469617798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A155212 n + 13).toNat

end

end A332909.P17939219262469617798

/-! ## A332909.P366890418677575016

`A322383(A167614(n+3)+2)`
-/

namespace A332909.P366890418677575016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167614 (n + 3) + 2).toNat

end

end A332909.P366890418677575016

/-! ## A332909.P11487183024573285852

`A322383(A055998(n+2)+8)`
-/

namespace A332909.P11487183024573285852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A055998 (n + 2) + 8).toNat

end

end A332909.P11487183024573285852

/-! ## A332909.P12296443831007640539

`A322383(A167487(n+2)+n+2)`
-/

namespace A332909.P12296443831007640539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167487 (n + 2) + (n + 2 : ℤ)).toNat

end

end A332909.P12296443831007640539

/-! ## A332909.P13868324702782218368

`A322383(A000124(n+5)-(n+1))`
-/

namespace A332909.P13868324702782218368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A332909.P13868324702782218368

/-!
# A332910: Number of entries in the sixth cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332910, there is no canonical definition to state claims against.
-/

/-! ## A332910.P5246599382532900783

`A322383(C(n+6, 2)+6)`
-/

namespace A332910.P5246599382532900783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (Nat.choose (n + 6) 2 + 6)

end

end A332910.P5246599382532900783

/-! ## A332910.P17113775377656829891

`A322383(A000124(n+5)+5)`
-/

namespace A332910.P17113775377656829891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000124 (n + 5) + 5).toNat

end

end A332910.P17113775377656829891

/-! ## A332910.P13575362412035578420

`A322383(A000217(n+5)+6)`
-/

namespace A332910.P13575362412035578420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000217 (n + 5) + 6).toNat

end

end A332910.P13575362412035578420

/-! ## A332910.P6227223563014959116

`A322383(eq[7, A131818(n+1)])`
-/

namespace A332910.P6227223563014959116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332910.P6227223563014959116

/-! ## A332910.P4627857211039990912

`A322383(A167499(n+3)+n+6)`
-/

namespace A332910.P4627857211039990912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167499 (n + 3) + (n : ℤ) + 6).toNat

end

end A332910.P4627857211039990912

/-!
# A332911: Number of entries in the seventh cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332911, there is no canonical definition to state claims against.
-/

/-! ## A332911.P6150648994139474545

`A322383(A000124(n+6)+6)`
-/

namespace A332911.P6150648994139474545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000124 (n + 6) + 6).toNat

end

end A332911.P6150648994139474545

/-! ## A332911.P6123294990663111297

`A322383(A000096(n+5)+8)`
-/

namespace A332911.P6123294990663111297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000096 (n + 5) + 8).toNat

end

end A332911.P6123294990663111297

/-! ## A332911.P578064926775885652

`A322383(A000217(n+6)+7)`
-/

namespace A332911.P578064926775885652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000217 (n + 6) + 7).toNat

end

end A332911.P578064926775885652

/-! ## A332911.P3118673850430957675

`A322383(A027379(n+4)+10)`
-/

namespace A332911.P3118673850430957675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A027379 (n + 4) + 10).toNat

end

end A332911.P3118673850430957675

/-! ## A332911.P12177703049468630481

`A322383(eq[8, A131818(n+1)])`
-/

namespace A332911.P12177703049468630481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332911.P12177703049468630481

/-!
# A332912: Number of entries in the eighth cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332912, there is no canonical definition to state claims against.
-/

/-! ## A332912.P13169849870421365109

`A322383(eq[13, A066657(n)])`
-/

namespace A332912.P13169849870421365109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332912.P13169849870421365109

/-! ## A332912.P14806417483006834656

`A322383(A167487(n+6)+1)`
-/

namespace A332912.P14806417483006834656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167487 (n + 6) + 1).toNat

end

end A332912.P14806417483006834656

/-! ## A332912.P58455311421686017

`A322383(A167614(n+6)+5)`
-/

namespace A332912.P58455311421686017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A167614 (n + 6) + 5).toNat

end

end A332912.P58455311421686017

/-! ## A332912.P9570555627205254184

`A322383(A000124(n+7)+7)`
-/

namespace A332912.P9570555627205254184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000124 (n + 7) + 7).toNat

end

end A332912.P9570555627205254184

/-! ## A332912.P2011177411197521878

`A322383(A000096(n+6)+9)`
-/

namespace A332912.P2011177411197521878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000096 (n + 6) + 9).toNat

end

end A332912.P2011177411197521878

/-! ## A332912.P376355611397545167

`A322383(eq[9, A131818(n+1)])`
-/

namespace A332912.P376355611397545167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332912.P376355611397545167

/-!
# A332913: Number of entries in the ninth cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332913, there is no canonical definition to state claims against.
-/

/-! ## A332913.P11462146382359952713

`A322383(eq[17, A066657(n)])`
-/

namespace A332913.P11462146382359952713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332913.P11462146382359952713

/-! ## A332913.P7325677920394638054

`A322383(A000217(n+8)+9)`
-/

namespace A332913.P7325677920394638054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000217 (n + 8) + 9).toNat

end

end A332913.P7325677920394638054

/-! ## A332913.P2270805491543380821

`A322383(eq[10, A131818(n+1)])`
-/

namespace A332913.P2270805491543380821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332913.P2270805491543380821

/-! ## A332913.P4611781306180322601

`A322383(A000096(n+8)-n+1)`
-/

namespace A332913.P4611781306180322601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000096 (n + 8) - (n : ℤ) + 1).toNat

end

end A332913.P4611781306180322601

/-! ## A332913.P9640999456790023055

`A322383(A000124(n+10)-10-xor(1, 2*n))`
-/

namespace A332913.P9640999456790023055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (A000124 (n + 10) - 10 - (Nat.xor 1 (2 * n) : ℤ)).toNat

end

end A332913.P9640999456790023055

/-!
# A332914: Number of entries in the tenth cycles of all permutations of [n] when cycles are ordered by increasing lengths.

The programs for A332914, there is no canonical definition to state claims against.
-/

/-! ## A332914.P8523664886031067661

`A322383(eq[10, A130270(n+1)])`
-/

namespace A332914.P8523664886031067661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332914.P8523664886031067661

/-! ## A332914.P7717806116998564318

`A322383(eq[11, A131818(n+1)])`
-/

namespace A332914.P7717806116998564318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322383 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332914.P7717806116998564318

/-!
# A332917: A332916(n)/2^a(n) is the average number of binary strings of length n with Levenshtein distance <= 3 from a uniform randomly sampled binary string of this length.

The programs for A332917, there is no canonical definition to state claims against.
-/

/-! ## A332917.P8998180093611569064

`n+2-val(∏[n+3]-(n-1), 2)`
-/

namespace A332917.P8998180093611569064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.valuation (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)).toNat 2 : ℤ)

end

end A332917.P8998180093611569064

/-! ## A332917.P5532838795615469198

`Δ[A092391(A289207(n))]+n`
-/

namespace A332917.P5532838795615469198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A332917.P5532838795615469198

/-! ## A332917.P3661418211032283679

`2-val(A052955(A004277(n))-(n-2), 2)+n`
-/

namespace A332917.P3661418211032283679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.valuation (A052955 (A004277 n).toNat - ((n : ℤ) - 2)).toNat 2 : ℤ) + (n : ℤ)

end

end A332917.P3661418211032283679

/-! ## A332917.P14746300064918124834

`Δ[A092391(A289207(n))-A080956(n)]`
-/

namespace A332917.P14746300064918124834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A289207 n).toNat - A080956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332917.P14746300064918124834

/-! ## A332917.P11336414896641109911

`A005843(n)-(n-Δ[A092391(A289207(n))])`
-/

namespace A332917.P11336414896641109911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A332917.P11336414896641109911

/-!
# A332918: Average number of binary strings of length n with Levenshtein distance <= 3 from a uniform randomly sampled binary string of this length, rounded to nearest integer.

The programs for A332918, there is no canonical definition to state claims against.
-/

/-! ## A332918.P10968477491482124046

`round(A332916(n+3)/2^A332917(n+3))`
-/

namespace A332918.P10968477491482124046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332916 (n + 3) : ℚ) / (2 : ℚ) ^ (A332917 (n + 3) : ℤ))

end

end A332918.P10968477491482124046

/-! ## A332918.P15996010976584638774

`A276024(n+3)+A126295(A118030(n+1))`
-/

namespace A332918.P15996010976584638774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276024 (n + 3) + A126295 (A118030 (n + 1)).toNat

end

end A332918.P15996010976584638774

/-!
# A332919: a(n) is the sum of the sums of squared digits of all n-digit numbers.

The programs for A332919, the canonical program `A332919.P13899088447934731004` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332919 has offset 1).

The definition of A332919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332919.P13899088447934731004

`57*2^(n-1)*5^n*(1+9*(n+1))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332919

/-- `57*2^(n-1)*5^n*(1+9*(n+1))` -/
def P13899088447934731004.Spec : Prop :=
  ∀ n, P13899088447934731004.a n = (A332919 (n + 1) : ℚ)

end A332919

/-! ## A332919.P10268314397588813988

`Δ[57/2*A126431(n)]`
-/

namespace A332919.P10268314397588813988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (57 : ℚ) / 2 * (A126431 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332919.P10268314397588813988

namespace A332919

/-- `Δ[57/2*A126431(n)]` -/
def P10268314397588813988.Spec : Prop :=
  ∀ n, P10268314397588813988.a n = (A332919 (n + 1) : ℚ)

end A332919

/-!
# A332922: 2*a(n) are the perimeters of distinct triangles with integer sides i <= j <= k, whose area equals 2 times their perimeter. Terms occurring more than once belong to different triangles.

The programs for A332922, there is no canonical definition to state claims against.
-/

/-! ## A332922.P5820371690553651939

`3*(A070939(A241024(n+1))+1)`
-/

namespace A332922.P5820371690553651939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A070939 (A241024 (n + 1)).toNat + 1)

end

end A332922.P5820371690553651939

/-! ## A332922.P17959390154817500069

`3*(n+7-A185284(A312014(n)))`
-/

namespace A332922.P17959390154817500069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 7 : ℤ) - A185284 (A312014 n).toNat)

end

end A332922.P17959390154817500069

/-! ## A332922.P9166914703424203015

`3*(n+7-A341994(A030226(n+1)))`
-/

namespace A332922.P9166914703424203015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 7 : ℤ) - A341994 (A030226 (n + 1)).toNat)

end

end A332922.P9166914703424203015

/-!
# A332928: Number of entries in the n-th cycles of all permutations of [2n] when cycles are ordered by decreasing lengths.

The programs for A332928, there is no canonical definition to state claims against.
-/

/-! ## A332928.P15056838280137745105

`A322384(2*(n+1)²)`
-/

namespace A332928.P15056838280137745105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (2 * (n + 1) ^ 2)

end

end A332928.P15056838280137745105

/-! ## A332928.P19654390804137952

`record[A322384(A168281(n+1))]`
-/

namespace A332928.P19654390804137952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A168281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332928.P19654390804137952

/-! ## A332928.P8196476990797331728

`record[A322384(∑[A168232(n+1)])]`
-/

namespace A332928.P8196476990797331728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168232 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332928.P8196476990797331728

/-! ## A332928.P4596466908267462722

`record[A322384(Δ[A049778(n+1)])]`
-/

namespace A332928.P4596466908267462722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332928.P4596466908267462722

/-! ## A332928.P10849244223918524494

`record[A322384(A136193(n+2))]`
-/

namespace A332928.P10849244223918524494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322384 (A136193 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332928.P10849244223918524494

/-!
# A332930: Number of polyominoes with n cells on the order-6 square tiling of the hyperbolic plane.

The programs for A332930, there is no canonical definition to state claims against.
-/

/-! ## A332930.P16745254480697503713

`A008620(A027923(n!))`
-/

namespace A332930.P16745254480697503713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A027923 (Nat.factorial n)).toNat

end

end A332930.P16745254480697503713

/-! ## A332930.P13424533361129039283

`A255934(or(5, A073155(n)))`
-/

namespace A332930.P13424533361129039283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255934 (Int.lor 5 (A073155 n)).toNat

end

end A332930.P13424533361129039283

/-! ## A332930.P2243641059064943409

`A162340(floor(A000105(n)/2))`
-/

namespace A332930.P2243641059064943409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162340 ⌊(A000105 n : ℚ) / 2⌋.toNat

end

end A332930.P2243641059064943409

/-! ## A332930.P2852244689351230757

`A121098(A036644(n))+A087949(n)`
-/

namespace A332930.P2852244689351230757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121098 (A036644 n).toNat + A087949 n

end

end A332930.P2852244689351230757

/-!
# A332931: Sum of round(sqrt(d)) where d runs through the divisors of n.

The programs for A332931, the canonical program `A332931.P8008434739767910089` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332931 has offset 1).

The definition of A332931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332931.P8008434739767910089

`∑{d}[n+1, floor(1/2+sqrt(#))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332931

/-- `∑{d}[n+1, floor(1/2+sqrt(#))]` -/
def P8008434739767910089.Spec : Prop :=
  ∀ n, P8008434739767910089.a n = A332931 (n + 1)

theorem P8008434739767910089.correct : P8008434739767910089.Spec := by
  intro n
  simp only [A332931, Nat.add_sub_cancel]

end A332931

/-! ## A332931.P4296470908527868981

`∑{d}[n+1, A001670(#)]/2`
-/

namespace A332931.P4296470908527868981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A001670 d : ℤ) : ℚ) / 2

end

end A332931.P4296470908527868981

namespace A332931

/-- `∑{d}[n+1, A001670(#)]/2` -/
def P4296470908527868981.Spec : Prop :=
  ∀ n, P4296470908527868981.a n = (A332931 (n + 1) : ℚ)

end A332931

/-! ## A332931.P5213679097387657524

`abs(∑{d}[n+1, #-A000037(#)])`
-/

namespace A332931.P5213679097387657524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000037 d)|

end

end A332931.P5213679097387657524

namespace A332931

/-- `abs(∑{d}[n+1, #-A000037(#)])` -/
def P5213679097387657524.Spec : Prop :=
  ∀ n, P5213679097387657524.a n = A332931 (n + 1)

end A332931

/-! ## A332931.P2216089643728563492

`A004526(∑{d}[n+1, A001670(#)])`
-/

namespace A332931.P2216089643728563492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A001670 d).toNat

end

end A332931.P2216089643728563492

namespace A332931

/-- `A004526(∑{d}[n+1, A001670(#)])` -/
def P2216089643728563492.Spec : Prop :=
  ∀ n, P2216089643728563492.a n = A332931 (n + 1)

end A332931

/-! ## A332931.P18203972099516191073

`A032742(∑{d}[n+1, A001670(#)])`
-/

namespace A332931.P18203972099516191073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ d ∈ Nat.divisors (f1 n), A001670 d).toNat

end

end A332931.P18203972099516191073

namespace A332931

/-- `A032742(∑{d}[n+1, A001670(#)])` -/
def P18203972099516191073.Spec : Prop :=
  ∀ n, P18203972099516191073.a n = A332931 (n + 1)

end A332931

/-! ## A332931.P15419734484628863503

`A000027(∑{d}[n+1, A000194(#)])`
-/

namespace A332931.P15419734484628863503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A000194 d).toNat

end

end A332931.P15419734484628863503

namespace A332931

/-- `A000027(∑{d}[n+1, A000194(#)])` -/
def P15419734484628863503.Spec : Prop :=
  ∀ n, P15419734484628863503.a n = A332931 (n + 1)

end A332931

/-! ## A332931.P7148926724380155184

`∑{d}[n+1, A100795(#+#)]/2`
-/

namespace A332931.P7148926724380155184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A100795 (d + d) : ℤ) : ℚ) / 2

end

end A332931.P7148926724380155184

namespace A332931

/-- `∑{d}[n+1, A100795(#+#)]/2` -/
def P7148926724380155184.Spec : Prop :=
  ∀ n, P7148926724380155184.a n = (A332931 (n + 1) : ℚ)

end A332931

/-!
# A332932: Sum of ceiling(sqrt(d)) where d runs through the divisors of n.

The programs for A332932, the canonical program `A332932.P1495681285893349047` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332932 has offset 1).

The definition of A332932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332932.P1495681285893349047

`∑{d}[n+1, ceil(sqrt(#))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332932

/-- `∑{d}[n+1, ceil(sqrt(#))]` -/
def P1495681285893349047.Spec : Prop :=
  ∀ n, P1495681285893349047.a n = A332932 (n + 1)

theorem P1495681285893349047.correct : P1495681285893349047.Spec := by
  intro n
  simp only [A332932, Nat.add_sub_cancel]

end A332932

/-! ## A332932.P7179859302595689618

`A056595(n+1)+∑{d}[n+1, floor(sqrt(#))]`
-/

namespace A332932.P7179859302595689618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.sqrt d : ℕ) : ℤ)

end

end A332932.P7179859302595689618

namespace A332932

/-- `A056595(n+1)+∑{d}[n+1, floor(sqrt(#))]` -/
def P7179859302595689618.Spec : Prop :=
  ∀ n, P7179859302595689618.a n = A332932 (n + 1)

end A332932

/-! ## A332932.P1709770768571962258

`A086671(n+1)+A056595(n+1)`
-/

namespace A332932.P1709770768571962258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (n + 1) + A056595 (n + 1)

end

end A332932.P1709770768571962258

namespace A332932

/-- `A086671(n+1)+A056595(n+1)` -/
def P1709770768571962258.Spec : Prop :=
  ∀ n, P1709770768571962258.a n = A332932 (n + 1)

end A332932

/-! ## A332932.P5880259758331060965

`abs(∑{d}[n+1, A003059(#)]-A000038(n))`
-/

namespace A332932.P5880259758331060965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A003059 d - A000038 n|

end

end A332932.P5880259758331060965

namespace A332932

/-- `abs(∑{d}[n+1, A003059(#)]-A000038(n))` -/
def P5880259758331060965.Spec : Prop :=
  ∀ n, P5880259758331060965.a n = A332932 (n + 1)

end A332932

/-! ## A332932.P2874748901836178579

`A007318(C(2, n))*∑{d}[n+1, A003059(#)]`
-/

namespace A332932.P2874748901836178579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ d ∈ Nat.divisors (f1 n), A003059 d)

end

end A332932.P2874748901836178579

namespace A332932

/-- `A007318(C(2, n))*∑{d}[n+1, A003059(#)]` -/
def P2874748901836178579.Spec : Prop :=
  ∀ n, P2874748901836178579.a n = A332932 (n + 1)

end A332932

/-! ## A332932.P6331435366123523385

`∑{d}[n+1, A003059(#)]-A000040(gcd(n, n+1))+2`
-/

namespace A332932.P6331435366123523385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003059 d - A000040 (Nat.gcd n (n + 1)) + 2

end

end A332932.P6331435366123523385

namespace A332932

/-- `∑{d}[n+1, A003059(#)]-A000040(gcd(n, n+1))+2` -/
def P6331435366123523385.Spec : Prop :=
  ∀ n, P6331435366123523385.a n = A332932 (n + 1)

end A332932

/-! ## A332932.P15221791638513627293

`A086671(n+1)+A332935(n+1)-A332933(n+1)`
-/

namespace A332932.P15221791638513627293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (n + 1) + (A332935 (n + 1) - A332933 (n + 1))

end

end A332932.P15221791638513627293

namespace A332932

/-- `A086671(n+1)+A332935(n+1)-A332933(n+1)` -/
def P15221791638513627293.Spec : Prop :=
  ∀ n, P15221791638513627293.a n = A332932 (n + 1)

end A332932

/-!
# A332933: Sum of floor(d^(3/2)) where d runs through the divisors of n.

The programs for A332933, the canonical program `A332933.P13431352946191094713` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332933 has offset 1).

The definition of A332933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332933.P13431352946191094713

`∑{d}[n+1, floor(sqrt(#^3))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332933

/-- `∑{d}[n+1, floor(sqrt(#^3))]` -/
def P13431352946191094713.Spec : Prop :=
  ∀ n, (P13431352946191094713.a n : ℤ) = A332933 (n + 1)

theorem P13431352946191094713.correct : P13431352946191094713.Spec := by
  intro n
  simp only [A332933, Nat.add_sub_cancel]

end A332933

/-! ## A332933.P7675717936645588368

`∑{d}[n+1, ceil(sqrt(#^3))]-A056595(n+1)`
-/

namespace A332933.P7675717936645588368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈Real.sqrt (d ^ 3 : ℝ)⌉ - A056595 (n + 1)

end

end A332933.P7675717936645588368

namespace A332933

/-- `∑{d}[n+1, ceil(sqrt(#^3))]-A056595(n+1)` -/
def P7675717936645588368.Spec : Prop :=
  ∀ n, P7675717936645588368.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P1472135177701803548

`A332935(n+1)-A056595(n+1)`
-/

namespace A332933.P1472135177701803548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332935 (n + 1) - A056595 (n + 1)

end

end A332933.P1472135177701803548

namespace A332933

/-- `A332935(n+1)-A056595(n+1)` -/
def P1472135177701803548.Spec : Prop :=
  ∀ n, P1472135177701803548.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P2485809533440041804

`A086671(n+1)+A332935(n+1)-A332932(n+1)`
-/

namespace A332933.P2485809533440041804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086671 (n + 1) + (A332935 (n + 1) - A332932 (n + 1))

end

end A332933.P2485809533440041804

namespace A332933

/-- `A086671(n+1)+A332935(n+1)-A332932(n+1)` -/
def P2485809533440041804.Spec : Prop :=
  ∀ n, P2485809533440041804.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P10606880434637344447

`or(char[1], ∑{d}[n+1, A000093(#)])`
-/

namespace A332933.P10606880434637344447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (∑ d ∈ Nat.divisors (f2 n), A000093 d)

end

end A332933.P10606880434637344447

namespace A332933

/-- `or(char[1], ∑{d}[n+1, A000093(#)])` -/
def P10606880434637344447.Spec : Prop :=
  ∀ n, P10606880434637344447.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P4277884244927222454

`root(∑{d}[n+1, A000093(#)], A054977(n))`
-/

namespace A332933.P4277884244927222454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A000093 d : ℤ) : ℝ) ^ (1 / (A054977 n : ℝ))

end

end A332933.P4277884244927222454

namespace A332933

/-- `root(∑{d}[n+1, A000093(#)], A054977(n))` -/
def P4277884244927222454.Spec : Prop :=
  ∀ n, P4277884244927222454.a n = (A332933 (n + 1) : ℝ)

end A332933

/-! ## A332933.P16740072943073469891

`∑{d}[n+1, A000093(#)]%A000040(n+1)²`
-/

namespace A332933.P16740072943073469891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A000093 d) (A000040 (n + 1) ^ 2)

end

end A332933.P16740072943073469891

namespace A332933

/-- `∑{d}[n+1, A000093(#)]%A000040(n+1)²` -/
def P16740072943073469891.Spec : Prop :=
  ∀ n, P16740072943073469891.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P4170207904330338182

`∑{d}[n+1, A000093(#)]+A008683(8*n+4)`
-/

namespace A332933.P4170207904330338182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000093 d + A008683 (8 * n + 4)

end

end A332933.P4170207904330338182

namespace A332933

/-- `∑{d}[n+1, A000093(#)]+A008683(8*n+4)` -/
def P4170207904330338182.Spec : Prop :=
  ∀ n, P4170207904330338182.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P4663859284885938464

`A028310(∑{d}[n+1, A000093(#)])`
-/

namespace A332933.P4663859284885938464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A000093 d).toNat

end

end A332933.P4663859284885938464

namespace A332933

/-- `A028310(∑{d}[n+1, A000093(#)])` -/
def P4663859284885938464.Spec : Prop :=
  ∀ n, P4663859284885938464.a n = A332933 (n + 1)

end A332933

/-! ## A332933.P2836664679083738370

`A007318(∑[n])*∑{d}[n+1, A000093(#)]`
-/

namespace A332933.P2836664679083738370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ d ∈ Nat.divisors (f2 n), A000093 d)

end

end A332933.P2836664679083738370

namespace A332933

/-- `A007318(∑[n])*∑{d}[n+1, A000093(#)]` -/
def P2836664679083738370.Spec : Prop :=
  ∀ n, P2836664679083738370.a n = A332933 (n + 1)

end A332933

/-!
# A332934: Sum of round(d^(3/2)) where d runs through the divisors of n.

The programs for A332934, the canonical program `A332934.P5186518608748175517` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332934 has offset 1).

The definition of A332934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332934.P5186518608748175517

`∑{d}[n+1, floor(1/2+sqrt(#^3))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332934

/-- `∑{d}[n+1, floor(1/2+sqrt(#^3))]` -/
def P5186518608748175517.Spec : Prop :=
  ∀ n, P5186518608748175517.a n = A332934 (n + 1)

theorem P5186518608748175517.correct : P5186518608748175517.Spec := by
  intro n
  simp only [A332934, Nat.add_sub_cancel]

end A332934

/-! ## A332934.P12579289212598280384

`root(∑{d}[n+1, A002821(#)], 2)²`
-/

namespace A332934.P12579289212598280384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), A002821 d : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A332934.P12579289212598280384

namespace A332934

/-- `root(∑{d}[n+1, A002821(#)], 2)²` -/
def P12579289212598280384.Spec : Prop :=
  ∀ n, P12579289212598280384.a n = (A332934 (n + 1) : ℝ)

end A332934

/-! ## A332934.P2433295906639452085

`lcm(∑{d}[n+1, A002821(#)], A165326(n))`
-/

namespace A332934.P2433295906639452085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ d ∈ Nat.divisors (f1 n), A002821 d) (A165326 n)

end

end A332934.P2433295906639452085

namespace A332934

/-- `lcm(∑{d}[n+1, A002821(#)], A165326(n))` -/
def P2433295906639452085.Spec : Prop :=
  ∀ n, (P2433295906639452085.a n : ℤ) = A332934 (n + 1)

end A332934

/-! ## A332934.P5934084463783501935

`or(∑{d}[n+1, A002821(#)], A000007(n))`
-/

namespace A332934.P5934084463783501935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ d ∈ Nat.divisors (f1 n), A002821 d) (A000007 n)

end

end A332934.P5934084463783501935

namespace A332934

/-- `or(∑{d}[n+1, A002821(#)], A000007(n))` -/
def P5934084463783501935.Spec : Prop :=
  ∀ n, P5934084463783501935.a n = A332934 (n + 1)

end A332934

/-! ## A332934.P15994653242159923900

`∑{d}[n+1, A002821(#)]%A000954(n)`
-/

namespace A332934.P15994653242159923900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A002821 d) (A000954 n)

end

end A332934.P15994653242159923900

namespace A332934

/-- `∑{d}[n+1, A002821(#)]%A000954(n)` -/
def P15994653242159923900.Spec : Prop :=
  ∀ n, P15994653242159923900.a n = A332934 (n + 1)

end A332934

/-! ## A332934.P7060043569670209671

`A028310(∑{d}[n+1, A002821(#)])`
-/

namespace A332934.P7060043569670209671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A002821 d).toNat

end

end A332934.P7060043569670209671

namespace A332934

/-- `A028310(∑{d}[n+1, A002821(#)])` -/
def P7060043569670209671.Spec : Prop :=
  ∀ n, P7060043569670209671.a n = A332934 (n + 1)

end A332934

/-! ## A332934.P5006321096531628059

`A065033(2*∑{d}[n+1, A002821(#)])`
-/

namespace A332934.P5006321096531628059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (∑ d ∈ Nat.divisors (f1 n), A002821 d)).toNat

end

end A332934.P5006321096531628059

namespace A332934

/-- `A065033(2*∑{d}[n+1, A002821(#)])` -/
def P5006321096531628059.Spec : Prop :=
  ∀ n, P5006321096531628059.a n = A332934 (n + 1)

end A332934

/-!
# A332935: Sum of ceiling(n^(3/2)) where d runs through the divisors of n.

The programs for A332935, the canonical program `A332935.P18370354576889052317` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332935 has offset 1).

The definition of A332935 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332935.P18370354576889052317

`∑{d}[n+1, ceil(sqrt(#^3))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332935

/-- `∑{d}[n+1, ceil(sqrt(#^3))]` -/
def P18370354576889052317.Spec : Prop :=
  ∀ n, P18370354576889052317.a n = A332935 (n + 1)

theorem P18370354576889052317.correct : P18370354576889052317.Spec := by
  intro n
  simp only [A332935, Nat.add_sub_cancel]

end A332935

/-! ## A332935.P3294456926550879312

`abs(∑{d}[n+1, A185549(#)]-1)+1`
-/

namespace A332935.P3294456926550879312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A185549 d - 1| + 1

end

end A332935.P3294456926550879312

namespace A332935

/-- `abs(∑{d}[n+1, A185549(#)]-1)+1` -/
def P3294456926550879312.Spec : Prop :=
  ∀ n, P3294456926550879312.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P17519693241397523991

`A056595(n+1)+∑{d}[n+1, floor(sqrt(#^3))]`
-/

namespace A332935.P17519693241397523991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.sqrt (d ^ 3) : ℕ) : ℤ)

end

end A332935.P17519693241397523991

namespace A332935

/-- `A056595(n+1)+∑{d}[n+1, floor(sqrt(#^3))]` -/
def P17519693241397523991.Spec : Prop :=
  ∀ n, P17519693241397523991.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P17777515062741510055

`A332933(n+1)+A056595(n+1)`
-/

namespace A332935.P17777515062741510055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332933 (n + 1) + A056595 (n + 1)

end

end A332935.P17777515062741510055

namespace A332935

/-- `A332933(n+1)+A056595(n+1)` -/
def P17777515062741510055.Spec : Prop :=
  ∀ n, P17777515062741510055.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P13954537975041707901

`∑{d}[n+1, A185549(#)]%A000040(n+1)²`
-/

namespace A332935.P13954537975041707901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A185549 d) (A000040 (n + 1) ^ 2)

end

end A332935.P13954537975041707901

namespace A332935

/-- `∑{d}[n+1, A185549(#)]%A000040(n+1)²` -/
def P13954537975041707901.Spec : Prop :=
  ∀ n, P13954537975041707901.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P16347392992623528118

`A332932(n+1)+A332933(n+1)-A086671(n+1)`
-/

namespace A332935.P16347392992623528118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (n + 1) + (A332933 (n + 1) - A086671 (n + 1))

end

end A332935.P16347392992623528118

namespace A332935

/-- `A332932(n+1)+A332933(n+1)-A086671(n+1)` -/
def P16347392992623528118.Spec : Prop :=
  ∀ n, P16347392992623528118.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P15378354850112170219

`∑{d}[n+1, A185549(#)]+A008683(12*n+8)`
-/

namespace A332935.P15378354850112170219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185549 d + A008683 (12 * n + 8)

end

end A332935.P15378354850112170219

namespace A332935

/-- `∑{d}[n+1, A185549(#)]+A008683(12*n+8)` -/
def P15378354850112170219.Spec : Prop :=
  ∀ n, P15378354850112170219.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P2531756716419474922

`A000027(∑{d}[n+1, A185549(#)])`
-/

namespace A332935.P2531756716419474922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A185549 d).toNat

end

end A332935.P2531756716419474922

namespace A332935

/-- `A000027(∑{d}[n+1, A185549(#)])` -/
def P2531756716419474922.Spec : Prop :=
  ∀ n, P2531756716419474922.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P1390756635715297196

`A028310(∑{d}[n+1, A185549(#)])`
-/

namespace A332935.P1390756635715297196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A185549 d).toNat

end

end A332935.P1390756635715297196

namespace A332935

/-- `A028310(∑{d}[n+1, A185549(#)])` -/
def P1390756635715297196.Spec : Prop :=
  ∀ n, P1390756635715297196.a n = A332935 (n + 1)

end A332935

/-! ## A332935.P10273016631212643852

`A007318(∑[n])*∑{d}[n+1, A185549(#)]`
-/

namespace A332935.P10273016631212643852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ d ∈ Nat.divisors (f2 n), A185549 d)

end

end A332935.P10273016631212643852

namespace A332935

/-- `A007318(∑[n])*∑{d}[n+1, A185549(#)]` -/
def P10273016631212643852.Spec : Prop :=
  ∀ n, P10273016631212643852.a n = A332935 (n + 1)

end A332935

/-!
# A332936: Number of blue nodes in n-th power graph W exponentiation of a cycle graph with 7 blue nodes and 1 green node.

The programs for A332936, the canonical program `A332936.P17568384257703294195` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332936 has offset 0).

The definition of A332936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332936.P17568384257703294195

`8*a(n-1)-3*a(n-2)` with `a(0)=7, a(1)=51`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332936

/-- `8*a(n-1)-3*a(n-2)` -/
def P17568384257703294195.Spec : Prop :=
  ∀ n, P17568384257703294195.a n = A332936 n

theorem P17568384257703294195.correct : P17568384257703294195.Spec := by
  intro n
  simp only [A332936]

end A332936

/-! ## A332936.P10641487625533395544

`7*A190976(n+1)-5*A190976(n)`
-/

namespace A332936.P10641487625533395544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A190976 (n + 1) - 5 * A190976 n

end

end A332936.P10641487625533395544

namespace A332936

/-- `7*A190976(n+1)-5*A190976(n)` -/
def P10641487625533395544.Spec : Prop :=
  ∀ n, P10641487625533395544.a n = A332936 n

end A332936

/-! ## A332936.P4069240321380781378

`ogf((7-5x)/(1-8x+3x^2))`
-/

namespace A332936.P4069240321380781378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -5] [1, -8, 3] n

end

end A332936.P4069240321380781378

namespace A332936

/-- `ogf((7-5x)/(1-8x+3x^2))` -/
def P4069240321380781378.Spec : Prop :=
  ∀ n, P4069240321380781378.a n = A332936 n

end A332936

/-! ## A332936.P7404731177009258793

`Δ[A331211(n)/2]`
-/

namespace A332936.P7404731177009258793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331211 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332936.P7404731177009258793

namespace A332936

/-- `Δ[A331211(n)/2]` -/
def P7404731177009258793.Spec : Prop :=
  ∀ n, P7404731177009258793.a n = (A332936 n : ℚ)

end A332936

/-! ## A332936.P8159433704791339106

`Δ[(A154636(n+1)-∑[A154636(n)])/2]`
-/

namespace A332936.P8159433704791339106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154636 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A154636 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332936.P8159433704791339106

namespace A332936

/-- `Δ[(A154636(n+1)-∑[A154636(n)])/2]` -/
def P8159433704791339106.Spec : Prop :=
  ∀ n, P8159433704791339106.a n = (A332936 n : ℚ)

end A332936

/-!
# A332937: a(n) is the greatest common divisor of the first two terms of row n of the Wythoff array (A035513).

The programs for A332937, the canonical program `A332937.P611220943154796213` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332937 has offset 1).

The definition of A332937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332937.P8402838598969004104

`gcd(n, floor(ϕ*(n+1)))`
-/

namespace A332937.P8402838598969004104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A332937.P8402838598969004104

namespace A332937

/-- `gcd(n, floor(ϕ*(n+1)))` -/
def P8402838598969004104.Spec : Prop :=
  ∀ n, (P8402838598969004104.a n : ℤ) = A332937 (n + 1)

end A332937

/-! ## A332937.P11507332647495743131

`gcd(2*ceil((n+1)/ϕ), 2*n)/2`
-/

namespace A332937.P11507332647495743131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * ⌈(n + 1 : ℝ) / Real.goldenRatio⌉) (2 * n : ℤ) : ℚ) / 2

end

end A332937.P11507332647495743131

namespace A332937

/-- `gcd(2*ceil((n+1)/ϕ), 2*n)/2` -/
def P11507332647495743131.Spec : Prop :=
  ∀ n, P11507332647495743131.a n = (A332937 (n + 1) : ℚ)

end A332937

/-! ## A332937.P655214205791079232

`sqrt(gcd(n², A022344(n)))`
-/

namespace A332937.P655214205791079232
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (n ^ 2 : ℤ) (A022344 n) : ℝ)

end

end A332937.P655214205791079232

namespace A332937

/-- `sqrt(gcd(n², A022344(n)))` -/
def P655214205791079232.Spec : Prop :=
  ∀ n, P655214205791079232.a n = (A332937 (n + 1) : ℝ)

end A332937

/-! ## A332937.P611220943154796213

`ceil(gcd(2*A000201(n+1), 2*n)/2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332937

/-- `ceil(gcd(2*A000201(n+1), 2*n)/2)` -/
def P611220943154796213.Spec : Prop :=
  ∀ n, P611220943154796213.a n = A332937 (n + 1)

theorem P611220943154796213.correct : P611220943154796213.Spec := by
  intro n
  simp only [A332937, Nat.add_sub_cancel]

end A332937

/-! ## A332937.P7935919009243327558

`A028310(gcd(n, ∑[A001468(n)]))`
-/

namespace A332937.P7935919009243327558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A332937.P7935919009243327558

namespace A332937

/-- `A028310(gcd(n, ∑[A001468(n)]))` -/
def P7935919009243327558.Spec : Prop :=
  ∀ n, P7935919009243327558.a n = A332937 (n + 1)

end A332937

/-! ## A332937.P3500208439282462384

`A004525(gcd(2*n, ∑[2*A001468(n)]))`
-/

namespace A332937.P3500208439282462384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.gcd (2 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A332937.P3500208439282462384

namespace A332937

/-- `A004525(gcd(2*n, ∑[2*A001468(n)]))` -/
def P3500208439282462384.Spec : Prop :=
  ∀ n, P3500208439282462384.a n = A332937 (n + 1)

end A332937

/-! ## A332937.P987173460705940898

`A028310(gcd(n-2*n, A003622(n+1)))`
-/

namespace A332937.P987173460705940898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd ((n : ℤ) - (2 * n : ℤ)) (A003622 (n + 1)))

end

end A332937.P987173460705940898

namespace A332937

/-- `A028310(gcd(n-2*n, A003622(n+1)))` -/
def P987173460705940898.Spec : Prop :=
  ∀ n, P987173460705940898.a n = A332937 (n + 1)

end A332937

/-!
# A332938: Indices of the primitive rows of the Wythoff array (A035513); see Comments.

The programs for A332938, there is no canonical definition to state claims against.
-/

/-! ## A332938.P12774686953649898095

`eq[1, gcd(n, floor(ϕ*(n+1)))]+1`
-/

namespace A332938.P12774686953649898095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A332938.P12774686953649898095

/-! ## A332938.P9610856642051115814

`eq[1, A332937(n+1)]+1`
-/

namespace A332938.P9610856642051115814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332938.P9610856642051115814

/-! ## A332938.P2997352930832938088

`lt[gcd(n, A022344(n)), 2]+1`
-/

namespace A332938.P2997352930832938088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A022344 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A332938.P2997352930832938088

/-! ## A332938.P4542068889380819123

`comp[A360374(n+1)-1]+1`
-/

namespace A332938.P4542068889380819123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360374 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A332938.P4542068889380819123

/-! ## A332938.P16922516738009536282

`eq[1, gcd(A028310(n)-1, ceil(n/ϕ))]`
-/

namespace A332938.P16922516738009536282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n - 1) ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332938.P16922516738009536282

/-! ## A332938.P22178501907075100

`eq[1, A000027(gcd(n-2*n, ceil((n+1)/ϕ)))]+1`
-/

namespace A332938.P22178501907075100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.gcd ((n : ℤ) - (2 * n : ℤ)) ⌈(n + 1 : ℝ) / Real.goldenRatio⌉)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332938.P22178501907075100

/-! ## A332938.P17162243321397211355

`record[A000027(n+1)/A332937(n+1)]`
-/

namespace A332938.P17162243321397211355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A332937 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332938.P17162243321397211355

/-! ## A332938.P10154086426893792672

`record[A008611(3*n)/A332937(n+1)]`
-/

namespace A332938.P10154086426893792672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A332937 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332938.P10154086426893792672

/-! ## A332938.P14175744362920694324

`record[A005408(n)-n*A332937(n+1)]`
-/

namespace A332938.P14175744362920694324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A332937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332938.P14175744362920694324

/-!
# A332939: The number of steps to return to the origin for a walk on a 2D square grid where the walk changes direction to move as close as possible toward the origin after it has taken a prime number of steps; backtracking on its previous step is not allowed.

The programs for A332939, there is no canonical definition to state claims against.
-/

/-! ## A332939.P8405561317313795961

`A035026(A080138(∑[n+1]))`
-/

namespace A332939.P8405561317313795961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035026 (A080138 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A332939.P8405561317313795961

/-!
# A332940: a(n) is the least prime p such that p = x^2 + (2g+1)*y^2 and p != 2*g+1 and p mod (2g+1) != 1 where g is the n-th Sophie Germain prime.

The programs for A332940, there is no canonical definition to state claims against.
-/

/-! ## A332940.P7588425744708117949

`A275115(A005385(n+1))`
-/

namespace A332940.P7588425744708117949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (A005385 (n + 1)).toNat

end

end A332940.P7588425744708117949

/-! ## A332940.P11918174140778249764

`A275115(record[A023590(n+1)])`
-/

namespace A332940.P11918174140778249764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332940.P11918174140778249764

/-! ## A332940.P2452161893711450124

`A275115(record[A023592(n+1)])`
-/

namespace A332940.P2452161893711450124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332940.P2452161893711450124

/-! ## A332940.P8016490985415302349

`A275115(record[A023594(n+1)])`
-/

namespace A332940.P8016490985415302349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332940.P8016490985415302349

/-! ## A332940.P16051838265095981863

`A275115(p?[A072055(n+1)])`
-/

namespace A332940.P16051838265095981863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A332940.P16051838265095981863

/-!
# A332941: Lexicographically earliest sequence of positive numbers in which no set of consecutive terms sums to a prime.

The programs for A332941, there is no canonical definition to state claims against.
-/

/-! ## A332941.P3024801777299187941

`Δ[A072545(n)]`
-/

namespace A332941.P3024801777299187941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332941.P3024801777299187941

/-! ## A332941.P2067793503972240789

`A072545(n+1)-A072545(n)`
-/

namespace A332941.P2067793503972240789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072545 (n + 1) - A072545 n

end

end A332941.P2067793503972240789

/-! ## A332941.P11155300222742810043

`Δ[A025043(n+1)]`
-/

namespace A332941.P11155300222742810043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332941.P11155300222742810043

/-! ## A332941.P10341918331349904180

`A025043(n+2)-A025043(n+1)`
-/

namespace A332941.P10341918331349904180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (n + 2) - A025043 (n + 1)

end

end A332941.P10341918331349904180

/-! ## A332941.P17530290927256670780

`abs(Δ[A025043(A008620(3*n))])`
-/

namespace A332941.P17530290927256670780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025043 (A008620 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A332941.P17530290927256670780

/-! ## A332941.P4739095899068674539

`Δ[eq[0, A014589(n)]]`
-/

namespace A332941.P4739095899068674539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014589 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A332941.P4739095899068674539

/-! ## A332941.P13272774988799651576

`Δ[A227764(n+1)]`
-/

namespace A332941.P13272774988799651576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332941.P13272774988799651576

/-! ## A332941.P15553425481159336696

`A227764(n+2)-A227764(n+1)`
-/

namespace A332941.P15553425481159336696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227764 (n + 2) - A227764 (n + 1)

end

end A332941.P15553425481159336696

/-!
# A332942: Number of entries in the second blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332942, there is no canonical definition to state claims against.
-/

/-! ## A332942.P10983010859724113459

`A319298(∑[n+1]+2)`
-/

namespace A332942.P10983010859724113459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A332942.P10983010859724113459

/-! ## A332942.P5856501495408745403

`record[A319298(A061579(n)+3)]`
-/

namespace A332942.P5856501495408745403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332942.P5856501495408745403

/-! ## A332942.P14396394017811985386

`record[gcd(A090181(n), A319298(n+2))]`
-/

namespace A332942.P14396394017811985386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A090181 n) (A319298 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332942.P14396394017811985386

/-! ## A332942.P5969936308860620673

`record[gcd(1-A002262(n), A319298(n+1))]`
-/

namespace A332942.P5969936308860620673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A002262 n) (A319298 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332942.P5969936308860620673

/-! ## A332942.P17685326158313689909

`record[gcd(A098825(n), A319298(n+1))]`
-/

namespace A332942.P17685326158313689909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A319298 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332942.P17685326158313689909

/-! ## A332942.P9585348030579453750

`record[A319298(A276946(n+1)+2)]`
-/

namespace A332942.P9585348030579453750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A276946 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332942.P9585348030579453750

/-!
# A332943: Number of entries in the third blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332943, there is no canonical definition to state claims against.
-/

/-! ## A332943.P6853942082998529842

`A319298(∑[n+2]+4)`
-/

namespace A332943.P6853942082998529842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A332943.P6853942082998529842

/-! ## A332943.P1541314722461114900

`record[gcd(2-A002262(n), A319298(n+1))]`
-/

namespace A332943.P1541314722461114900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002262 n) (A319298 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332943.P1541314722461114900

/-! ## A332943.P2999190776482150953

`A319298(A167614(n+1))^A178334(n)`
-/

namespace A332943.P2999190776482150953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319298 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A332943.P2999190776482150953

/-! ## A332943.P5640933443953645790

`gcd(A000038(n), A319298(A167614(n+1)))`
-/

namespace A332943.P5640933443953645790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319298 (A167614 (n + 1)).toNat)

end

end A332943.P5640933443953645790

/-! ## A332943.P2940443724673219424

`lcm(A087960(n), A319298(A167614(n+1)))`
-/

namespace A332943.P2940443724673219424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A319298 (A167614 (n + 1)).toNat)

end

end A332943.P2940443724673219424

/-! ## A332943.P18231522074374325302

`or(A000007(n), A319298(A167614(n+1)))`
-/

namespace A332943.P18231522074374325302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A319298 (A167614 (n + 1)).toNat)

end

end A332943.P18231522074374325302

/-! ## A332943.P2545641130723386052

`A319298(A167614(n+1))%A206953(n+1)`
-/

namespace A332943.P2545641130723386052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319298 (A167614 (n + 1)).toNat) (A206953 (n + 1))

end

end A332943.P2545641130723386052

/-!
# A332944: Number of entries in the fourth blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332944, there is no canonical definition to state claims against.
-/

/-! ## A332944.P5622400892238494193

`A319298(A052905(n)+9)`
-/

namespace A332944.P5622400892238494193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A052905 n + 9).toNat

end

end A332944.P5622400892238494193

/-! ## A332944.P12383202226269323521

`A319298(A055999(n)+10)`
-/

namespace A332944.P12383202226269323521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A055999 n + 10).toNat

end

end A332944.P12383202226269323521

/-! ## A332944.P13178680803882925951

`A319298(A167614(n+2)+1)`
-/

namespace A332944.P13178680803882925951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167614 (n + 2) + 1).toNat

end

end A332944.P13178680803882925951

/-! ## A332944.P2909282737567237711

`A319298(A167487(n+2)-3)`
-/

namespace A332944.P2909282737567237711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167487 (n + 2) - 3).toNat

end

end A332944.P2909282737567237711

/-! ## A332944.P1147963177376081896

`A319298(A000217(n+3)+4)`
-/

namespace A332944.P1147963177376081896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000217 (n + 3) + 4).toNat

end

end A332944.P1147963177376081896

/-! ## A332944.P4941805220699090461

`A319298(A167499(n+3)-(n+5))`
-/

namespace A332944.P4941805220699090461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167499 (n + 3) - (n + 5 : ℤ)).toNat

end

end A332944.P4941805220699090461

/-!
# A332945: Number of entries in the fifth blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332945, there is no canonical definition to state claims against.
-/

/-! ## A332945.P4542074781408045930

`A319298(A167499(n+3))`
-/

namespace A332945.P4542074781408045930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167499 (n + 3)).toNat

end

end A332945.P4542074781408045930

/-! ## A332945.P6807871471488981435

`A319298(A155212(n)+13)`
-/

namespace A332945.P6807871471488981435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A155212 n + 13).toNat

end

end A332945.P6807871471488981435

/-! ## A332945.P14583994302063081203

`A319298(A000124(n+4)+4)`
-/

namespace A332945.P14583994302063081203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000124 (n + 4) + 4).toNat

end

end A332945.P14583994302063081203

/-! ## A332945.P17160211582649002223

`A319298(A000217(n+4)+5)`
-/

namespace A332945.P17160211582649002223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000217 (n + 4) + 5).toNat

end

end A332945.P17160211582649002223

/-! ## A332945.P16450312985416956357

`A319298(A000096(n+4)-(n-1))`
-/

namespace A332945.P16450312985416956357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A332945.P16450312985416956357

/-!
# A332946: Number of entries in the sixth blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332946, there is no canonical definition to state claims against.
-/

/-! ## A332946.P8213910292738635162

`A319298(A000124(n+5)+5)`
-/

namespace A332946.P8213910292738635162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000124 (n + 5) + 5).toNat

end

end A332946.P8213910292738635162

/-! ## A332946.P94263405109856309

`A319298(A000096(n+4)+7)`
-/

namespace A332946.P94263405109856309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000096 (n + 4) + 7).toNat

end

end A332946.P94263405109856309

/-! ## A332946.P5165102072287255510

`A319298(A000217(n+5)+6)`
-/

namespace A332946.P5165102072287255510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000217 (n + 5) + 6).toNat

end

end A332946.P5165102072287255510

/-! ## A332946.P614193527621896024

`A319298(A055998(n+3)+9)`
-/

namespace A332946.P614193527621896024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A055998 (n + 3) + 9).toNat

end

end A332946.P614193527621896024

/-! ## A332946.P12927159788576594823

`A319298(A055999(n)+A005408(n+10))`
-/

namespace A332946.P12927159788576594823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A055999 n + A005408 (n + 10)).toNat

end

end A332946.P12927159788576594823

/-! ## A332946.P2797062098681382849

`A319298(A020715(n)+A056000(n)+15)`
-/

namespace A332946.P2797062098681382849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A020715 n + (A056000 n + 15)).toNat

end

end A332946.P2797062098681382849

/-!
# A332947: Number of entries in the seventh blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332947, there is no canonical definition to state claims against.
-/

/-! ## A332947.P3194665457589492068

`A319298(A167487(n+5))`
-/

namespace A332947.P3194665457589492068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167487 (n + 5)).toNat

end

end A332947.P3194665457589492068

/-! ## A332947.P11732670381861984633

`A319298(A167499(n+5)+2)`
-/

namespace A332947.P11732670381861984633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167499 (n + 5) + 2).toNat

end

end A332947.P11732670381861984633

/-! ## A332947.P16898952071786681473

`A319298(A000096(n+5)+8)`
-/

namespace A332947.P16898952071786681473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000096 (n + 5) + 8).toNat

end

end A332947.P16898952071786681473

/-! ## A332947.P18282327402098613004

`A319298(A000217(n+6)+7)`
-/

namespace A332947.P18282327402098613004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000217 (n + 6) + 7).toNat

end

end A332947.P18282327402098613004

/-! ## A332947.P7225851552256140271

`A319298(A052905(n+3)+12)`
-/

namespace A332947.P7225851552256140271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A052905 (n + 3) + 12).toNat

end

end A332947.P7225851552256140271

/-! ## A332947.P11410641311790419303

`A319298(eq[7, A002260(n+1)]+1)`
-/

namespace A332947.P11410641311790419303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A332947.P11410641311790419303

/-!
# A332948: Number of entries in the eighth blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332948, there is no canonical definition to state claims against.
-/

/-! ## A332948.P13566004110849091051

`A319298(A167499(n+6)+3)`
-/

namespace A332948.P13566004110849091051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A167499 (n + 6) + 3).toNat

end

end A332948.P13566004110849091051

/-! ## A332948.P13426727222931638333

`A319298(A000124(n+7)+7)`
-/

namespace A332948.P13426727222931638333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000124 (n + 7) + 7).toNat

end

end A332948.P13426727222931638333

/-! ## A332948.P12103507429577115363

`A319298(A000217(n+7)+8)`
-/

namespace A332948.P12103507429577115363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000217 (n + 7) + 8).toNat

end

end A332948.P12103507429577115363

/-! ## A332948.P11012383008443075425

`A319298(eq[9, A131818(n+1)])`
-/

namespace A332948.P11012383008443075425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332948.P11012383008443075425

/-! ## A332948.P13172885197599065724

`A319298(A020715(n)²-A056000(n))`
-/

namespace A332948.P13172885197599065724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A020715 n ^ 2 - A056000 n).toNat

end

end A332948.P13172885197599065724

/-!
# A332949: Number of entries in the ninth blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332949, there is no canonical definition to state claims against.
-/

/-! ## A332949.P15072472260107505541

`A319298(C(n+10, 2)-n)`
-/

namespace A332949.P15072472260107505541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (Nat.choose (n + 10) 2 - n)

end

end A332949.P15072472260107505541

/-! ## A332949.P15816517665677365294

`A319298(eq[17, A066657(n)])`
-/

namespace A332949.P15816517665677365294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332949.P15816517665677365294

/-! ## A332949.P3772737499270478922

`A319298(A027379(n+6)+12)`
-/

namespace A332949.P3772737499270478922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A027379 (n + 6) + 12).toNat

end

end A332949.P3772737499270478922

/-! ## A332949.P755817908263104462

`A319298(eq[10, A131818(n+1)])`
-/

namespace A332949.P755817908263104462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332949.P755817908263104462

/-! ## A332949.P13137537645304513911

`A319298(A000124(n+10)-10-xor(1, 2*n))`
-/

namespace A332949.P13137537645304513911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A000124 (n + 10) - 10 - (Nat.xor 1 (2 * n) : ℤ)).toNat

end

end A332949.P13137537645304513911

/-!
# A332950: Number of entries in the tenth blocks of all set partitions of [n] when blocks are ordered by increasing lengths.

The programs for A332950, there is no canonical definition to state claims against.
-/

/-! ## A332950.P2780322018641803438

`A319298(eq[11, A131818(n+1)])`
-/

namespace A332950.P2780322018641803438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A332950.P2780322018641803438

/-! ## A332950.P4476790978108020134

`A319298(A001489(n+1)+A000124(n+10))`
-/

namespace A332950.P4476790978108020134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319298 (A001489 (n + 1) + A000124 (n + 10)).toNat

end

end A332950.P4476790978108020134

/-!
# A332951: Numbers m such that A245486(k) = m for some k.

The programs for A332951, there is no canonical definition to state claims against.
-/

/-! ## A332951.P5189874865051787441

`eq[n, A233583(∏{p}[n, n/#]+1)]`
-/

namespace A332951.P5189874865051787441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f3 n), (n : ℚ) / (p : ℚ) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332951.P5189874865051787441

/-! ## A332951.P895455678450328374

`record[∏{p}[n+1, -#]*A225152(n)]`
-/

namespace A332951.P895455678450328374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))) * A225152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332951.P895455678450328374

/-! ## A332951.P6783848639509839040

`record[A321188(n+1)+∏{p}[n+1, -#]]`
-/

namespace A332951.P6783848639509839040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321188 (n + 1) + ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332951.P6783848639509839040

/-! ## A332951.P16223705000068053732

`filter[A119605(n+2), A391844(#)]`
-/

namespace A332951.P16223705000068053732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391844 (f1 j).toNat = 1) n)

end

end A332951.P16223705000068053732

/-! ## A332951.P8525383394252897394

`A010052(A064934(n))+record[∏{p}[n, -#]]`
-/

namespace A332951.P8525383394252897394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A064934 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332951.P8525383394252897394

/-!
# A332952: Squarefree semiprimes which never occur in A245486.

The programs for A332952, there is no canonical definition to state claims against.
-/

/-! ## A332952.P10746342488098459971

`A100484(lt[A321906(3*(n+1)), A008578(n+1)])`
-/

namespace A332952.P10746342488098459971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321906 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332952.P10746342488098459971

/-! ## A332952.P5339521887493809600

`A100484(lt[A239896(3*n+4), A245555(n+1)])`
-/

namespace A332952.P5339521887493809600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239896 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A332952.P5339521887493809600

/-!
# A332953: The number of regions formed inside an isosceles triangle by straight line segments mutually connecting all vertices and all points that divide the two equal length sides into n equal parts; the base of the triangle contains no points other than its vertices.

The programs for A332953, there is no canonical definition to state claims against.
-/

/-! ## A332953.P1637088615492484763

`A333027(n+1)+1-A333026(n+1)`
-/

namespace A332953.P1637088615492484763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333027 (n + 1) + (1 - A333026 (n + 1))

end

end A332953.P1637088615492484763

/-! ## A332953.P837092277298109799

`A333027(n+1)+A024000(A333026(n+1))`
-/

namespace A332953.P837092277298109799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333027 (n + 1) + A024000 (A333026 (n + 1)).toNat

end

end A332953.P837092277298109799

/-! ## A332953.P17872436469763546646

`∑[∑[A335241(A024979(n+3))]]`
-/

namespace A332953.P17872436469763546646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335241 (A024979 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332953.P17872436469763546646

/-!
# A332954: Triangle read by rows: T(n,k) is the number of permutations sigma of [n] such that sigma(j)/(j+k) > sigma(j+1)/(j+k+1) for 1 <= j <= n-1.

The programs for A332954, there is no canonical definition to state claims against.
-/

/-! ## A332954.P704391621543172780

`A117707(A258709(n))`
-/

namespace A332954.P704391621543172780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A258709 n).toNat

end

end A332954.P704391621543172780

/-! ## A332954.P14772213766665983955

`A172263(A258709(n)+1)`
-/

namespace A332954.P14772213766665983955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A258709 n + 1).toNat

end

end A332954.P14772213766665983955

/-! ## A332954.P5427398311455550867

`A172263(or(1, A258709(n)))`
-/

namespace A332954.P5427398311455550867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (Int.lor 1 (A258709 n)).toNat

end

end A332954.P5427398311455550867

/-! ## A332954.P11972615499886068692

`A225644(A258709(comp[∑[n]]))`
-/

namespace A332954.P11972615499886068692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A258709 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A332954.P11972615499886068692

/-! ## A332954.P1565352455894022230

`A003244(A004736(n+1)%A164732(3*n+5))`
-/

namespace A332954.P1565352455894022230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003244 (Int.tmod (A004736 (n + 1)) (A164732 (3 * n + 5))).toNat

end

end A332954.P1565352455894022230

/-!
# A332956: Symmetrical Zumkeller numbers: numbers s whose divisors can be partitioned into two disjoint sets with equal sum and whose non-divisors less than s can also be partitioned in such a way.

The programs for A332956, there is no canonical definition to state claims against.
-/

/-! ## A332956.P17401287344399312225

`∩[4*n, A083207(n+1)]`
-/

namespace A332956.P17401287344399312225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332956.P17401287344399312225

/-! ## A332956.P13748576805332732471

`∩[4*n, A246198(n+1)]`
-/

namespace A332956.P13748576805332732471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332956.P13748576805332732471

/-! ## A332956.P5537043760269291736

`2*(eq[gcd(2, n), A179527(2*(n+1))]+1)`
-/

namespace A332956.P5537043760269291736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A332956.P5537043760269291736

/-! ## A332956.P11323696160078713340

`filter[A008574(n), A179527(#)]`
-/

namespace A332956.P11323696160078713340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P11323696160078713340

/-! ## A332956.P10093385595304063620

`filter[A067016(n), A179527(#)]`
-/

namespace A332956.P10093385595304063620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P10093385595304063620

/-! ## A332956.P12369329743636236685

`filter[A199627(n), A179527(#)]`
-/

namespace A332956.P12369329743636236685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P12369329743636236685

/-! ## A332956.P2088669894894464694

`filter[A200535(n), A179527(#)]`
-/

namespace A332956.P2088669894894464694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P2088669894894464694

/-! ## A332956.P4807694547875277818

`filter[A257088(n), A179527(#)]`
-/

namespace A332956.P4807694547875277818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P4807694547875277818

/-! ## A332956.P16806042373045170296

`filter[A267046(n), A179527(#)]`
-/

namespace A332956.P16806042373045170296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P16806042373045170296

/-! ## A332956.P6083366412999130325

`filter[A336705(n), A179527(#)]`
-/

namespace A332956.P6083366412999130325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A332956.P6083366412999130325

/-!
# A332958: Number of labeled forests with 2n nodes consisting of n-1 isolated nodes and a labeled tree with n+1 nodes.

The programs for A332958, the canonical program `A332958.P16869933014231524395` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332958 has offset 1).

The definition of A332958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332958.P16869933014231524395

`C(2*(n+1), n)*(n+2)^n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332958

/-- `C(2*(n+1), n)*(n+2)^n` -/
def P16869933014231524395.Spec : Prop :=
  ∀ n, (P16869933014231524395.a n : ℤ) = A332958 (n + 1)

theorem P16869933014231524395.correct : P16869933014231524395.Spec := by
  intro n
  simp only [A332958, Nat.add_sub_cancel]

end A332958

/-! ## A332958.P5913705630268030363

`A001791(n+1)*A000272(n+2)`
-/

namespace A332958.P5913705630268030363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A000272 (n + 2)

end

end A332958.P5913705630268030363

namespace A332958

/-- `A001791(n+1)*A000272(n+2)` -/
def P5913705630268030363.Spec : Prop :=
  ∀ n, P5913705630268030363.a n = A332958 (n + 1)

end A332958

/-! ## A332958.P3454198833337870884

`(n+1)*A000108(n+1)*(n+2)^n`
-/

namespace A332958.P3454198833337870884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 (n + 1) * ((n + 2) ^ n : ℤ)

end

end A332958.P3454198833337870884

namespace A332958

/-- `(n+1)*A000108(n+1)*(n+2)^n` -/
def P3454198833337870884.Spec : Prop :=
  ∀ n, P3454198833337870884.a n = A332958 (n + 1)

end A332958

/-! ## A332958.P8075911889589418978

`A332959(∑[n+1])`
-/

namespace A332958.P8075911889589418978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332958.P8075911889589418978

namespace A332958

/-- `A332959(∑[n+1])` -/
def P8075911889589418978.Spec : Prop :=
  ∀ n, P8075911889589418978.a n = A332958 (n + 1)

end A332958

/-! ## A332958.P5130806987263169138

`A059300(A056220(n+1))`
-/

namespace A332958.P5130806987263169138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (A056220 (n + 1)).toNat

end

end A332958.P5130806987263169138

namespace A332958

/-- `A059300(A056220(n+1))` -/
def P5130806987263169138.Spec : Prop :=
  ∀ n, P5130806987263169138.a n = A332958 (n + 1)

end A332958

/-!
# A332959: Triangle read by rows: T(n,k) is the number of labeled forests with n trees and 2n nodes and with the largest tree having exactly k nodes, (n >= 1, 2 <= k <= n+1).

The programs for A332959, there is no canonical definition to state claims against.
-/

/-! ## A332959.P12859058422848097729

`∩[A111271(n+1), A207524(n+2)]`
-/

namespace A332959.P12859058422848097729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207524 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332959.P12859058422848097729

/-! ## A332959.P9871617406915103409

`record[gcd(A033632(n+1), A284012(n+1))]`
-/

namespace A332959.P9871617406915103409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033632 (n + 1)) (A284012 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332959.P9871617406915103409

/-!
# A332960: Number of labeled forests with n trees and 2n nodes and with the largest tree having exactly 3 nodes.

The programs for A332960, there is no canonical definition to state claims against.
-/

/-! ## A332960.P15327281474173180020

`record[char[∑[n+1]]*A332959(n+2)]`
-/

namespace A332960.P15327281474173180020
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A332959 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332960.P15327281474173180020

/-! ## A332960.P1468301120748074616

`lcm(n, A332959(A133263(n)))`
-/

namespace A332960.P1468301120748074616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A332959 (A133263 n).toNat)

end

end A332960.P1468301120748074616

/-! ## A332960.P16492606681194217646

`and(A057428(n), A332959(A133263(n)))`
-/

namespace A332960.P16492606681194217646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A332959 (A133263 n).toNat)

end

end A332960.P16492606681194217646

/-! ## A332960.P11422038279436947612

`A332959(A133263(n))%A099996(3*n)`
-/

namespace A332960.P11422038279436947612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332959 (A133263 n).toNat) (A099996 (3 * n))

end

end A332960.P11422038279436947612

/-!
# A332961: Triangle read by rows: T(n,k) is the number of labeled forests with n trees and 2n nodes and with the largest tree having at most k nodes, (n>=1, 2<=k<=n+1).

The programs for A332961, there is no canonical definition to state claims against.
-/

/-! ## A332961.P6703309053162101515

`A348066(∑[A099996(n)])`
-/

namespace A332961.P6703309053162101515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332961.P6703309053162101515

/-! ## A332961.P8569169718354198264

`A328915(A144098(n+1)*A279570(n))`
-/

namespace A332961.P8569169718354198264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328915 (A144098 (n + 1) * A279570 n).toNat

end

end A332961.P8569169718354198264

/-!
# A332962: Sum of the areas of all Pythagorean triangles with perimeter A010814(n).

The programs for A332962, there is no canonical definition to state claims against.
-/

/-! ## A332962.P12380524898900939304

`A334788(∑[A090786(n)!])`
-/

namespace A332962.P12380524898900939304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A090786 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334788 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332962.P12380524898900939304

/-!
# A332964: Triangle read by rows: T(n,k) is the number of unlabeled simple graphs on n nodes with exactly k bipartite connected components, n >= 0, 0 <= k <= n.

The programs for A332964, there is no canonical definition to state claims against.
-/

/-! ## A332964.P5616120771410878387

`gcd(A156368(n), A326032(A111106(n)))`
-/

namespace A332964.P5616120771410878387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156368 n) (A326032 (A111106 n).toNat)

end

end A332964.P5616120771410878387

/-!
# A332965: a(n) is the number of distinct values in the sequence s defined by s(1) = 0 and for any k > 0, s(k+1) = (s(k)^2+1) mod n.

The programs for A332965, there is no canonical definition to state claims against.
-/

/-! ## A332965.P4231435211044637557

`A328699(n+1)+A248218(n+1)`
-/

namespace A332965.P4231435211044637557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328699 (n + 1) + A248218 (n + 1)

end

end A332965.P4231435211044637557

/-! ## A332965.P14580885881316162303

`A214636(n+1)+A248218(n+1)-1`
-/

namespace A332965.P14580885881316162303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214636 (n + 1) + (A248218 (n + 1) - 1)

end

end A332965.P14580885881316162303

/-! ## A332965.P2577459195087251415

`A214636(n+1)+A000401(A248218(n+1))`
-/

namespace A332965.P2577459195087251415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214636 (n + 1) + A000401 (A248218 (n + 1)).toNat

end

end A332965.P2577459195087251415

/-! ## A332965.P276728384047111075

`A008554(A248218(n+1)+A214636(n+1))`
-/

namespace A332965.P276728384047111075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (A248218 (n + 1) + A214636 (n + 1)).toNat

end

end A332965.P276728384047111075

/-! ## A332965.P3062317501432735549

`A023443(A248218(n+1)+A214636(n+1))`
-/

namespace A332965.P3062317501432735549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A248218 (n + 1) + A214636 (n + 1)).toNat

end

end A332965.P3062317501432735549

/-! ## A332965.P1958692606480506535

`A248218(n+1)+A001222(2^A214636(n+1)/2)`
-/

namespace A332965.P1958692606480506535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1) + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A214636 (n + 1) : ℤ) / 2)).toNat

end

end A332965.P1958692606480506535

/-! ## A332965.P8617564695257099575

`A248218(n+1)+val(A000010(2^A214636(n+1)), 2)`
-/

namespace A332965.P8617564695257099575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1) + (SequenceMachineLib.valuation (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A214636 (n + 1) : ℤ))).toNat).toNat 2 : ℤ)

end

end A332965.P8617564695257099575

/-! ## A332965.P8952147261089824806

`A248218(n+1)+A001222(2^A214636(n+1))+or(n, -1)`
-/

namespace A332965.P8952147261089824806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1) + (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A214636 (n + 1) : ℤ))).toNat + Int.lor (n : ℤ) (-1))

end

end A332965.P8952147261089824806

/-! ## A332965.P8654072518974149477

`A248218(n+1)+or(-1, A000041(n))+A214636(n+1)+A008683(4*(n+1))`
-/

namespace A332965.P8654072518974149477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1) + (Int.lor (-1) (A000041 n) + (A214636 (n + 1) + A008683 (4 * (n + 1))))

end

end A332965.P8654072518974149477

/-!
# A332967: Sum of all integers m satisfying Omega(m) = n and pi(p) <= n for all prime factors p of m.

The programs for A332967, there is no canonical definition to state claims against.
-/

/-! ## A332967.P6296609890590478913

`A343751(∑[4*n])`
-/

namespace A332967.P6296609890590478913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332967.P6296609890590478913

/-! ## A332967.P10086018978248779537

`A000108(and(1, 1-n))*A343751(A046092(n))`
-/

namespace A332967.P10086018978248779537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (1 - (n : ℤ))).toNat * A343751 (A046092 n).toNat

end

end A332967.P10086018978248779537

/-! ## A332967.P840792336629776660

`A000108(C(2, n+2))*A343751(A046092(n))`
-/

namespace A332967.P840792336629776660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A343751 (A046092 n).toNat

end

end A332967.P840792336629776660

/-! ## A332967.P1887686434558672276

`A343751(A046092(n))+and(32, A020639(n+1))`
-/

namespace A332967.P1887686434558672276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343751 (A046092 n).toNat + Int.land 32 (A020639 (n + 1))

end

end A332967.P1887686434558672276

/-! ## A332967.P7618291854627104815

`A014963(Δ[n^4])*A343751(A046092(n))`
-/

namespace A332967.P7618291854627104815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A343751 (A046092 n).toNat

end

end A332967.P7618291854627104815

/-!
# A332968: Lesser of twin primes p, p+2 such that prime(p) and prime(p+2) are also twin primes.

The programs for A332968, there is no canonical definition to state claims against.
-/

/-! ## A332968.P7429831027390676128

`∩[A087382(n+3)-2, A087382(n+3)]`
-/

namespace A332968.P7429831027390676128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087382 (n + 3) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087382 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332968.P7429831027390676128

/-! ## A332968.P3361666100894311113

`∩[A084360(A087373(n+1)), A087382(n+3)]`
-/

namespace A332968.P3361666100894311113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A087373 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087382 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332968.P3361666100894311113

/-!
# A332970: Colombian palindromes.

The programs for A332970, there is no canonical definition to state claims against.
-/

/-! ## A332970.P7508081167212772372

`∩[A002113(n+1), A003052(n+1)]`
-/

namespace A332970.P7508081167212772372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332970.P7508081167212772372

/-! ## A332970.P3834561351579379371

`eq[A056965(n), A230093(n)]`
-/

namespace A332970.P3834561351579379371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332970.P3834561351579379371

/-! ## A332970.P2986032811843038719

`eq[A230093(n), A256756(n)]`
-/

namespace A332970.P2986032811843038719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332970.P2986032811843038719

/-! ## A332970.P18228445876009797668

`eq[A230093(n), A338827(n)]`
-/

namespace A332970.P18228445876009797668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332970.P18228445876009797668

/-! ## A332970.P18335096372435396030

`eq[sin(A230093(n)), A248327(n)]`
-/

namespace A332970.P18335096372435396030
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A230093 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A332970.P18335096372435396030

/-!
# A332971: Infinitary phibonacci numbers: solutions k of the equation iphi(k) = iphi(k-1) + iphi(k-2) where iphi(k) is an infinitary analog of Euler's phi function (A091732).

The programs for A332971, there is no canonical definition to state claims against.
-/

/-! ## A332971.P18051982003989223854

`A167703(Δ[n!]+1)+1`
-/

namespace A332971.P18051982003989223854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 1

end

end A332971.P18051982003989223854

/-!
# A332972: Solutions k of the equation cototient(k) = cototient(k-1) + cototient(k-2) where cototient(k) is A051953.

The programs for A332972, there is no canonical definition to state claims against.
-/

/-! ## A332972.P7436459217580754610

`A075290(n+1)%A287529(A074520(n))`
-/

namespace A332972.P7436459217580754610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075290 (n + 1)) (A287529 (A074520 n).toNat)

end

end A332972.P7436459217580754610

/-!
# A332978: The number of regions formed inside a triangle with leg lengths equal to the Pythagorean triples by straight line segments mutually connecting all vertices and all points that divide the sides into unit length parts.

The programs for A332978, there is no canonical definition to state claims against.
-/

/-! ## A332978.P146205053243919542

`A333137(n+1)+1-A333136(n+1)`
-/

namespace A332978.P146205053243919542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333137 (n + 1) + (1 - A333136 (n + 1))

end

end A332978.P146205053243919542

/-!
# A332979: Largest integer m satisfying Omega(m) + pi(gpf(m)) - [m<>1] = n.

The programs for A332979, there is no canonical definition to state claims against.
-/

/-! ## A332979.P14859952658350380873

`A332977(2^n-1)`
-/

namespace A332979.P14859952658350380873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332977 (2 ^ n - 1)

end

end A332979.P14859952658350380873

/-! ## A332979.P9866894753607273688

`and(-1, A332977(A000225(n)))`
-/

namespace A332979.P9866894753607273688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A332977 (A000225 n).toNat)

end

end A332979.P9866894753607273688

/-! ## A332979.P11935007939182450217

`record[A332977(A243071(n+1))]`
-/

namespace A332979.P11935007939182450217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332977 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332979.P11935007939182450217

/-! ## A332979.P6104535769884668834

`record[A332977(A252756(n+1))]`
-/

namespace A332979.P6104535769884668834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332977 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332979.P6104535769884668834

/-! ## A332979.P4611789690030205029

`record[A332977(A269386(n+1))]`
-/

namespace A332979.P4611789690030205029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332977 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332979.P4611789690030205029

/-!
# A332981: Smallest semiprime m = p*q such that the sum s = p + q can be expressed as an unordered sum of two primes in exactly n ways.

The programs for A332981, there is no canonical definition to state claims against.
-/

/-! ## A332981.P13283472955974777262

`A240692(A038431(n))`
-/

namespace A332981.P13283472955974777262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240692 (A038431 n).toNat

end

end A332981.P13283472955974777262

/-!
# A332983: Number of length-n binary words closed by an unbordered word.

The programs for A332983, there is no canonical definition to state claims against.
-/

/-! ## A332983.P17263537100026629630

`Δ[2*(A165920(n+1)+A000045(A062399(n)))]`
-/

namespace A332983.P17263537100026629630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A165920 (n + 1) + A000045 (A062399 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332983.P17263537100026629630

/-! ## A332983.P13142305035173824925

`Δ[2*(A165920(n+1)+A000045(A120126(n)))]`
-/

namespace A332983.P13142305035173824925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A165920 (n + 1) + A000045 (A120126 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332983.P13142305035173824925

/-! ## A332983.P14845908247853090104

`Δ[A000267(A191317(n)²)]`
-/

namespace A332983.P14845908247853090104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A191317 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332983.P14845908247853090104

/-! ## A332983.P4536624536404352996

`Δ[A001650(A191317(n)²)]`
-/

namespace A332983.P4536624536404352996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A191317 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332983.P4536624536404352996

/-! ## A332983.P1637013468547344525

`Δ[A004741(A191317(n)²)]`
-/

namespace A332983.P1637013468547344525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A191317 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332983.P1637013468547344525

/-!
# A332984: Triangular numbers also sum of two nonzero pentagonal numbers.

The programs for A332984, there is no canonical definition to state claims against.
-/

/-! ## A332984.P14615089589606683758

`C(A332985(n+1)+1, 2)`
-/

namespace A332984.P14615089589606683758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332985 (n + 1) + 1).toNat 2

end

end A332984.P14615089589606683758

/-! ## A332984.P6825072626830004044

`A000217(A332985(n+1))`
-/

namespace A332984.P6825072626830004044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A332985 (n + 1)).toNat

end

end A332984.P6825072626830004044

/-! ## A332984.P17045963866879113999

`A161680(A332985(n+1)+1)`
-/

namespace A332984.P17045963866879113999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A332985 (n + 1) + 1).toNat

end

end A332984.P17045963866879113999

/-! ## A332984.P15269842567048000017

`A253145(A332985(n+1)-1)`
-/

namespace A332984.P15269842567048000017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A332985 (n + 1) - 1).toNat

end

end A332984.P15269842567048000017

/-! ## A332984.P15427082722726567044

`∑{d}[A332985(n+1), A007438(#)]`
-/

namespace A332984.P15427082722726567044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A332984.P15427082722726567044

/-! ## A332984.P6570669951921388562

`A000096(A332985(n+1)-1)+1`
-/

namespace A332984.P6570669951921388562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A332985 (n + 1) - 1).toNat + 1

end

end A332984.P6570669951921388562

/-! ## A332984.P8406344094968846716

`A133263(A332985(n+1))-A263765(A020484(n))`
-/

namespace A332984.P8406344094968846716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A332985 (n + 1)).toNat - A263765 (A020484 n).toNat

end

end A332984.P8406344094968846716

/-! ## A332984.P8116798733079823769

`A000124(A332985(n+1))-A239700(A091333(n+1))`
-/

namespace A332984.P8116798733079823769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A332985 (n + 1)).toNat - A239700 (A091333 (n + 1)).toNat

end

end A332984.P8116798733079823769

/-! ## A332984.P252466823351115637

`∩[A332987(n+1), A000217(n)]`
-/

namespace A332984.P252466823351115637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332984.P252466823351115637

/-! ## A332984.P12354716057598162511

`∩[A332987(n+1), A253145(n)]`
-/

namespace A332984.P12354716057598162511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332984.P12354716057598162511

/-!
# A332985: Index of triangular numbers that are sum of two pentagonal numbers (A332984).

The programs for A332985, there is no canonical definition to state claims against.
-/

/-! ## A332985.P14993854564289048074

`A332986(n)+a(n-1)` with `a(0)=3`
-/

namespace A332985.P14993854564289048074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A332986 n + a (n - 1)

end

end A332985.P14993854564289048074

/-! ## A332985.P9977724665372179090

`floor(sqrt(2*A332984(n+1)))`
-/

namespace A332985.P9977724665372179090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A332984 (n + 1))

end

end A332985.P9977724665372179090

/-! ## A332985.P17035021479308705928

`∑[A332986(n+1)]+3-A332986(n+1)`
-/

namespace A332985.P17035021479308705928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 - A332986 (n + 1))

end

end A332985.P17035021479308705928

/-! ## A332985.P9960446389427801401

`round(sqrt(2*A332984(n+1))*A014963(15*(n+1)))`
-/

namespace A332985.P9960446389427801401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A332984 (n + 1) : ℝ) * (A014963 (15 * (n + 1)) : ℝ))

end

end A332985.P9960446389427801401

/-! ## A332985.P8061316515049079777

`A080098(A332984(n+1))`
-/

namespace A332985.P8061316515049079777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A332984 (n + 1)).toNat

end

end A332985.P8061316515049079777

/-! ## A332985.P2196092310166519898

`A294317(A332984(n+1)-2)`
-/

namespace A332985.P2196092310166519898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A332984 (n + 1) - 2).toNat

end

end A332985.P2196092310166519898

/-!
# A332986: Successive differences of index of triangular numbers sum of two pentagonal numbers.

The programs for A332986, there is no canonical definition to state claims against.
-/

/-! ## A332986.P534705402695502457

`Δ[A332985(n+1)]`
-/

namespace A332986.P534705402695502457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332986.P534705402695502457

/-! ## A332986.P1011778470694864855

`Δ[floor(sqrt(2*A332984(n+1)))]`
-/

namespace A332986.P1011778470694864855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A332984 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332986.P1011778470694864855

/-! ## A332986.P544286622192171077

`Δ[record[A332985(A126759(n))]]`
-/

namespace A332986.P544286622192171077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332986.P544286622192171077

/-! ## A332986.P12423017117071636964

`Δ[record[A332985(A152271(n))]]`
-/

namespace A332986.P12423017117071636964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332986.P12423017117071636964

/-! ## A332986.P16548736259343164790

`Δ[record[A332985(A344180(n))]]`
-/

namespace A332986.P16548736259343164790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332986.P16548736259343164790

/-! ## A332986.P18255778007488247611

`abs(Δ[A332985(A005408(n)-n)])`
-/

namespace A332986.P18255778007488247611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (A005408 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A332986.P18255778007488247611

/-! ## A332986.P16331196994081602251

`A332985(n+2)-A332985(n+1)`
-/

namespace A332986.P16331196994081602251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332985 (n + 2) - A332985 (n + 1)

end

end A332986.P16331196994081602251

/-! ## A332986.P12207272584373846174

`Δ[A080098(A332984(n+1))]`
-/

namespace A332986.P12207272584373846174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A332984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332986.P12207272584373846174

/-!
# A332987: Sums of two nonzero pentagonal numbers.

The programs for A332987, there is no canonical definition to state claims against.
-/

/-! ## A332987.P10868662810791482097

`eq[2, lcm(A100878(n), A339047(n+1))]`
-/

namespace A332987.P10868662810791482097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100878 n) (A339047 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332987.P10868662810791482097

/-! ## A332987.P4788273495182574000

`eq[A020639(A117463(n)), A100878(n)]`
-/

namespace A332987.P4788273495182574000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A117463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332987.P4788273495182574000

/-! ## A332987.P9791794314642928382

`eq[A053238(A204849(n)), A100878(n)]`
-/

namespace A332987.P9791794314642928382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A204849 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332987.P9791794314642928382

/-! ## A332987.P4279297214662231721

`eq[A046523(A006562(n+1)), A100878(n)]`
-/

namespace A332987.P4279297214662231721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A006562 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332987.P4279297214662231721

/-!
# A332988: Sums of two distinct nonzero pentagonal numbers.

The programs for A332988, there is no canonical definition to state claims against.
-/

/-! ## A332988.P7805298352928389244

`∪[A064826(n+1), A333011(n+1)]`
-/

namespace A332988.P7805298352928389244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332988.P7805298352928389244

/-! ## A332988.P4409559532771714829

`∪[A333011(n+1), A333012(n+1)]`
-/

namespace A332988.P4409559532771714829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332988.P4409559532771714829

/-! ## A332988.P10469792468154091660

`A333011(n+1)%A296810(n+1)`
-/

namespace A332988.P10469792468154091660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333011 (n + 1)) (A296810 (n + 1))

end

end A332988.P10469792468154091660

/-! ## A332988.P5562831497337654729

`A333011(n+1)+A099892(A051682(n+2))`
-/

namespace A332988.P5562831497337654729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333011 (n + 1) + A099892 (A051682 (n + 2)).toNat

end

end A332988.P5562831497337654729

/-! ## A332988.P18446080288421478947

`A333011(n+1)+A000007(A237984(n+2))`
-/

namespace A332988.P18446080288421478947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333011 (n + 1) + A000007 (A237984 (n + 2)).toNat

end

end A332988.P18446080288421478947

/-!
# A332990: Inverse of permutation in A332977.

The programs for A332990, there is no canonical definition to state claims against.
-/

/-! ## A332990.P6140304369108059596

`A322826(n+1)+A297112(A332462(n+1))`
-/

namespace A332990.P6140304369108059596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1) + A297112 (A332462 (n + 1)).toNat

end

end A332990.P6140304369108059596

/-! ## A332990.P8823063640628347249

`A269856(n+1)+A112347(A322584(A091696(n+1)))`
-/

namespace A332990.P8823063640628347249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269856 (n + 1) + A112347 (A322584 (A091696 (n + 1)).toNat).toNat

end

end A332990.P8823063640628347249

/-! ## A332990.P6113926560621891163

`A269856(n+1)+A000265(2^n)`
-/

namespace A332990.P6113926560621891163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269856 (n + 1) + A000265 (2 ^ n)

end

end A332990.P6113926560621891163

/-! ## A332990.P11703177603409132975

`A269856(n+1)%A049522(n+1)+1`
-/

namespace A332990.P11703177603409132975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269856 (n + 1)) (A049522 (n + 1)) + 1

end

end A332990.P11703177603409132975

/-! ## A332990.P13867127532492212976

`A335420(and(-2, 2^n))+A269856(n+1)`
-/

namespace A332990.P13867127532492212976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335420 (Int.land (-2) (2 ^ n : ℤ)).toNat + A269856 (n + 1)

end

end A332990.P13867127532492212976

/-!
# A332992: Maximum outdegree in the graph formed by a subset of numbers in range 1 .. n with edge relation k -> k - k/p, where p can be any of the prime factors of k.

The programs for A332992, there is no canonical definition to state claims against.
-/

/-! ## A332992.P5719371934238564869

`A001221(A014684(n+1)*A180956(n))`
-/

namespace A332992.P5719371934238564869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014684 (n + 1) * A180956 n).toNat

end

end A332992.P5719371934238564869

/-! ## A332992.P7064574316132805179

`and(A332999(n+1), A354480(n))`
-/

namespace A332992.P7064574316132805179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A332999 (n + 1)) (A354480 n)

end

end A332992.P7064574316132805179

/-!
# A332993: a(1) = 1, for n > 1, a(n) = n + a(A032742(n)).

The programs for A332993, there is no canonical definition to state claims against.
-/

/-! ## A332993.P14641101276646183510

`n+1+A006022(n+1)`
-/

namespace A332993.P14641101276646183510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A006022 (n + 1)

end

end A332993.P14641101276646183510

/-! ## A332993.P13593024363960652636

`n+1+a(A032742(n+1)-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332993.P13593024363960652636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + a (A032742 (n + 1) - 1).toNat

end

end A332993.P13593024363960652636

/-! ## A332993.P17187964487302899614

`A332994(n+1)+A333791(n+1)`
-/

namespace A332993.P17187964487302899614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1) + A333791 (n + 1)

end

end A332993.P17187964487302899614

/-! ## A332993.P18009614323328632977

`A000203(n+1)-A333783(n+1)`
-/

namespace A332993.P18009614323328632977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A333783 (n + 1)

end

end A332993.P18009614323328632977

/-! ## A332993.P11112694452036617822

`a(A089196(n))+1+n` with `a(0)=1`
-/

namespace A332993.P11112694452036617822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A089196 n).toNat + 1 + n

end

end A332993.P11112694452036617822

/-! ## A332993.P17426517696094001519

`a(n-A060681(n+1))+n+1` with `a(0)=1`
-/

namespace A332993.P17426517696094001519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A060681 (n + 1)).toNat + n + 1

end

end A332993.P17426517696094001519

/-! ## A332993.P9493134343120938543

`A348977(n+1)*A348978(n+1)`
-/

namespace A332993.P9493134343120938543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1) * A348978 (n + 1)

end

end A332993.P9493134343120938543

/-! ## A332993.P6895131321046119815

`2*A065475(n+1)-A065475(A192330(n+1))`
-/

namespace A332993.P6895131321046119815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065475 (n + 1) - A065475 (A192330 (n + 1)).toNat

end

end A332993.P6895131321046119815

/-! ## A332993.P2016212578257481469

`A000203(n+1)+A333791(n+1)-A333784(n+1)`
-/

namespace A332993.P2016212578257481469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A333791 (n + 1) - A333784 (n + 1))

end

end A332993.P2016212578257481469

/-! ## A332993.P3904883850786346423

`A332994(n+1)+A333784(n+1)-A333783(n+1)`
-/

namespace A332993.P3904883850786346423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1) + (A333784 (n + 1) - A333783 (n + 1))

end

end A332993.P3904883850786346423

/-! ## A332993.P10851665964026818833

`A348977(n+1)*A348979(n+1)-A333783(n+1)`
-/

namespace A332993.P10851665964026818833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1) * A348979 (n + 1) - A333783 (n + 1)

end

end A332993.P10851665964026818833

/-! ## A332993.P13948804672869250803

`A000203(n+1)*A348978(n+1)/A348979(n+1)`
-/

namespace A332993.P13948804672869250803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A348978 (n + 1) : ℚ) / (A348979 (n + 1) : ℚ)

end

end A332993.P13948804672869250803

/-! ## A332993.P9496446222917849905

`A333791(2*(n+1))+A322382(2*(n+1))`
-/

namespace A332993.P9496446222917849905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333791 (2 * (n + 1)) + A322382 (2 * (n + 1))

end

end A332993.P9496446222917849905

/-! ## A332993.P15214745740115391004

`A322382(2*(n+1))+A333784(2*(n+1))-A333783(2*(n+1))`
-/

namespace A332993.P15214745740115391004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (2 * (n + 1)) + (A333784 (2 * (n + 1)) - A333783 (2 * (n + 1)))

end

end A332993.P15214745740115391004

/-! ## A332993.P16106341551597941537

`A006022(2*(n+1))`
-/

namespace A332993.P16106341551597941537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (2 * (n + 1))

end

end A332993.P16106341551597941537

/-! ## A332993.P16340948236649679528

`A001065(2*(n+1))-A333783(2*(n+1))`
-/

namespace A332993.P16340948236649679528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * (n + 1)) - A333783 (2 * (n + 1))

end

end A332993.P16340948236649679528

/-! ## A332993.P17804740573638837697

`A165998(2*n)+2-A192330(2*(n+1))`
-/

namespace A332993.P17804740573638837697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (2 * n) + (2 - A192330 (2 * (n + 1)))

end

end A332993.P17804740573638837697

/-! ## A332993.P6807132886995666043

`A257143(2*n+1)+2-A192330(2*(n+1))`
-/

namespace A332993.P6807132886995666043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (2 * n + 1) + (2 - A192330 (2 * (n + 1)))

end

end A332993.P6807132886995666043

/-! ## A332993.P1587280783103963738

`A001065(2*(n+1))+A333791(2*(n+1))-A333784(2*(n+1))`
-/

namespace A332993.P1587280783103963738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * (n + 1)) + (A333791 (2 * (n + 1)) - A333784 (2 * (n + 1)))

end

end A332993.P1587280783103963738

/-!
# A332994: a(1) = 1, for n > 1, a(n) = n + a(A052126(n)).

The programs for A332994, the canonical program `A332994.P8797339182167292350` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332994 has offset 1).

The definition of A332994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052126, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332994.P6613423931935554994

`n+1+A322382(n+1)`
-/

namespace A332994.P6613423931935554994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A322382 (n + 1)

end

end A332994.P6613423931935554994

namespace A332994

/-- `n+1+A322382(n+1)` -/
def P6613423931935554994.Spec : Prop :=
  ∀ n, P6613423931935554994.a n = A332994 (n + 1)

theorem P6613423931935554994.correct : P6613423931935554994.Spec := by
  intro n
  simp only [A332994, Nat.add_sub_cancel, A332994.P6613423931935554994.a, A332994.P8797339182167292350.a, A052126, A052126.P1944428405920482243.a, A322382, A322382.P2818672771090894339.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332994

/-! ## A332994.P8797339182167292350

`n+1+a(A052126(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A332994

/-- `n+1+a(A052126(n+1)-1)` -/
def P8797339182167292350.Spec : Prop :=
  ∀ n, (P8797339182167292350.a n : ℤ) = A332994 (n + 1)

theorem P8797339182167292350.correct : P8797339182167292350.Spec := by
  intro n
  simp only [A332994, Nat.add_sub_cancel]

end A332994

/-! ## A332994.P6938153190923774741

`A000203(n+1)-A333784(n+1)`
-/

namespace A332994.P6938153190923774741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A333784 (n + 1)

end

end A332994.P6938153190923774741

namespace A332994

/-- `A000203(n+1)-A333784(n+1)` -/
def P6938153190923774741.Spec : Prop :=
  ∀ n, P6938153190923774741.a n = A332994 (n + 1)

theorem P6938153190923774741.correct : P6938153190923774741.Spec := by
  intro n
  simp only [A332994, Nat.add_sub_cancel, A332994.P6938153190923774741.a, A332994.P8797339182167292350.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052126, A052126.P1944428405920482243.a, A333784, A333784.P5112711257938794451.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332994

/-! ## A332994.P2179749130580228593

`A332993(n+1)-A333791(n+1)`
-/

namespace A332994.P2179749130580228593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) - A333791 (n + 1)

end

end A332994.P2179749130580228593

namespace A332994

/-- `A332993(n+1)-A333791(n+1)` -/
def P2179749130580228593.Spec : Prop :=
  ∀ n, P2179749130580228593.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P10692135427590532380

`a(n-A171462(n+1))+1+n` with `a(0)=1`
-/

namespace A332994.P10692135427590532380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A171462 (n + 1)).toNat + 1 + n

end

end A332994.P10692135427590532380

namespace A332994

/-- `a(n-A171462(n+1))+1+n` -/
def P10692135427590532380.Spec : Prop :=
  ∀ n, (P10692135427590532380.a n : ℤ) = A332994 (n + 1)

theorem P10692135427590532380.correct : P10692135427590532380.Spec := by
  intro n
  simp only [A332994, Nat.add_sub_cancel, A332994.P10692135427590532380.a, A332994.P8797339182167292350.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332994

/-! ## A332994.P9668188232451333572

`a(floor(n/A006530(n+1)))+n+1` with `a(0)=1`
-/

namespace A332994.P9668188232451333572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / (A006530 (n + 1) : ℚ)⌋.toNat + (n + 1)

end

end A332994.P9668188232451333572

namespace A332994

/-- `a(floor(n/A006530(n+1)))+n+1` -/
def P9668188232451333572.Spec : Prop :=
  ∀ n, (P9668188232451333572.a n : ℤ) = A332994 (n + 1)

end A332994

/-! ## A332994.P16136979507235353893

`A339423(n+1)+A065475(n+1)`
-/

namespace A332994.P16136979507235353893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339423 (n + 1) + A065475 (n + 1)

end

end A332994.P16136979507235353893

namespace A332994

/-- `A339423(n+1)+A065475(n+1)` -/
def P16136979507235353893.Spec : Prop :=
  ∀ n, P16136979507235353893.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P3428564904129114152

`A000203(n+1)-(A333791(n+1)+A333783(n+1))`
-/

namespace A332994.P3428564904129114152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A333791 (n + 1) + A333783 (n + 1))

end

end A332994.P3428564904129114152

namespace A332994

/-- `A000203(n+1)-(A333791(n+1)+A333783(n+1))` -/
def P3428564904129114152.Spec : Prop :=
  ∀ n, P3428564904129114152.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P301170894832401005

`A332993(n+1)+A333783(n+1)-A333784(n+1)`
-/

namespace A332994.P301170894832401005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) + (A333783 (n + 1) - A333784 (n + 1))

end

end A332994.P301170894832401005

namespace A332994

/-- `A332993(n+1)+A333783(n+1)-A333784(n+1)` -/
def P301170894832401005.Spec : Prop :=
  ∀ n, P301170894832401005.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P464669306390244730

`A000203(n+1)*A348988(n+1)/A348989(n+1)`
-/

namespace A332994.P464669306390244730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A348988 (n + 1) : ℚ) / (A348989 (n + 1) : ℚ)

end

end A332994.P464669306390244730

namespace A332994

/-- `A000203(n+1)*A348988(n+1)/A348989(n+1)` -/
def P464669306390244730.Spec : Prop :=
  ∀ n, P464669306390244730.a n = (A332994 (n + 1) : ℚ)

end A332994

/-! ## A332994.P10834236100287060325

`A339423(2*(n+1))/2+1+n`
-/

namespace A332994.P10834236100287060325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339423 (2 * (n + 1)) : ℚ) / 2 + 1 + (n : ℚ)

end

end A332994.P10834236100287060325

namespace A332994

/-- `A339423(2*(n+1))/2+1+n` -/
def P10834236100287060325.Spec : Prop :=
  ∀ n, P10834236100287060325.a n = (A332994 (n + 1) : ℚ)

end A332994

/-! ## A332994.P5077610581461973994

`A006022(2*(n+1))-A333791(n+1)`
-/

namespace A332994.P5077610581461973994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (2 * (n + 1)) - A333791 (n + 1)

end

end A332994.P5077610581461973994

namespace A332994

/-- `A006022(2*(n+1))-A333791(n+1)` -/
def P5077610581461973994.Spec : Prop :=
  ∀ n, P5077610581461973994.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P10686015140990096134

`A322382(A129598(n+1))`
-/

namespace A332994.P10686015140990096134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A129598 (n + 1)).toNat

end

end A332994.P10686015140990096134

namespace A332994

/-- `A322382(A129598(n+1))` -/
def P10686015140990096134.Spec : Prop :=
  ∀ n, P10686015140990096134.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P17727515889138082648

`A322382(A256017(n+1))`
-/

namespace A332994.P17727515889138082648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A256017 (n + 1)).toNat

end

end A332994.P17727515889138082648

namespace A332994

/-- `A322382(A256017(n+1))` -/
def P17727515889138082648.Spec : Prop :=
  ∀ n, P17727515889138082648.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P11311439687214782727

`A322382(A138127(n+1))`
-/

namespace A332994.P11311439687214782727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A138127 (n + 1)).toNat

end

end A332994.P11311439687214782727

namespace A332994

/-- `A322382(A138127(n+1))` -/
def P11311439687214782727.Spec : Prop :=
  ∀ n, P11311439687214782727.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P8128431134947913432

`A322382(A053024(n+1))`
-/

namespace A332994.P8128431134947913432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A053024 (n + 1)).toNat

end

end A332994.P8128431134947913432

namespace A332994

/-- `A322382(A053024(n+1))` -/
def P8128431134947913432.Spec : Prop :=
  ∀ n, P8128431134947913432.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P12160718866278555607

`A322382(A013636(n+1))`
-/

namespace A332994.P12160718866278555607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A013636 (n + 1)).toNat

end

end A332994.P12160718866278555607

namespace A332994

/-- `A322382(A013636(n+1))` -/
def P12160718866278555607.Spec : Prop :=
  ∀ n, P12160718866278555607.a n = A332994 (n + 1)

end A332994

/-! ## A332994.P16531184524065701323

`A322382(A119416(n+1))`
-/

namespace A332994.P16531184524065701323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322382 (A119416 (n + 1)).toNat

end

end A332994.P16531184524065701323

namespace A332994

/-- `A322382(A119416(n+1))` -/
def P16531184524065701323.Spec : Prop :=
  ∀ n, P16531184524065701323.a n = A332994 (n + 1)

end A332994

/-!
# A332997: a(n) = A000120(A332995(n)).

The programs for A332997, there is no canonical definition to state claims against.
-/

/-! ## A332997.P15187711088142757325

`A000120(n)-A332998(n)`
-/

namespace A332997.P15187711088142757325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A332998 n

end

end A332997.P15187711088142757325

/-! ## A332997.P18038607538558722588

`A332897(A332817(n))`
-/

namespace A332997.P18038607538558722588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A332817 n).toNat

end

end A332997.P18038607538558722588

/-! ## A332997.P9901271835975684009

`A332998(A004760(n+2))`
-/

namespace A332997.P9901271835975684009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (A004760 (n + 2)).toNat

end

end A332997.P9901271835975684009

/-! ## A332997.P3120866834085777811

`A000120(n)-A332898(A332817(n))`
-/

namespace A332997.P3120866834085777811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A332898 (A332817 n).toNat

end

end A332997.P3120866834085777811

/-! ## A332997.P9991784630923903641

`A292595(A245612(n))`
-/

namespace A332997.P9991784630923903641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292595 (A245612 n).toNat

end

end A332997.P9991784630923903641

/-! ## A332997.P12268262769307686360

`A000120(n)-A292594(A245612(n))`
-/

namespace A332997.P12268262769307686360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A292594 (A245612 n).toNat

end

end A332997.P12268262769307686360

/-! ## A332997.P7238821156136206150

`A332897(A332815(A332811(A332815(n))))`
-/

namespace A332997.P7238821156136206150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A332815 (A332811 (A332815 n).toNat).toNat).toNat

end

end A332997.P7238821156136206150

/-! ## A332997.P2289847593271460711

`A000120(A332895(A332817(2*n)))`
-/

namespace A332997.P2289847593271460711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332895 (A332817 (2 * n)).toNat).toNat

end

end A332997.P2289847593271460711

/-!
# A332998: a(n) = A000120(A332996(n)).

The programs for A332998, there is no canonical definition to state claims against.
-/

/-! ## A332998.P14872210012425311536

`A000120(n)-A332997(n)`
-/

namespace A332998.P14872210012425311536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A332997 n

end

end A332998.P14872210012425311536

/-! ## A332998.P1483122943727921083

`A332898(A332817(n))`
-/

namespace A332998.P1483122943727921083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (A332817 n).toNat

end

end A332998.P1483122943727921083

/-! ## A332998.P6692044317445940553

`A160383(n)+A160385(n)-A332997(n)`
-/

namespace A332998.P6692044317445940553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + (A160385 n - A332997 n)

end

end A332998.P6692044317445940553

/-! ## A332998.P13383841837022248096

`∑[A001511(n+1)-A136480(n)]-A332997(n)`
-/

namespace A332998.P13383841837022248096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) - A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A332997 n

end

end A332998.P13383841837022248096

/-! ## A332998.P3535655407040655557

`A160385(2*n)-(A332997(n)-A160383(2*n))`
-/

namespace A332998.P3535655407040655557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (2 * n) - (A332997 n - A160383 (2 * n))

end

end A332998.P3535655407040655557

/-! ## A332998.P18276701687899121432

`A332898(A108548(A163511(n)))`
-/

namespace A332998.P18276701687899121432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (A108548 (A163511 n).toNat).toNat

end

end A332998.P18276701687899121432

/-! ## A332998.P6189003378020496677

`A000120(n)-A332897(A332817(n))`
-/

namespace A332998.P6189003378020496677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A332897 (A332817 n).toNat

end

end A332998.P6189003378020496677

/-! ## A332998.P15714965956341673449

`A292594(A245612(n))`
-/

namespace A332998.P15714965956341673449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292594 (A245612 n).toNat

end

end A332998.P15714965956341673449

/-! ## A332998.P11295821692906802283

`A000120(n)-A292595(A245612(n))`
-/

namespace A332998.P11295821692906802283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A292595 (A245612 n).toNat

end

end A332998.P11295821692906802283

/-! ## A332998.P2022037048913774452

`A332898(A332815(A332811(A332815(n))))`
-/

namespace A332998.P2022037048913774452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (A332815 (A332811 (A332815 n).toNat).toNat).toNat

end

end A332998.P2022037048913774452

/-!
# A332999: Maximum indegree in the graph formed by a subset of numbers in range 1 .. n with edge relation k -> k - k/p, where p is any of the prime factors of k.

The programs for A332999, there is no canonical definition to state claims against.
-/

/-! ## A332999.P15048157387213901335

`A332992(A014684(n+1)*A102376(n))`
-/

namespace A332999.P15048157387213901335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A014684 (n + 1) * A102376 n).toNat

end

end A332999.P15048157387213901335

/-! ## A332999.P7452400856276558217

`A332992(A102376(n)*A179278(n+1))`
-/

namespace A332999.P7452400856276558217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A102376 n * A179278 (n + 1)).toNat

end

end A332999.P7452400856276558217

/-! ## A332999.P9926395238183417520

`A005087(A000040(n+1)*A014684(n+1))`
-/

namespace A332999.P9926395238183417520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A000040 (n + 1) * A014684 (n + 1)).toNat

end

end A332999.P9926395238183417520

/-! ## A332999.P12136743054529159542

`A001221(A144816(n)*A179278(n+1))`
-/

namespace A332999.P12136743054529159542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144816 n * A179278 (n + 1)).toNat

end

end A332999.P12136743054529159542

/-! ## A332999.P11158084230229952444

`A332992(A395579(n+1))`
-/

namespace A332999.P11158084230229952444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332992 (A395579 (n + 1)).toNat

end

end A332999.P11158084230229952444

