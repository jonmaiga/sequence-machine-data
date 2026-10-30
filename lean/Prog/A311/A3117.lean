import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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
import Seq.Opaque.C024

/-!
# A311700: Coordination sequence Gal.4.44.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311700, there is no canonical definition to state claims against.
-/

/-! ## A311700.P14570006428763657596

`A314829(n)-A196563(A111286(n+1))`
-/

namespace A311700.P14570006428763657596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A196563 (A111286 (n + 1)).toNat

end

end A311700.P14570006428763657596

/-! ## A311700.P13307028837653568395

`A301301(n)+A188967(A214679(n+3))`
-/

namespace A311700.P13307028837653568395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A188967 (A214679 (n + 3)).toNat

end

end A311700.P13307028837653568395

/-! ## A311700.P9937702476667178866

`A301301(n)+A124761(A096186(n+1))`
-/

namespace A311700.P9937702476667178866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A124761 (A096186 (n + 1)).toNat

end

end A311700.P9937702476667178866

/-! ## A311700.P15556869708368538611

`A301301(n)+A079978(A059345(n))`
-/

namespace A311700.P15556869708368538611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A079978 (A059345 n).toNat

end

end A311700.P15556869708368538611

/-! ## A311700.P12766973608492825958

`A311196(n)+char[A081848(A132662(3*n+5))]`
-/

namespace A311700.P12766973608492825958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (A132662 (3 * n + 5)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A311700.P12766973608492825958

/-!
# A311701: Coordination sequence Gal.4.94.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311701, there is no canonical definition to state claims against.
-/

/-! ## A311701.P3095558743938966594

`A333262(A055588(n))+A317439(n+1)`
-/

namespace A311701.P3095558743938966594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333262 (A055588 n).toNat + A317439 (n + 1)

end

end A311701.P3095558743938966594

/-! ## A311701.P9012191846782719559

`∩[A342591(n+1), A311699(n)]`
-/

namespace A311701.P9012191846782719559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A311701.P9012191846782719559

/-! ## A311701.P16458470147287307625

`A082859(A032305(n+1))+A008574(n)`
-/

namespace A311701.P16458470147287307625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A032305 (n + 1)).toNat + A008574 n

end

end A311701.P16458470147287307625

/-! ## A311701.P15911798390123601320

`A311699(A087051(n)+A037878(n+1))`
-/

namespace A311701.P15911798390123601320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 (A087051 n + A037878 (n + 1)).toNat

end

end A311701.P15911798390123601320

/-! ## A311701.P8024608232329675477

`A091988(A091980(n+1))+A036990(n+1)`
-/

namespace A311701.P8024608232329675477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091988 (A091980 (n + 1)).toNat + A036990 (n + 1)

end

end A311701.P8024608232329675477

/-!
# A311702: Coordination sequence Gal.3.26.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311702, there is no canonical definition to state claims against.
-/

/-! ## A311702.P1531262971909452305

`A312343(n)-A281010(A312341(3*n+2))`
-/

namespace A311702.P1531262971909452305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312343 n - A281010 (A312341 (3 * n + 2)).toNat

end

end A311702.P1531262971909452305

/-! ## A311702.P9016756048457429782

`A001481(2*n+3)-A101264(A115073(n+1))`
-/

namespace A311702.P9016756048457429782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (2 * n + 3) - A101264 (A115073 (n + 1)).toNat

end

end A311702.P9016756048457429782

/-! ## A311702.P5009845727697813920

`A037855(A112808(n))+A008574(n)`
-/

namespace A311702.P5009845727697813920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (A112808 n).toNat + A008574 n

end

end A311702.P5009845727697813920

/-! ## A311702.P18085986294340562794

`A311694(n)+A037800(A010551(n))`
-/

namespace A311702.P18085986294340562794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311694 n + A037800 (A010551 n).toNat

end

end A311702.P18085986294340562794

/-! ## A311702.P12706573321291929109

`A003002(A018252(n+1)*A381432(n+1))`
-/

namespace A311702.P12706573321291929109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A018252 (n + 1) * A381432 (n + 1)).toNat

end

end A311702.P12706573321291929109

/-!
# A311703: Coordination sequence Gal.6.414.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311703, there is no canonical definition to state claims against.
-/

/-! ## A311703.P4471590514134609875

`(A312255(n)+A311235(n))/2`
-/

namespace A311703.P4471590514134609875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312255 n + A311235 n : ℚ) / 2

end

end A311703.P4471590514134609875

/-! ## A311703.P9615348631731504403

`A001281(A312255(n)+A311235(n))`
-/

namespace A311703.P9615348631731504403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312255 n + A311235 n).toNat

end

end A311703.P9615348631731504403

/-! ## A311703.P13788014480477414524

`A004525(A312255(n)+A311235(n))`
-/

namespace A311703.P13788014480477414524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312255 n + A311235 n).toNat

end

end A311703.P13788014480477414524

/-! ## A311703.P5331970703287806346

`A004526(A312255(n)+A311235(n))`
-/

namespace A311703.P5331970703287806346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312255 n + A311235 n).toNat

end

end A311703.P5331970703287806346

/-! ## A311703.P16900478669978346944

`A006370(A312255(n)+A311235(n))`
-/

namespace A311703.P16900478669978346944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A312255 n + A311235 n).toNat

end

end A311703.P16900478669978346944

/-! ## A311703.P977432867021965379

`A014682(A312255(n)+A311235(n))`
-/

namespace A311703.P977432867021965379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312255 n + A311235 n).toNat

end

end A311703.P977432867021965379

/-! ## A311703.P14430132619494369123

`A026741(A312255(n)+A311235(n))`
-/

namespace A311703.P14430132619494369123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312255 n + A311235 n).toNat

end

end A311703.P14430132619494369123

/-! ## A311703.P17804640729486622558

`A065033(A312255(n)+A311235(n))`
-/

namespace A311703.P17804640729486622558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312255 n + A311235 n).toNat

end

end A311703.P17804640729486622558

/-! ## A311703.P8024286526431240328

`-A001057(A312255(n)+A311235(n))`
-/

namespace A311703.P8024286526431240328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A312255 n + A311235 n).toNat

end

end A311703.P8024286526431240328

/-! ## A311703.P11130091241592968302

`A001057(A311235(n)+A312255(n)-1)`
-/

namespace A311703.P11130091241592968302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311235 n + (A312255 n - 1)).toNat

end

end A311703.P11130091241592968302

/-! ## A311703.P7916228925629054966

`A001057(A311235(n)-(1-A312255(n)))`
-/

namespace A311703.P7916228925629054966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311235 n - (1 - A312255 n)).toNat

end

end A311703.P7916228925629054966

/-! ## A311703.P3463606078741735775

`A065033(A311235(n)-(1-A312255(n)))`
-/

namespace A311703.P3463606078741735775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311235 n - (1 - A312255 n)).toNat

end

end A311703.P3463606078741735775

/-! ## A311703.P5443537499464452623

`A002265(2*(A312255(n)+A311235(n)))`
-/

namespace A311703.P5443537499464452623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A312255 n + A311235 n)).toNat

end

end A311703.P5443537499464452623

/-!
# A311704: Coordination sequence Gal.5.29.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311704, there is no canonical definition to state claims against.
-/

/-! ## A311704.P15336304046055952635

`A339579(∑[A205926(n+1)]+2)+A311234(n)`
-/

namespace A311704.P15336304046055952635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + A311234 n

end

end A311704.P15336304046055952635

/-! ## A311704.P15354997029728208588

`A008574(n)+(4*(n+1))%A008619(record[A264394(n)])`
-/

namespace A311704.P15354997029728208588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + Int.tmod (4 * (n + 1) : ℤ) (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A311704.P15354997029728208588

/-! ## A311704.P2812941762164339159

`A213728(A008284(2*(n+2))+A001787(n))+A311234(n)`
-/

namespace A311704.P2812941762164339159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213728 (A008284 (2 * (n + 2)) + A001787 n).toNat + A311234 n

end

end A311704.P2812941762164339159

/-! ## A311704.P18171815566413928295

`A311702(n)+A278216(A000108(n+1))`
-/

namespace A311704.P18171815566413928295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311702 n + A278216 (A000108 (n + 1)).toNat

end

end A311704.P18171815566413928295

/-! ## A311704.P5035263827681680398

`A311235(n)+A122924(n+1)^A306849(2*n+3)`
-/

namespace A311704.P5035263827681680398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311235 n : ℚ) + (A122924 (n + 1) : ℚ) ^ (A306849 (2 * n + 3) : ℤ)

end

end A311704.P5035263827681680398

/-!
# A311705: Coordination sequence Gal.4.89.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311705, there is no canonical definition to state claims against.
-/

/-! ## A311705.P9835385509832225425

`A097795(A284651(n+1))+A008574(n)`
-/

namespace A311705.P9835385509832225425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A284651 (n + 1)).toNat + A008574 n

end

end A311705.P9835385509832225425

/-! ## A311705.P15183460303839171542

`A084143(A175698(n+1))+4*n`
-/

namespace A311705.P15183460303839171542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A175698 (n + 1)).toNat + (4 * n : ℤ)

end

end A311705.P15183460303839171542

/-! ## A311705.P10593823932397588835

`A353556(A062884(3*(n+1)))+4*n`
-/

namespace A311705.P10593823932397588835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (A062884 (3 * (n + 1))).toNat + (4 * n : ℤ)

end

end A311705.P10593823932397588835

/-! ## A311705.P2911387141800679119

`A289025(A029895(n))+A008574(n)`
-/

namespace A311705.P2911387141800679119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289025 (A029895 n).toNat + A008574 n

end

end A311705.P2911387141800679119

/-! ## A311705.P7661891983658677826

`A181406(A096986(n+1))+A008586(n)`
-/

namespace A311705.P7661891983658677826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181406 (A096986 (n + 1)).toNat + A008586 n

end

end A311705.P7661891983658677826

/-!
# A311706: Coordination sequence Gal.6.178.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311706, there is no canonical definition to state claims against.
-/

/-! ## A311706.P17911294748262781282

`A029826(A213362(3*n+1))+4*n`
-/

namespace A311706.P17911294748262781282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029826 (A213362 (3 * n + 1)).toNat + (4 * n : ℤ)

end

end A311706.P17911294748262781282

/-! ## A311706.P13022967756475686127

`A220400(A014316(n))+A008574(n)`
-/

namespace A311706.P13022967756475686127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (A014316 n).toNat + A008574 n

end

end A311706.P13022967756475686127

/-! ## A311706.P9429258123778327141

`A311705(n)+A184953(A186724(n))`
-/

namespace A311706.P9429258123778327141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311705 n + A184953 (A186724 n).toNat

end

end A311706.P9429258123778327141

/-! ## A311706.P8101104538024901576

`or(A220400(A014316(n)), A311705(n))`
-/

namespace A311706.P8101104538024901576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220400 (A014316 n).toNat) (A311705 n)

end

end A311706.P8101104538024901576

/-! ## A311706.P4265726766327312630

`A333975(A248794(n+1)+n)`
-/

namespace A311706.P4265726766327312630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333975 (A248794 (n + 1) + (n : ℤ)).toNat

end

end A311706.P4265726766327312630

/-!
# A311707: Coordination sequence Gal.6.283.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311707, there is no canonical definition to state claims against.
-/

/-! ## A311707.P17784796308225118632

`A311188(n)+A175337(A027999(n))`
-/

namespace A311707.P17784796308225118632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311188 n + A175337 (A027999 n).toNat

end

end A311707.P17784796308225118632

/-! ## A311707.P15589877357832793924

`A314671(n)-A267050(A267052(n))`
-/

namespace A311707.P15589877357832793924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 n - A267050 (A267052 n).toNat

end

end A311707.P15589877357832793924

/-! ## A311707.P9964169117492556529

`A311805(n)-A005369(A046836(n+1))`
-/

namespace A311707.P9964169117492556529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311805 n - A005369 (A046836 (n + 1)).toNat

end

end A311707.P9964169117492556529

/-! ## A311707.P12118929614419691845

`A037829(A001333(n))+A008574(n)`
-/

namespace A311707.P12118929614419691845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A001333 n).toNat + A008574 n

end

end A311707.P12118929614419691845

/-! ## A311707.P4283994841049571771

`A312892(n)+A014149(A300323(n))`
-/

namespace A311707.P4283994841049571771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 n + A014149 (A300323 n).toNat

end

end A311707.P4283994841049571771

/-!
# A311708: Coordination sequence Gal.6.269.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311708, there is no canonical definition to state claims against.
-/

/-! ## A311708.P10331365567571670429

`A311707(n)+A000007(A129221(n))`
-/

namespace A311708.P10331365567571670429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311707 n + A000007 (A129221 n).toNat

end

end A311708.P10331365567571670429

/-! ## A311708.P16507788793185121420

`A311707(n)+A267676(A022177(n))`
-/

namespace A311708.P16507788793185121420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311707 n + A267676 (A022177 n).toNat

end

end A311708.P16507788793185121420

/-! ## A311708.P2980238260630805109

`A311707(n)+A000035(A223071(n+1))`
-/

namespace A311708.P2980238260630805109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311707 n + A000035 (A223071 (n + 1)).toNat

end

end A311708.P2980238260630805109

/-! ## A311708.P18219880212677421897

`char[11]+A312892(n)+A014149(A300323(n))`
-/

namespace A311708.P18219880212677421897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A312892 n + A014149 (A300323 n).toNat)

end

end A311708.P18219880212677421897

/-!
# A311709: Coordination sequence Gal.4.121.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311709, there is no canonical definition to state claims against.
-/

/-! ## A311709.P12470557011023671145

`and(A220862(A052905(n)), A311807(n))`
-/

namespace A311709.P12470557011023671145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A220862 (A052905 n).toNat) (A311807 n)

end

end A311709.P12470557011023671145

/-! ## A311709.P8224660702513713079

`A301672(n)-A102283(A201463(2*n+3))`
-/

namespace A311709.P8224660702513713079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n - A102283 (A201463 (2 * n + 3)).toNat

end

end A311709.P8224660702513713079

/-! ## A311709.P17005036702051119103

`A311807(n)-A316863(A060063(n))`
-/

namespace A311709.P17005036702051119103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n - A316863 (A060063 n).toNat

end

end A311709.P17005036702051119103

/-! ## A311709.P11471294984786428690

`or(A008574(n), A070176(A006882(n)))`
-/

namespace A311709.P11471294984786428690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A070176 (A006882 n).toNat)

end

end A311709.P11471294984786428690

/-! ## A311709.P10828720911206265973

`A246146(A017233(n))+A004976(n)`
-/

namespace A311709.P10828720911206265973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (A017233 n).toNat + A004976 n

end

end A311709.P10828720911206265973

/-!
# A311710: Coordination sequence Gal.4.68.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311710, the canonical program `A311710.P6691464285514070511` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311710 has offset 0).

The definition of A311710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311710.P6691464285514070511

`A008458(n)+A008574(n)-A313538(n)-A047588(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311710

/-- `A008458(n)+A008574(n)-A313538(n)-A047588(n+1)` -/
def P6691464285514070511.Spec : Prop :=
  ∀ n, P6691464285514070511.a n = A311710 n

theorem P6691464285514070511.correct : P6691464285514070511.Spec := by
  intro n
  simp only [A311710]

end A311710

/-! ## A311710.P16281252027043215875

`A313894(n)-A047588(n+1)`
-/

namespace A311710.P16281252027043215875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A047588 (n + 1)

end

end A311710.P16281252027043215875

namespace A311710

/-- `A313894(n)-A047588(n+1)` -/
def P16281252027043215875.Spec : Prop :=
  ∀ n, P16281252027043215875.a n = A311710 n

end A311710

/-! ## A311710.P8603520082344007012

`A313894(n)+A311687(n)-A313879(n)`
-/

namespace A311710.P8603520082344007012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A311687 n - A313879 n

end

end A311710.P8603520082344007012

namespace A311710

/-- `A313894(n)+A311687(n)-A313879(n)` -/
def P8603520082344007012.Spec : Prop :=
  ∀ n, P8603520082344007012.a n = A311710 n

end A311710

/-! ## A311710.P14033627069413720448

`A313894(n)+A311914(n)-A313923(n)`
-/

namespace A311710.P14033627069413720448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A311914 n - A313923 n

end

end A311710.P14033627069413720448

namespace A311710

/-- `A313894(n)+A311914(n)-A313923(n)` -/
def P14033627069413720448.Spec : Prop :=
  ∀ n, P14033627069413720448.a n = A311710 n

end A311710

/-! ## A311710.P12203456681453226385

`A313979(n)-(A047588(n+1)+Δ[A011862(n)])`
-/

namespace A311710.P12203456681453226385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313979 n - (A047588 (n + 1) + (f1 (n + 1) - f1 n))

end

end A311710.P12203456681453226385

namespace A311710

/-- `A313979(n)-(A047588(n+1)+Δ[A011862(n)])` -/
def P12203456681453226385.Spec : Prop :=
  ∀ n, P12203456681453226385.a n = A311710 n

end A311710

/-! ## A311710.P15678099750111384116

`Δ[A011862(n)]+A313746(n)-A047588(n+1)`
-/

namespace A311710.P15678099750111384116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313746 n - A047588 (n + 1))

end

end A311710.P15678099750111384116

namespace A311710

/-- `Δ[A011862(n)]+A313746(n)-A047588(n+1)` -/
def P15678099750111384116.Spec : Prop :=
  ∀ n, P15678099750111384116.a n = A311710 n

end A311710

/-! ## A311710.P13045641026948239423

`A314848(2*n)+A008574(n+1)-(8*n+4)-A047588(n+1)`
-/

namespace A311710.P13045641026948239423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ)) - A047588 (n + 1)

end

end A311710.P13045641026948239423

namespace A311710

/-- `A314848(2*n)+A008574(n+1)-(8*n+4)-A047588(n+1)` -/
def P13045641026948239423.Spec : Prop :=
  ∀ n, P13045641026948239423.a n = A311710 n

end A311710

/-! ## A311710.P8438660659163202097

`A313894(n)+A004525(A312289(2*n))-A313923(n)`
-/

namespace A311710.P8438660659163202097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A004525 (A312289 (2 * n)).toNat - A313923 n

end

end A311710.P8438660659163202097

namespace A311710

/-- `A313894(n)+A004525(A312289(2*n))-A313923(n)` -/
def P8438660659163202097.Spec : Prop :=
  ∀ n, P8438660659163202097.a n = A311710 n

end A311710

/-!
# A311711: Coordination sequence Gal.4.64.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311711, there is no canonical definition to state claims against.
-/

/-! ## A311711.P14018729865832330312

`A355524(A111592(n+1))+A301301(n)`
-/

namespace A311711.P14018729865832330312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355524 (A111592 (n + 1)).toNat + A301301 n

end

end A311711.P14018729865832330312

/-! ## A311711.P12092451678652434563

`A301301(n)+A154957(A307758(2*(n+2)))`
-/

namespace A311711.P12092451678652434563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A154957 (A307758 (2 * (n + 2))).toNat

end

end A311711.P12092451678652434563

/-! ## A311711.P1931215505979890567

`A346693(∑[A346232(∑{e}[n+1, #]+1)])`
-/

namespace A311711.P1931215505979890567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346232 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311711.P1931215505979890567

/-! ## A311711.P8942639071151910118

`A250120(n)-A230864(A155002(3*(n+1)))`
-/

namespace A311711.P8942639071151910118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A230864 (A155002 (3 * (n + 1))).toNat

end

end A311711.P8942639071151910118

/-! ## A311711.P18104359541543177065

`∑[A097849(A037081(3*n+1))]`
-/

namespace A311711.P18104359541543177065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (A037081 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311711.P18104359541543177065

/-!
# A311712: Coordination sequence Gal.6.459.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311712, there is no canonical definition to state claims against.
-/

/-! ## A311712.P6536243119346919327

`A311713(A120126(n))-A001281(A059995(n))`
-/

namespace A311712.P6536243119346919327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311713 (A120126 n).toNat - A001281 (A059995 n).toNat

end

end A311712.P6536243119346919327

/-! ## A311712.P16384503679446556713

`A311713(A087051(n))`
-/

namespace A311712.P16384503679446556713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311713 (A087051 n).toNat

end

end A311712.P16384503679446556713

/-! ## A311712.P13407800107548196753

`A311713(A227549(n+1))`
-/

namespace A311712.P13407800107548196753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311713 (A227549 (n + 1)).toNat

end

end A311712.P13407800107548196753

/-! ## A311712.P4333183603957867440

`A311713(A396204(n+1))`
-/

namespace A311712.P4333183603957867440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311713 (A396204 (n + 1)).toNat

end

end A311712.P4333183603957867440

/-! ## A311712.P3840924769242506149

`A311713(n)%A129220(n)`
-/

namespace A311712.P3840924769242506149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311713 n) (A129220 n)

end

end A311712.P3840924769242506149

/-!
# A311713: Coordination sequence Gal.6.546.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311713, there is no canonical definition to state claims against.
-/

/-! ## A311713.P18364212953295737168

`round(A312877(A008486(n))/3)`
-/

namespace A311713.P18364212953295737168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A312877 (A008486 n).toNat : ℚ) / 3)

end

end A311713.P18364212953295737168

/-! ## A311713.P7373743006583476226

`A311843(n)-A048735(A220398(n+1))`
-/

namespace A311713.P7373743006583476226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n - A048735 (A220398 (n + 1)).toNat

end

end A311713.P7373743006583476226

/-! ## A311713.P4891721767555220074

`A311728(A120126(n))-A156659(n)`
-/

namespace A311713.P4891721767555220074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311728 (A120126 n).toNat - A156659 n

end

end A311713.P4891721767555220074

/-! ## A311713.P334808588413914829

`A311932(n)-A002187(A326245(n))`
-/

namespace A311713.P334808588413914829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n - A002187 (A326245 n).toNat

end

end A311713.P334808588413914829

/-!
# A311714: Coordination sequence Gal.6.435.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311714, there is no canonical definition to state claims against.
-/

/-! ## A311714.P4081890223843648417

`(A312245(n)+A311366(n))/2`
-/

namespace A311714.P4081890223843648417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312245 n + A311366 n : ℚ) / 2

end

end A311714.P4081890223843648417

/-! ## A311714.P2290218248203713000

`(A311366(n)+A313975(n)-sqrt(A117676(n)))/2`
-/

namespace A311714.P2290218248203713000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A311366 n : ℝ) + ((A313975 n : ℝ) - Real.sqrt (A117676 n : ℝ))) / 2

end

end A311714.P2290218248203713000

/-! ## A311714.P5663221283561093459

`A001281(A312245(n)+A311366(n))`
-/

namespace A311714.P5663221283561093459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312245 n + A311366 n).toNat

end

end A311714.P5663221283561093459

/-! ## A311714.P3756910161709421927

`A004525(A312245(n)+A311366(n))`
-/

namespace A311714.P3756910161709421927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312245 n + A311366 n).toNat

end

end A311714.P3756910161709421927

/-! ## A311714.P3559186508727518748

`A123108(A312245(n)+A311366(n))`
-/

namespace A311714.P3559186508727518748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A312245 n + A311366 n).toNat

end

end A311714.P3559186508727518748

/-! ## A311714.P15020097022502450649

`A004525(A311366(n)+lcm(2, A311366(2*n))/2)`
-/

namespace A311714.P15020097022502450649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A311366 n : ℚ) + (Int.lcm 2 (A311366 (2 * n)) : ℚ) / 2)).toNat

end

end A311714.P15020097022502450649

/-! ## A311714.P4534377826863007919

`A004525(A311366(n)+A313952(n)-A047588(n+1))`
-/

namespace A311714.P4534377826863007919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311366 n + (A313952 n - A047588 (n + 1))).toNat

end

end A311714.P4534377826863007919

/-! ## A311714.P9849542619083192003

`A004525(A311366(n)+A313975(n)-A060464(n+1))`
-/

namespace A311714.P9849542619083192003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311366 n + (A313975 n - A060464 (n + 1))).toNat

end

end A311714.P9849542619083192003

/-! ## A311714.P10237736675215385380

`A004525(A311366(n)+2*A311807(n)-A311586(n))`
-/

namespace A311714.P10237736675215385380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311366 n + (2 * A311807 n - A311586 n)).toNat

end

end A311714.P10237736675215385380

/-!
# A311715: Coordination sequence Gal.6.513.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311715, there is no canonical definition to state claims against.
-/

/-! ## A311715.P13606051648866436273

`A250120(n)-A101080(A050181(n))`
-/

namespace A311715.P13606051648866436273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A101080 (A050181 n).toNat

end

end A311715.P13606051648866436273

/-! ## A311715.P11299764865939883444

`A250120(n)-A333632(A231897(n))`
-/

namespace A311715.P11299764865939883444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A333632 (A231897 n).toNat

end

end A311715.P11299764865939883444

/-! ## A311715.P13800750316310363303

`∑[A211100(A097134(n)+A000225(n))]`
-/

namespace A311715.P13800750316310363303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (A097134 n + A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311715.P13800750316310363303

/-! ## A311715.P17776330091768522490

`A311706(n)+∑[A350673(A008930(n))]`
-/

namespace A311715.P17776330091768522490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350673 (A008930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311706 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311715.P17776330091768522490

/-! ## A311715.P16590210834633609034

`A072154(2*n)-A101080(A050181(n))`
-/

namespace A311715.P16590210834633609034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A101080 (A050181 n).toNat

end

end A311715.P16590210834633609034

/-!
# A311716: Coordination sequence Gal.6.302.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311716, there is no canonical definition to state claims against.
-/

/-! ## A311716.P12217472117207366797

`A137804(2*n+1)-A006928(A007088(n+1))`
-/

namespace A311716.P12217472117207366797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (2 * n + 1) - A006928 (A007088 (n + 1)).toNat

end

end A311716.P12217472117207366797

/-! ## A311716.P1396160781271468314

`A312465(n)-A064891(A193039(n))`
-/

namespace A311716.P1396160781271468314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312465 n - A064891 (A193039 n).toNat

end

end A311716.P1396160781271468314

/-! ## A311716.P6892793325749783182

`A312466(n)-A064891(A193039(n))`
-/

namespace A311716.P6892793325749783182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n - A064891 (A193039 n).toNat

end

end A311716.P6892793325749783182

/-! ## A311716.P7991993241632250111

`A311840(n)-A118953(A174450(n))`
-/

namespace A311716.P7991993241632250111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311840 n - A118953 (A174450 n).toNat

end

end A311716.P7991993241632250111

/-! ## A311716.P17341730456414304782

`A311714(A120126(n))+A156659(A311698(2*n))`
-/

namespace A311716.P17341730456414304782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311714 (A120126 n).toNat + A156659 (A311698 (2 * n)).toNat

end

end A311716.P17341730456414304782

/-!
# A311717: Coordination sequence Gal.4.48.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311717, there is no canonical definition to state claims against.
-/

/-! ## A311717.P14099321311771844992

`xor(A008574(n), A284556(A010551(n)))`
-/

namespace A311717.P14099321311771844992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008574 n) (A284556 (A010551 n).toNat)

end

end A311717.P14099321311771844992

/-! ## A311717.P3673851620420448000

`xor(A121262(A163315(n)), A314626(n))`
-/

namespace A311717.P3673851620420448000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121262 (A163315 n).toNat) (A314626 n)

end

end A311717.P3673851620420448000

/-! ## A311717.P17304315158923004426

`xor(A024362(A108529(n+1)), A311291(n))`
-/

namespace A311717.P17304315158923004426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024362 (A108529 (n + 1)).toNat) (A311291 n)

end

end A311717.P17304315158923004426

/-! ## A311717.P7672349489579239802

`ceil(n*ϕ^3)-A281010(4*record[and(2*n, -n)]+3)`
-/

namespace A311717.P7672349489579239802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 3⌉ - A281010 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A311717.P7672349489579239802

/-! ## A311717.P7596511934690942712

`A311708(n)+char[A305939(3*n+2)]`
-/

namespace A311717.P7596511934690942712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305939 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311708 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A311717.P7596511934690942712

/-!
# A311718: Coordination sequence Gal.5.179.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311718, there is no canonical definition to state claims against.
-/

/-! ## A311718.P15141127865349156424

`A121982(n+1)-A090192(A027642(n))`
-/

namespace A311718.P15141127865349156424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1) - A090192 (A027642 n).toNat

end

end A311718.P15141127865349156424

/-! ## A311718.P10619770509170291897

`A121982(n+1)+A090192(A027642(n)+2)`
-/

namespace A311718.P10619770509170291897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1) + A090192 (A027642 n + 2).toNat

end

end A311718.P10619770509170291897

/-! ## A311718.P1755775843867323914

`eq[1, A001222(n²+15)]-A090192(A027642(n))`
-/

namespace A311718.P1755775843867323914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A090192 (A027642 n).toNat

end

end A311718.P1755775843867323914

/-! ## A311718.P11962861680014873183

`eq[2, A000005(n²+15)]-A090192(A027642(n))`
-/

namespace A311718.P11962861680014873183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A090192 (A027642 n).toNat

end

end A311718.P11962861680014873183

/-! ## A311718.P12952886045990689512

`eq[n²+15, A014963(n²+15)]-A090192(A027642(n))`
-/

namespace A311718.P12952886045990689512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n ^ 2 + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A090192 (A027642 n).toNat

end

end A311718.P12952886045990689512

/-!
# A311719: Coordination sequence Gal.6.297.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311719, there is no canonical definition to state claims against.
-/

/-! ## A311719.P8163965246563254680

`A311300(n)+A129308(A226974(n))`
-/

namespace A311719.P8163965246563254680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311300 n + A129308 (A226974 n).toNat

end

end A311719.P8163965246563254680

/-! ## A311719.P6308621118093560453

`A313053(n)-A001221(A148314(n))`
-/

namespace A311719.P6308621118093560453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n - A001221 (A148314 n).toNat

end

end A311719.P6308621118093560453

/-! ## A311719.P17030369641379030486

`A311889(n)-A056170(A243147(n+1))`
-/

namespace A311719.P17030369641379030486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311889 n - A056170 (A243147 (n + 1)).toNat

end

end A311719.P17030369641379030486

/-! ## A311719.P3187725199988337161

`∑[A071330(∑[3*2^n])]`
-/

namespace A311719.P3187725199988337161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311719.P3187725199988337161

/-! ## A311719.P18354595888402509867

`A311862(n)-A010051(A071299(n))`
-/

namespace A311719.P18354595888402509867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311862 n - A010051 (A071299 n).toNat

end

end A311719.P18354595888402509867

/-!
# A311720: Coordination sequence Gal.5.174.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311720, there is no canonical definition to state claims against.
-/

/-! ## A311720.P171258653879395115

`A085516(A311738(n))`
-/

namespace A311720.P171258653879395115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A311738 n).toNat

end

end A311720.P171258653879395115

/-! ## A311720.P3891732447929692323

`∑[A331244(A349546(n+1)+1)]`
-/

namespace A311720.P3891732447929692323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331244 (A349546 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311720.P3891732447929692323

/-! ## A311720.P13150200631064648404

`∑[A030298(∑[A060002(3*n+2)])]`
-/

namespace A311720.P13150200631064648404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060002 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311720.P13150200631064648404

/-! ## A311720.P10986186921900203282

`A311893(n)-A276404(A000246(n))`
-/

namespace A311720.P10986186921900203282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311893 n - A276404 (A000246 n).toNat

end

end A311720.P10986186921900203282

/-!
# A311721: Coordination sequence Gal.6.383.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311721, there is no canonical definition to state claims against.
-/

/-! ## A311721.P8262249835619518434

`A340999(A000043(n+1))+A311706(n)`
-/

namespace A311721.P8262249835619518434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A000043 (n + 1)).toNat + 204) + A311706 n

end

end A311721.P8262249835619518434

/-! ## A311721.P17706877197533443597

`A250120(n)-A124769(A180516(n+1))`
-/

namespace A311721.P17706877197533443597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A124769 (A180516 (n + 1)).toNat

end

end A311721.P17706877197533443597

/-! ## A311721.P14107744133608992541

`A311726(n)-A276791(A250527(n+1))`
-/

namespace A311721.P14107744133608992541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311726 n - A276791 (A250527 (n + 1)).toNat

end

end A311721.P14107744133608992541

/-! ## A311721.P2752258294190262730

`A340999(A311755(2*n+3))+A311706(n)`
-/

namespace A311721.P2752258294190262730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A311755 (2 * n + 3)).toNat + 204) + A311706 n

end

end A311721.P2752258294190262730

/-! ## A311721.P5260944582299517721

`record[A314802(n)-A123896(n)]`
-/

namespace A311721.P5260944582299517721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314802 n - A123896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311721.P5260944582299517721

/-!
# A311722: Coordination sequence Gal.6.162.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311722, there is no canonical definition to state claims against.
-/

/-! ## A311722.P7348718336429695605

`A311670(n)+A049320(A122367(n))`
-/

namespace A311722.P7348718336429695605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311670 n + A049320 (A122367 n).toNat

end

end A311722.P7348718336429695605

/-! ## A311722.P10726318081348534085

`A004128(3*n+2)-A001221(A023149(n+3))`
-/

namespace A311722.P10726318081348534085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (3 * n + 2) - A001221 (A023149 (n + 3)).toNat

end

end A311722.P10726318081348534085

/-! ## A311722.P13554941465223260956

`record[A167973(A110662(n+1))]`
-/

namespace A311722.P13554941465223260956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167973 (A110662 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311722.P13554941465223260956

/-! ## A311722.P14954591504818289829

`A362422(A051336(n+1))+A008574(n)`
-/

namespace A311722.P14954591504818289829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362422 (A051336 (n + 1)).toNat + A008574 n

end

end A311722.P14954591504818289829

/-! ## A311722.P10767009487814055973

`A004273(2*n)+A001222(A052539(n))`
-/

namespace A311722.P10767009487814055973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) + A001222 (A052539 n).toNat

end

end A311722.P10767009487814055973

/-!
# A311723: Coordination sequence Gal.5.105.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311723, there is no canonical definition to state claims against.
-/

/-! ## A311723.P8743268179760367151

`xor(A002262(A143404(n)), A311724(n))`
-/

namespace A311723.P8743268179760367151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A143404 n).toNat) (A311724 n)

end

end A311723.P8743268179760367151

/-! ## A311723.P9248361254226257442

`A311724(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A311723.P9248361254226257442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311724 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A311723.P9248361254226257442

/-! ## A311723.P513028708795253219

`A311724(A087051(n))`
-/

namespace A311723.P513028708795253219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311724 (A087051 n).toNat

end

end A311723.P513028708795253219

/-! ## A311723.P5738241415052672458

`A311724(A227549(n+1))`
-/

namespace A311723.P5738241415052672458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311724 (A227549 (n + 1)).toNat

end

end A311723.P5738241415052672458

/-! ## A311723.P18075424233124393920

`A311724(A396204(n+1))`
-/

namespace A311723.P18075424233124393920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311724 (A396204 (n + 1)).toNat

end

end A311723.P18075424233124393920

/-!
# A311724: Coordination sequence Gal.6.376.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311724, there is no canonical definition to state claims against.
-/

/-! ## A311724.P11470512967766181814

`record[A311723(n)/A103378(n+1)]`
-/

namespace A311724.P11470512967766181814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311723 n : ℚ) / (A103378 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311724.P11470512967766181814

/-! ## A311724.P9934816251738082854

`A311983(n)-A037800(A097861(n))`
-/

namespace A311724.P9934816251738082854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311983 n - A037800 (A097861 n).toNat

end

end A311724.P9934816251738082854

/-! ## A311724.P11057227148532472831

`A004709(3*n+1)+A001222(A088218(n))`
-/

namespace A311724.P11057227148532472831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (3 * n + 1) + A001222 (A088218 n).toNat

end

end A311724.P11057227148532472831

/-! ## A311724.P9537562831559036140

`A005843(A311710(n))-A311687(A120126(n))`
-/

namespace A311724.P9537562831559036140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311710 n).toNat - A311687 (A120126 n).toNat

end

end A311724.P9537562831559036140

/-! ## A311724.P2165168664035012559

`A311816(A120126(n))-A102283(A315053(2*n+3))`
-/

namespace A311724.P2165168664035012559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 (A120126 n).toNat - A102283 (A315053 (2 * n + 3)).toNat

end

end A311724.P2165168664035012559

/-!
# A311725: Coordination sequence Gal.5.156.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311725, there is no canonical definition to state claims against.
-/

/-! ## A311725.P15206295723375824638

`A216345(eq[3, A296658(n+4)])`
-/

namespace A311725.P15206295723375824638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A311725.P15206295723375824638

/-! ## A311725.P3598395626191796547

`A314857(n)-A001221(A151144(n))`
-/

namespace A311725.P3598395626191796547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314857 n - A001221 (A151144 n).toNat

end

end A311725.P3598395626191796547

/-! ## A311725.P3256682736336814915

`A312287(n)-A044941(A291029(n))`
-/

namespace A311725.P3256682736336814915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312287 n - A044941 (A291029 n).toNat

end

end A311725.P3256682736336814915

/-! ## A311725.P14086468692190239223

`A313739(n)-A029578(A078213(n+1))`
-/

namespace A311725.P14086468692190239223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n - A029578 (A078213 (n + 1)).toNat

end

end A311725.P14086468692190239223

/-! ## A311725.P5516326952525491001

`A095278(2*(n+1))+A063725(A022562(n+1))`
-/

namespace A311725.P5516326952525491001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (2 * (n + 1)) + A063725 (A022562 (n + 1)).toNat

end

end A311725.P5516326952525491001

/-!
# A311726: Coordination sequence Gal.6.422.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311726, there is no canonical definition to state claims against.
-/

/-! ## A311726.P1233826646701814478

`A311721(n)+A309475(A025047(2*n))`
-/

namespace A311726.P1233826646701814478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311721 n + A309475 (A025047 (2 * n)).toNat

end

end A311726.P1233826646701814478

/-! ## A311726.P15625302585750324322

`∑[A374684(A056000(n))]+1`
-/

namespace A311726.P15625302585750324322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A056000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A311726.P15625302585750324322

/-! ## A311726.P6254574106605593933

`A302242(A208927(n+1))+A008574(n)`
-/

namespace A311726.P6254574106605593933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A208927 (n + 1)).toNat + A008574 n

end

end A311726.P6254574106605593933

/-! ## A311726.P7430775792909371715

`A311721(n)+A276791(A250527(n+1))`
-/

namespace A311726.P7430775792909371715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311721 n + A276791 (A250527 (n + 1)).toNat

end

end A311726.P7430775792909371715

/-! ## A311726.P15333375623341469221

`A311742(n)-A250214(A250253(n+1))`
-/

namespace A311726.P15333375623341469221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n - A250214 (A250253 (n + 1)).toNat

end

end A311726.P15333375623341469221

/-!
# A311727: Coordination sequence Gal.4.93.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311727, there is no canonical definition to state claims against.
-/

/-! ## A311727.P2672096673094782867

`A008579(n)-A049321(A106297(n+1))`
-/

namespace A311727.P2672096673094782867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A049321 (A106297 (n + 1)).toNat

end

end A311727.P2672096673094782867

/-! ## A311727.P4133493386706245030

`A332104(A188022(n))+A008574(n)`
-/

namespace A311727.P4133493386706245030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332104 (A188022 n).toNat + A008574 n

end

end A311727.P4133493386706245030

/-! ## A311727.P2466299622572501786

`A329343(A002628(n))+A311726(n)`
-/

namespace A311727.P2466299622572501786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329343 (A002628 n).toNat + A311726 n

end

end A311727.P2466299622572501786

/-! ## A311727.P18169058124876930623

`or(A008574(n), A087117(A350796(n)))`
-/

namespace A311727.P18169058124876930623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A087117 (A350796 n).toNat)

end

end A311727.P18169058124876930623

/-! ## A311727.P3410767246818381568

`xor(A087117(A148742(n)), A311767(n))`
-/

namespace A311727.P3410767246818381568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087117 (A148742 n).toNat) (A311767 n)

end

end A311727.P3410767246818381568

/-!
# A311728: Coordination sequence Gal.5.60.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311728, there is no canonical definition to state claims against.
-/

/-! ## A311728.P11127942868340426428

`A311731(A062399(n))-char[7]`
-/

namespace A311728.P11127942868340426428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 (A062399 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311728.P11127942868340426428

/-! ## A311728.P17798159408627578899

`A311913(n)-A305821(3^n)`
-/

namespace A311728.P17798159408627578899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311913 n - A305821 (3 ^ n)

end

end A311728.P17798159408627578899

/-! ## A311728.P13548816394280127607

`A311254(n)+A010059(A001519(n))`
-/

namespace A311728.P13548816394280127607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311254 n + A010059 (A001519 n).toNat

end

end A311728.P13548816394280127607

/-! ## A311728.P7475805044657507603

`A311713(A120126(n))+A156659(n)`
-/

namespace A311728.P7475805044657507603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311713 (A120126 n).toNat + A156659 n

end

end A311728.P7475805044657507603

/-! ## A311728.P4769815513767181034

`A032796(3*n+1)-A030301(A060535(n))`
-/

namespace A311728.P4769815513767181034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (3 * n + 1) - A030301 (A060535 n).toNat

end

end A311728.P4769815513767181034

/-!
# A311729: Coordination sequence Gal.6.226.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311729, there is no canonical definition to state claims against.
-/

/-! ## A311729.P7485028057173469894

`A297155(A132402(n))+A008574(n)`
-/

namespace A311729.P7485028057173469894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A132402 n).toNat + A008574 n

end

end A311729.P7485028057173469894

/-! ## A311729.P4123896113802951113

`A286484(A004195(3*n+2))+A004976(n)`
-/

namespace A311729.P4123896113802951113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286484 (A004195 (3 * n + 2)).toNat + A004976 n

end

end A311729.P4123896113802951113

/-! ## A311729.P3901000233325642416

`A311731(A062399(n))-char[8]`
-/

namespace A311729.P3901000233325642416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 (A062399 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311729.P3901000233325642416

/-! ## A311729.P15693444224004533124

`A353846(A000045(n))+A004976(n)`
-/

namespace A311729.P15693444224004533124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A000045 n).toNat + A004976 n

end

end A311729.P15693444224004533124

/-! ## A311729.P4920811082849482490

`A311714(n)+A124010(A246006(n))`
-/

namespace A311729.P4920811082849482490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311714 n + A124010 (A246006 n).toNat

end

end A311729.P4920811082849482490

/-!
# A311730: Coordination sequence Gal.6.125.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311730, there is no canonical definition to state claims against.
-/

/-! ## A311730.P14612974436572686536

`A311253(n)+A010059(A029895(n))`
-/

namespace A311730.P14612974436572686536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311253 n + A010059 (A029895 n).toNat

end

end A311730.P14612974436572686536

/-! ## A311730.P8647342329420917533

`A311731(n)-A101688(A005043(n+2))`
-/

namespace A311730.P8647342329420917533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 n - A101688 (A005043 (n + 2)).toNat

end

end A311730.P8647342329420917533

/-! ## A311730.P10407746624251958330

`A311731(A062399(n))-C(A331845(n), 2)`
-/

namespace A311730.P10407746624251958330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 (A062399 n).toNat - (Nat.choose (A331845 n).toNat 2 : ℤ)

end

end A311730.P10407746624251958330

/-! ## A311730.P14133782525262350516

`A311731(A062399(n))-A335446(3*n+1)`
-/

namespace A311730.P14133782525262350516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 (A062399 n).toNat - A335446 (3 * n + 1)

end

end A311730.P14133782525262350516

/-! ## A311730.P1143127441465863178

`A111660(A312563(n)+A311701(n))`
-/

namespace A311730.P1143127441465863178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A312563 n + A311701 n).toNat

end

end A311730.P1143127441465863178

/-!
# A311731: Coordination sequence Gal.6.121.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311731, there is no canonical definition to state claims against.
-/

/-! ## A311731.P6147195206829064785

`xor(A046145(A213263(n+1)), A311586(n))`
-/

namespace A311731.P6147195206829064785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046145 (A213263 (n + 1)).toNat) (A311586 n)

end

end A311731.P6147195206829064785

/-! ## A311731.P9428129321706448232

`A311728(A062399(n))+char[7]`
-/

namespace A311731.P9428129321706448232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311728 (A062399 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311731.P9428129321706448232

/-! ## A311731.P13192087048487079683

`A311288(n)+A087748(A077996(n))`
-/

namespace A311731.P13192087048487079683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311288 n + A087748 (A077996 n).toNat

end

end A311731.P13192087048487079683

/-! ## A311731.P10339344200213465473

`A311336(n)+A069849(A293361(n))`
-/

namespace A311731.P10339344200213465473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311336 n + A069849 (A293361 n).toNat

end

end A311731.P10339344200213465473

/-! ## A311731.P17067610760943549578

`A311728(A120126(n))+A048735(A048735(n))`
-/

namespace A311731.P17067610760943549578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311728 (A120126 n).toNat + A048735 (A048735 n).toNat

end

end A311731.P17067610760943549578

/-!
# A311732: Coordination sequence Gal.6.222.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311732, there is no canonical definition to state claims against.
-/

/-! ## A311732.P7928015323228141317

`A311347(n)+A003982(A091588(n))`
-/

namespace A311732.P7928015323228141317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A003982 (A091588 n).toNat

end

end A311732.P7928015323228141317

/-! ## A311732.P872274856498696730

`A311347(n)+A025455(A178118(n))`
-/

namespace A311732.P872274856498696730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A025455 (A178118 n).toNat

end

end A311732.P872274856498696730

/-! ## A311732.P15488945953513257080

`A311347(n)+A286563(A017258(n))`
-/

namespace A311732.P15488945953513257080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A286563 (A017258 n).toNat

end

end A311732.P15488945953513257080

/-!
# A311733: Coordination sequence Gal.5.56.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311733, there is no canonical definition to state claims against.
-/

/-! ## A311733.P2510824208197067742

`∑[A098037(A014742(n))]`
-/

namespace A311733.P2510824208197067742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (A014742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311733.P2510824208197067742

/-! ## A311733.P17937672345606008308

`A311348(n)+A132440(A006924(n))`
-/

namespace A311733.P17937672345606008308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311348 n + A132440 (A006924 n).toNat

end

end A311733.P17937672345606008308

/-! ## A311733.P3143236949069336850

`A311349(n)+A132440(A006924(n))`
-/

namespace A311733.P3143236949069336850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311349 n + A132440 (A006924 n).toNat

end

end A311733.P3143236949069336850

/-! ## A311733.P4783138370105850638

`A311349(n)+A185012(A087949(n))`
-/

namespace A311733.P4783138370105850638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311349 n + A185012 (A087949 n).toNat

end

end A311733.P4783138370105850638

/-! ## A311733.P13954811865682587101

`A311734(n)-A102683(A000111(n))`
-/

namespace A311733.P13954811865682587101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311734 n - A102683 (A000111 n).toNat

end

end A311733.P13954811865682587101

/-!
# A311734: Coordination sequence Gal.6.430.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311734, there is no canonical definition to state claims against.
-/

/-! ## A311734.P15401498071399913423

`A311683(n)+A248327(A086880(n))`
-/

namespace A311734.P15401498071399913423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311683 n + A248327 (A086880 n).toNat

end

end A311734.P15401498071399913423

/-! ## A311734.P2751775563412441417

`A311733(n)+A102683(A000111(n))`
-/

namespace A311734.P2751775563412441417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311733 n + A102683 (A000111 n).toNat

end

end A311734.P2751775563412441417

/-! ## A311734.P11310028576902631166

`A311731(n)+A006923(A184963(n))`
-/

namespace A311734.P11310028576902631166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311731 n + A006923 (A184963 n).toNat

end

end A311734.P11310028576902631166

/-! ## A311734.P6122899606461193523

`A311733(n)+A185284(A311721(n))`
-/

namespace A311734.P6122899606461193523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311733 n + A185284 (A311721 n).toNat

end

end A311734.P6122899606461193523

/-! ## A311734.P17924912646132146784

`or(A055641(A309104(n)), A311733(n))`
-/

namespace A311734.P17924912646132146784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A309104 n).toNat) (A311733 n)

end

end A311734.P17924912646132146784

/-!
# A311735: Coordination sequence Gal.5.101.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311735, there is no canonical definition to state claims against.
-/

/-! ## A311735.P8063349621439206484

`A360860(A007956(n+1))+A301670(n)`
-/

namespace A311735.P8063349621439206484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360860 (A007956 (n + 1)).toNat + A301670 n

end

end A311735.P8063349621439206484

/-! ## A311735.P9585167562932991374

`A301670(n)+A003056(A206705(3*(n+1)))`
-/

namespace A311735.P9585167562932991374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A003056 (A206705 (3 * (n + 1))).toNat

end

end A311735.P9585167562932991374

/-! ## A311735.P5592029670444959710

`A338733(2*n)%(A289876(n+1)+1)`
-/

namespace A311735.P5592029670444959710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338733 (2 * n)) (A289876 (n + 1) + 1)

end

end A311735.P5592029670444959710

/-! ## A311735.P8884194905158248869

`A008574(n)+A003285(A152827(n))`
-/

namespace A311735.P8884194905158248869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A003285 (A152827 n).toNat

end

end A311735.P8884194905158248869

/-! ## A311735.P14297693771974720945

`A311352(n)+A014084(A000110(n))`
-/

namespace A311735.P14297693771974720945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311352 n + A014084 (A000110 n).toNat

end

end A311735.P14297693771974720945

/-!
# A311736: Coordination sequence Gal.4.44.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311736, there is no canonical definition to state claims against.
-/

/-! ## A311736.P11944426761970237354

`A313002(n)-A277143(A052545(n))-A277143(A250120(n))`
-/

namespace A311736.P11944426761970237354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 n - A277143 (A052545 n).toNat - A277143 (A250120 n).toNat

end

end A311736.P11944426761970237354

/-! ## A311736.P2894626962904623986

`A313002(n)-A277143(A052545(n))-A277143(A072154(2*n))`
-/

namespace A311736.P2894626962904623986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 n - A277143 (A052545 n).toNat - A277143 (A072154 (2 * n)).toNat

end

end A311736.P2894626962904623986

/-! ## A311736.P2435085882974563664

`A313002(n)-A277143(A052545(n))-A277143(A330025(n)+A312561(n))`
-/

namespace A311736.P2435085882974563664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 n - A277143 (A052545 n).toNat - A277143 (A330025 n + A312561 n).toNat

end

end A311736.P2435085882974563664

/-! ## A311736.P12473177594033449568

`A313002(n)-A277143(A052545(n))-A277143(A315187(n)-A244895(n))`
-/

namespace A311736.P12473177594033449568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 n - A277143 (A052545 n).toNat - A277143 (A315187 n - A244895 n).toNat

end

end A311736.P12473177594033449568

/-! ## A311736.P8319510141685789869

`A313002(n)-A277143(A052545(n))-A277143(A315303(n)-A330025(n))`
-/

namespace A311736.P8319510141685789869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 n - A277143 (A052545 n).toNat - A277143 (A315303 n - A330025 n).toNat

end

end A311736.P8319510141685789869

/-!
# A311737: Coordination sequence Gal.6.414.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311737, there is no canonical definition to state claims against.
-/

/-! ## A311737.P10382431968563312891

`A313002(n)-A277143(A052545(n))`
-/

namespace A311737.P10382431968563312891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313002 n - A277143 (A052545 n).toNat

end

end A311737.P10382431968563312891

/-! ## A311737.P12968334711699809464

`A310858(n)+A298596(A321312(2*(n+1)))`
-/

namespace A311737.P12968334711699809464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310858 n + A298596 (A321312 (2 * (n + 1))).toNat

end

end A311737.P12968334711699809464

/-! ## A311737.P1394915545862642252

`A311736(n)+A277143(A014138(n))`
-/

namespace A311737.P1394915545862642252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311736 n + A277143 (A014138 n).toNat

end

end A311737.P1394915545862642252

/-! ## A311737.P6774387813731494647

`A311736(n)+A184973(A186724(n))`
-/

namespace A311737.P6774387813731494647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311736 n + A184973 (A186724 n).toNat

end

end A311737.P6774387813731494647

/-! ## A311737.P839403292453253774

`A250120(n)-A353506(A116068(n+5))`
-/

namespace A311737.P839403292453253774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A353506 (A116068 (n + 5)).toNat

end

end A311737.P839403292453253774

/-!
# A311738: Coordination sequence Gal.5.147.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311738, there is no canonical definition to state claims against.
-/

/-! ## A311738.P6757936462533806053

`A315531(n)-record[A001222(A311745(n))]`
-/

namespace A311738.P6757936462533806053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A311745 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315531 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311738.P6757936462533806053

/-! ## A311738.P923141596040449640

`A311228(n)+A054635(A334137(n))`
-/

namespace A311738.P923141596040449640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n + A054635 (A334137 n).toNat

end

end A311738.P923141596040449640

/-! ## A311738.P3919922807544784439

`A315011(A087051(n))-A003056(n)`
-/

namespace A311738.P3919922807544784439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315011 (A087051 n).toNat - A003056 n

end

end A311738.P3919922807544784439

/-! ## A311738.P5388637345026574051

`A191983(A151938(n)+A007310(n+1))`
-/

namespace A311738.P5388637345026574051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191983 (A151938 n + A007310 (n + 1)).toNat

end

end A311738.P5388637345026574051

/-!
# A311739: Coordination sequence Gal.5.157.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311739, there is no canonical definition to state claims against.
-/

/-! ## A311739.P1112641479136156561

`A278530(n)+A106744(A311212(n))`
-/

namespace A311739.P1112641479136156561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278530 n + A106744 (A311212 n).toNat

end

end A311739.P1112641479136156561

/-! ## A311739.P9582828390042472750

`A311738(n)+A178489(A165877(n))`
-/

namespace A311739.P9582828390042472750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A178489 (A165877 n).toNat

end

end A311739.P9582828390042472750

/-! ## A311739.P5701510890746177234

`A311738(n)+A185284(A311730(n))`
-/

namespace A311739.P5701510890746177234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A185284 (A311730 n).toNat

end

end A311739.P5701510890746177234

/-! ## A311739.P498585504571079237

`A338915(A085908(n+1))+A311244(n)`
-/

namespace A311739.P498585504571079237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338915 (A085908 (n + 1)).toNat + A311244 n

end

end A311739.P498585504571079237

/-! ## A311739.P16310266554390231591

`A000120(A130915(n))+4*n`
-/

namespace A311739.P16310266554390231591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A130915 n).toNat + (4 * n : ℤ)

end

end A311739.P16310266554390231591

/-!
# A311740: Coordination sequence Gal.6.269.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311740, there is no canonical definition to state claims against.
-/

/-! ## A311740.P2970794765642776245

`or(A301670(n), A341793(A082216(n)))`
-/

namespace A311740.P2970794765642776245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A301670 n) (A341793 ((A082216 n).toNat + 10))

end

end A311740.P2970794765642776245

/-! ## A311740.P6041240811968655516

`A301670(n)+A026612(A003094(n))`
-/

namespace A311740.P6041240811968655516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A026612 (A003094 n).toNat

end

end A311740.P6041240811968655516

/-! ## A311740.P8602440881498333912

`A301670(n)+A086016(A141583(n))`
-/

namespace A311740.P8602440881498333912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A086016 (A141583 n).toNat

end

end A311740.P8602440881498333912

/-! ## A311740.P11691975222956010916

`A301670(n)+A144595(A178744(n))`
-/

namespace A311740.P11691975222956010916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A144595 (A178744 n).toNat

end

end A311740.P11691975222956010916

/-! ## A311740.P16262353967395107340

`A310371(n)-A328311(A154638(n))`
-/

namespace A311740.P16262353967395107340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310371 n - A328311 (A154638 n).toNat

end

end A311740.P16262353967395107340

/-!
# A311741: Coordination sequence Gal.6.513.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311741, there is no canonical definition to state claims against.
-/

/-! ## A311741.P13388515393057952814

`A340999(A311732(2*(n+2)))+A311721(n)`
-/

namespace A311741.P13388515393057952814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A311732 (2 * (n + 2))).toNat + 204) + A311721 n

end

end A311741.P13388515393057952814

/-! ## A311741.P11633655333554814480

`A311745(n)-(∏{p}[A111576(n+1), #]-1)%2`
-/

namespace A311741.P11633655333554814480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311745 n - Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1) 2

end

end A311741.P11633655333554814480

/-! ## A311741.P7940038058410442637

`A250120(n)-A048881(A081391(3*n+1))`
-/

namespace A311741.P7940038058410442637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A048881 (A081391 (3 * n + 1)).toNat

end

end A311741.P7940038058410442637

/-!
# A311742: Coordination sequence Gal.5.174.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311742, there is no canonical definition to state claims against.
-/

/-! ## A311742.P10905653733352340472

`A311743(n)-A185284(A016789(n))`
-/

namespace A311742.P10905653733352340472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311743 n - A185284 (A016789 n).toNat

end

end A311742.P10905653733352340472

/-! ## A311742.P12321700512330945951

`A311336(n)+A001822(A191825(n))`
-/

namespace A311742.P12321700512330945951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311336 n + A001822 (A191825 n).toNat

end

end A311742.P12321700512330945951

/-! ## A311742.P8748905544560774801

`A312376(n)-A118953(A104684(n))`
-/

namespace A311742.P8748905544560774801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312376 n - A118953 (A104684 n).toNat

end

end A311742.P8748905544560774801

/-! ## A311742.P2137380729383521773

`A311743(A087051(n))`
-/

namespace A311742.P2137380729383521773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311743 (A087051 n).toNat

end

end A311742.P2137380729383521773

/-! ## A311742.P876092182394153586

`A311743(A227549(n+1))`
-/

namespace A311742.P876092182394153586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311743 (A227549 (n + 1)).toNat

end

end A311742.P876092182394153586

/-!
# A311743: Coordination sequence Gal.5.155.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311743, there is no canonical definition to state claims against.
-/

/-! ## A311743.P9165976357212647915

`A311742(n)+A185284(A016789(n))`
-/

namespace A311743.P9165976357212647915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n + A185284 (A016789 n).toNat

end

end A311743.P9165976357212647915

/-!
# A311744: Coordination sequence Gal.3.27.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311744, there is no canonical definition to state claims against.
-/

/-! ## A311744.P1005137188378332770

`or(A056973(A002444(n)), A311738(n))`
-/

namespace A311744.P1005137188378332770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056973 (A002444 n).toNat) (A311738 n)

end

end A311744.P1005137188378332770

/-! ## A311744.P12170817628072725723

`xor(A007814(A281157(n)), A312912(n))`
-/

namespace A311744.P12170817628072725723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A281157 n).toNat) (A312912 n)

end

end A311744.P12170817628072725723

/-! ## A311744.P749639804225005535

`or(A065205(A288583(n+1)), A311738(n))`
-/

namespace A311744.P749639804225005535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065205 (A288583 (n + 1)).toNat) (A311738 n)

end

end A311744.P749639804225005535

/-! ## A311744.P1084416629428148689

`A252736(A003242(2*n))+A007094(3*n+1)`
-/

namespace A311744.P1084416629428148689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A003242 (2 * n)).toNat + A007094 (3 * n + 1)

end

end A311744.P1084416629428148689

/-!
# A311745: Coordination sequence Gal.4.64.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311745, there is no canonical definition to state claims against.
-/

/-! ## A311745.P15961280374543281599

`A311741(n)+(∏{p}[A111576(n+1), #]-1)%2`
-/

namespace A311745.P15961280374543281599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311741 n + Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1) 2

end

end A311745.P15961280374543281599

/-! ## A311745.P11911274224176959836

`A311995(n)-A057427(A271273(n))`
-/

namespace A311745.P11911274224176959836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311995 n - A057427 (A271273 n).toNat

end

end A311745.P11911274224176959836

/-! ## A311745.P11152384767304483745

`A311966(n)-A037825(A333018(n))`
-/

namespace A311745.P11152384767304483745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311966 n - A037825 (A333018 n).toNat

end

end A311745.P11152384767304483745

/-! ## A311745.P12078941866146808748

`A312302(n)-A121262(A249696(n))`
-/

namespace A311745.P12078941866146808748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312302 n - A121262 (A249696 n).toNat

end

end A311745.P12078941866146808748

/-! ## A311745.P8557496108558340652

`A008579(n)-A323885(A274487(2*(n+1)))`
-/

namespace A311745.P8557496108558340652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A323885 (A274487 (2 * (n + 1))).toNat

end

end A311745.P8557496108558340652

/-!
# A311746: Coordination sequence Gal.6.297.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311746, there is no canonical definition to state claims against.
-/

/-! ## A311746.P9275038069004840088

`A312907(n)+A056594(A080938(n))`
-/

namespace A311746.P9275038069004840088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312907 n + A056594 (A080938 n).toNat

end

end A311746.P9275038069004840088

/-! ## A311746.P1439063506330162377

`A321936(A052905(n))+A311721(n)`
-/

namespace A311746.P1439063506330162377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A052905 n).toNat + A311721 n

end

end A311746.P1439063506330162377

/-! ## A311746.P8345215800465468037

`A311285(n)+A055641(A088289(n+1))`
-/

namespace A311746.P8345215800465468037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311285 n + A055641 (A088289 (n + 1)).toNat

end

end A311746.P8345215800465468037

/-! ## A311746.P7294774439288952315

`A311971(n)-A030315(A271941(n+2))`
-/

namespace A311746.P7294774439288952315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311971 n - A030315 (A271941 (n + 2)).toNat

end

end A311746.P7294774439288952315

/-! ## A311746.P10404065442495100511

`A311971(A227549(n+1))-A298100(n+1)`
-/

namespace A311746.P10404065442495100511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311971 (A227549 (n + 1)).toNat - A298100 (n + 1)

end

end A311746.P10404065442495100511

/-!
# A311748: Coordination sequence Gal.6.394.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311748, there is no canonical definition to state claims against.
-/

/-! ## A311748.P15519461325639870934

`A312311(n)-A108336(A180334(n+1))`
-/

namespace A311748.P15519461325639870934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312311 n - A108336 (A180334 (n + 1)).toNat

end

end A311748.P15519461325639870934

/-!
# A311749: Coordination sequence Gal.5.179.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311749, there is no canonical definition to state claims against.
-/

/-! ## A311749.P7459623270074804754

`A311149(n)+A136167(A123389(n+1))`
-/

namespace A311749.P7459623270074804754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n + A136167 (A123389 (n + 1)).toNat

end

end A311749.P7459623270074804754

/-! ## A311749.P3430016848084151358

`A348443(n+1)+A061313(A336262(n))`
-/

namespace A311749.P3430016848084151358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348443 (n + 1) + A061313 (A336262 n).toNat

end

end A311749.P3430016848084151358

/-! ## A311749.P6679562234644138715

`A250120(n)-A220136(A249975(n+1))`
-/

namespace A311749.P6679562234644138715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A220136 (A249975 (n + 1)).toNat

end

end A311749.P6679562234644138715

/-! ## A311749.P16653587851662996256

`or(A008574(n), A248625(A256494(n+1)))`
-/

namespace A311749.P16653587851662996256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A248625 (A256494 (n + 1)).toNat)

end

end A311749.P16653587851662996256

/-! ## A311749.P11801342658612580761

`xor(A216960(A077739(n+1)), A312129(n))`
-/

namespace A311749.P11801342658612580761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A216960 (A077739 (n + 1)).toNat) (A312129 n)

end

end A311749.P11801342658612580761

/-!
# A311750: Coordination sequence Gal.6.415.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311750, there is no canonical definition to state claims against.
-/

/-! ## A311750.P2696227195622713083

`A312298(n)+A178798(A112817(n+1))`
-/

namespace A311750.P2696227195622713083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312298 n + A178798 (A112817 (n + 1)).toNat

end

end A311750.P2696227195622713083

/-!
# A311751: Coordination sequence Gal.6.393.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311751, there is no canonical definition to state claims against.
-/

/-! ## A311751.P75297381970535189

`A311752(n)-A102683(A122983(n))`
-/

namespace A311751.P75297381970535189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311752 n - A102683 (A122983 n).toNat

end

end A311751.P75297381970535189

/-! ## A311751.P16933228055524418984

`A311752(n)-A185284(A071195(n+1))`
-/

namespace A311751.P16933228055524418984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311752 n - A185284 (A071195 (n + 1)).toNat

end

end A311751.P16933228055524418984

/-! ## A311751.P11735963666163617663

`A311752(n*A287378(n))`
-/

namespace A311751.P11735963666163617663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311752 ((n : ℤ) * A287378 n).toNat

end

end A311751.P11735963666163617663

/-! ## A311751.P17194875990116075867

`A311752(n^A287378(n))`
-/

namespace A311751.P17194875990116075867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311752 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287378 n : ℤ))).toNat

end

end A311751.P17194875990116075867

/-! ## A311751.P16123161150002175000

`A311752(n)%A057798(n)`
-/

namespace A311751.P16123161150002175000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311752 n) (A057798 n)

end

end A311751.P16123161150002175000

/-!
# A311752: Coordination sequence Gal.5.159.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311752, there is no canonical definition to state claims against.
-/

/-! ## A311752.P2628397411572111184

`A311751(n)+A102683(A122983(n))`
-/

namespace A311752.P2628397411572111184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311751 n + A102683 (A122983 n).toNat

end

end A311752.P2628397411572111184

/-! ## A311752.P16340364625142697072

`A311751(n)+A185284(A071195(n+1))`
-/

namespace A311752.P16340364625142697072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311751 n + A185284 (A071195 (n + 1)).toNat

end

end A311752.P16340364625142697072

/-! ## A311752.P11881274869361818702

`A311751(n)-A324692((n+1)^Δ[A185238(3*n)])`
-/

namespace A311752.P11881274869361818702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311751 n - A324692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A311752.P11881274869361818702

/-! ## A311752.P380970310570362053

`A311751(n)-A324692(C(n, A145540(2*n+5))+1)`
-/

namespace A311752.P380970310570362053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311751 n - A324692 (Nat.choose n (A145540 (2 * n + 5)).toNat + 1)

end

end A311752.P380970310570362053

/-!
# A311753: Coordination sequence Gal.6.395.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311753, there is no canonical definition to state claims against.
-/

/-! ## A311753.P6901137616842595641

`and(A160755(A312707(n)), A312721(n))`
-/

namespace A311753.P6901137616842595641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160755 (A312707 n).toNat) (A312721 n)

end

end A311753.P6901137616842595641

/-! ## A311753.P2125071274590762810

`A311754(n)+A178798(A004135(n+1))`
-/

namespace A311753.P2125071274590762810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311754 n + A178798 (A004135 (n + 1)).toNat

end

end A311753.P2125071274590762810

/-!
# A311754: Coordination sequence Gal.3.28.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311754, there is no canonical definition to state claims against.
-/

/-! ## A311754.P12611513638490930

`A311753(n)-A178798(A004135(n+1))`
-/

namespace A311754.P12611513638490930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311753 n - A178798 (A004135 (n + 1)).toNat

end

end A311754.P12611513638490930

/-! ## A311754.P16514021003919771448

`A310815(A087051(n))+1-A293202(n)`
-/

namespace A311754.P16514021003919771448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310815 (A087051 n).toNat + (1 - A293202 n)

end

end A311754.P16514021003919771448

/-! ## A311754.P14963584418715897882

`1-(A293202(A087051(n))-A310815(n))`
-/

namespace A311754.P14963584418715897882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A293202 (A087051 n).toNat - A310815 n)

end

end A311754.P14963584418715897882

/-! ## A311754.P1267511728507728285

`A319394(A293202(n))+A310815(A087051(n))`
-/

namespace A311754.P1267511728507728285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A293202 n).toNat + A310815 (A087051 n).toNat

end

end A311754.P1267511728507728285

/-! ## A311754.P5524886771100617142

`A312320(n)-A064911(A000142(n))`
-/

namespace A311754.P5524886771100617142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312320 n - A064911 (A000142 n).toNat

end

end A311754.P5524886771100617142

/-!
# A311755: Coordination sequence Gal.5.235.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311755, there is no canonical definition to state claims against.
-/

/-! ## A311755.P10137569648996598526

`∑[dr(A001281(A185078(n+1)))]`
-/

namespace A311755.P10137569648996598526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001281 (A185078 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311755.P10137569648996598526

/-! ## A311755.P3028406067922077531

`A311711(n)+A066301(A328434(n))`
-/

namespace A311755.P3028406067922077531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311711 n + A066301 (A328434 n).toNat

end

end A311755.P3028406067922077531

/-! ## A311755.P2483456134266959013

`A311756(n)-A086080(A176198(3*n+4))`
-/

namespace A311755.P2483456134266959013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 n - A086080 (A176198 (3 * n + 4)).toNat

end

end A311755.P2483456134266959013

/-! ## A311755.P7921191655819993964

`A311757(n)-A086080(A176198(3*n+4))`
-/

namespace A311755.P7921191655819993964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n - A086080 (A176198 (3 * n + 4)).toNat

end

end A311755.P7921191655819993964

/-!
# A311756: Coordination sequence Gal.5.170.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311756, there is no canonical definition to state claims against.
-/

/-! ## A311756.P17678588666706379578

`A311757(n)-A055641(A083329(n+2))`
-/

namespace A311756.P17678588666706379578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n - A055641 (A083329 (n + 2)).toNat

end

end A311756.P17678588666706379578

/-! ## A311756.P7991869213941804299

`A311757(n)-A025465(A096647(n))`
-/

namespace A311756.P7991869213941804299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n - A025465 (A096647 n).toNat

end

end A311756.P7991869213941804299

/-! ## A311756.P4433353223559859663

`A311757(n)-A035040(A184974(n))`
-/

namespace A311756.P4433353223559859663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n - A035040 (A184974 n).toNat

end

end A311756.P4433353223559859663

/-! ## A311756.P17356927765340813631

`A311757(n)+A000007(A340329(n))`
-/

namespace A311756.P17356927765340813631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n + A000007 (A340329 n).toNat

end

end A311756.P17356927765340813631

/-!
# A311757: Coordination sequence Gal.6.396.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311757, there is no canonical definition to state claims against.
-/

/-! ## A311757.P4439881347178391735

`A311756(n)+A185284(A310053(n))`
-/

namespace A311757.P4439881347178391735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 n + A185284 (A310053 n).toNat

end

end A311757.P4439881347178391735

/-! ## A311757.P124769351377377598

`A311756(A087051(n))+A025462(n)`
-/

namespace A311757.P124769351377377598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 (A087051 n).toNat + A025462 n

end

end A311757.P124769351377377598

/-! ## A311757.P11570371270594475455

`A311756(n)+A025465(A096647(n))`
-/

namespace A311757.P11570371270594475455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 n + A025465 (A096647 n).toNat

end

end A311757.P11570371270594475455

/-! ## A311757.P61086199183854999

`A311756(n)+A035040(A184974(n))`
-/

namespace A311757.P61086199183854999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 n + A035040 (A184974 n).toNat

end

end A311757.P61086199183854999

/-!
# A311760: Coordination sequence Gal.6.412.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311760, there is no canonical definition to state claims against.
-/

/-! ## A311760.P1258227885143060341

`A311761(n)-A000120(A185213(n))`
-/

namespace A311760.P1258227885143060341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311761 n - A000120 (A185213 n).toNat

end

end A311760.P1258227885143060341

/-! ## A311760.P1075934762719101923

`A311761(n)+A178798(A027340(n))`
-/

namespace A311760.P1075934762719101923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311761 n + A178798 (A027340 n).toNat

end

end A311760.P1075934762719101923

/-! ## A311760.P8632599144914752050

`A311761(n)-A225099(A008640(n))`
-/

namespace A311760.P8632599144914752050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311761 n - A225099 (A008640 n).toNat

end

end A311760.P8632599144914752050

/-! ## A311760.P16804828476091820785

`A311761(n)-A055641(A283323(n))`
-/

namespace A311760.P16804828476091820785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311761 n - A055641 (A283323 n).toNat

end

end A311760.P16804828476091820785

/-! ## A311760.P14507176233223401864

`A311761(n)%A031175(2^n)`
-/

namespace A311760.P14507176233223401864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311761 n) (A031175 (2 ^ n))

end

end A311760.P14507176233223401864

/-!
# A311761: Coordination sequence Gal.6.394.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311761, there is no canonical definition to state claims against.
-/

/-! ## A311761.P16577297987533414182

`A311760(n)+A000120(A185213(n))`
-/

namespace A311761.P16577297987533414182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311760 n + A000120 (A185213 n).toNat

end

end A311761.P16577297987533414182

/-! ## A311761.P7425164658747791249

`A311760(n)+A225099(A008640(n))`
-/

namespace A311761.P7425164658747791249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311760 n + A225099 (A008640 n).toNat

end

end A311761.P7425164658747791249

/-! ## A311761.P1620841507310422311

`A311760(n)+A055641(A283323(n))`
-/

namespace A311761.P1620841507310422311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311760 n + A055641 (A283323 n).toNat

end

end A311761.P1620841507310422311

/-!
# A311762: Coordination sequence Gal.6.288.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311762, there is no canonical definition to state claims against.
-/

/-! ## A311762.P12179063367820080928

`A245574(A101842(n+1))+A008574(n)-1`
-/

namespace A311762.P12179063367820080928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A101842 (n + 1)).toNat + (A008574 n - 1)

end

end A311762.P12179063367820080928

/-! ## A311762.P5204787671494925192

`A245574(A101842(n+1))+A004273(2*n)`
-/

namespace A311762.P5204787671494925192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A101842 (n + 1)).toNat + A004273 (2 * n)

end

end A311762.P5204787671494925192

/-! ## A311762.P16822228258131111450

`A245574(A101842(n+1))+A014681(4*n)`
-/

namespace A311762.P16822228258131111450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A101842 (n + 1)).toNat + A014681 (4 * n)

end

end A311762.P16822228258131111450

/-! ## A311762.P8693294797194928595

`A245574(A101842(n+1))+A008706(n)-(n+1)`
-/

namespace A311762.P8693294797194928595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A101842 (n + 1)).toNat + (A008706 n - (n + 1 : ℤ))

end

end A311762.P8693294797194928595

/-! ## A311762.P8192365178266918868

`A245574(A101842(n+1))+A008458(n)-Δ[n²]`
-/

namespace A311762.P8192365178266918868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A101842 (n + 1)).toNat + (A008458 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A311762.P8192365178266918868

/-!
# A311763: Coordination sequence Gal.6.304.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311763, there is no canonical definition to state claims against.
-/

/-! ## A311763.P11192026237393350026

`xor(A311764(n), A324816(A214825(n)))`
-/

namespace A311763.P11192026237393350026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311764 n) (A324816 (A214825 n).toNat)

end

end A311763.P11192026237393350026

/-! ## A311763.P12324419372092885394

`A314829(n)-A001221(A001127(n))`
-/

namespace A311763.P12324419372092885394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A001221 (A001127 n).toNat

end

end A311763.P12324419372092885394

/-! ## A311763.P4450584161859522175

`xor(A266619(A008956(n)), A311792(n))`
-/

namespace A311763.P4450584161859522175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266619 (A008956 n).toNat) (A311792 n)

end

end A311763.P4450584161859522175

/-! ## A311763.P11186007952105496249

`A311809(n)-A055641(A083606(n+1))`
-/

namespace A311763.P11186007952105496249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311809 n - A055641 (A083606 (n + 1)).toNat

end

end A311763.P11186007952105496249

/-! ## A311763.P18106847516088396132

`∑[A297770(∑[A216166(n+1)])]`
-/

namespace A311763.P18106847516088396132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311763.P18106847516088396132

/-!
# A311764: Coordination sequence Gal.6.142.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311764, there is no canonical definition to state claims against.
-/

/-! ## A311764.P601944125351456231

`xor(A311763(n), A324816(A214825(n)))`
-/

namespace A311764.P601944125351456231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311763 n) (A324816 (A214825 n).toNat)

end

end A311764.P601944125351456231

/-! ## A311764.P10177433772160458709

`xor(A185284(A001950(n+1)), A311765(n))`
-/

namespace A311764.P10177433772160458709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A001950 (n + 1)).toNat) (A311765 n)

end

end A311764.P10177433772160458709

/-! ## A311764.P13297985735193107678

`xor(A185284(A229489(n+1)), A311765(n))`
-/

namespace A311764.P13297985735193107678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A229489 (n + 1)).toNat) (A311765 n)

end

end A311764.P13297985735193107678

/-! ## A311764.P6385343379174226414

`xor(A314829(n)-A001221(A001127(n)), A324816(A214825(n)))`
-/

namespace A311764.P6385343379174226414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A314829 n - A001221 (A001127 n).toNat) (A324816 (A214825 n).toNat)

end

end A311764.P6385343379174226414

/-! ## A311764.P16658547035075637582

`A311765(n)+A178798(A293230(n))`
-/

namespace A311764.P16658547035075637582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311765 n + A178798 (A293230 n).toNat

end

end A311764.P16658547035075637582

/-!
# A311765: Coordination sequence Gal.6.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311765, there is no canonical definition to state claims against.
-/

/-! ## A311765.P4191509753839451236

`xor(A185284(A001950(n+1)), A311764(n))`
-/

namespace A311765.P4191509753839451236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A001950 (n + 1)).toNat) (A311764 n)

end

end A311765.P4191509753839451236

/-! ## A311765.P6154005634024728784

`xor(A185284(A229489(n+1)), A311764(n))`
-/

namespace A311765.P6154005634024728784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A229489 (n + 1)).toNat) (A311764 n)

end

end A311765.P6154005634024728784

/-! ## A311765.P16210718952644165206

`A311764(n)+A225099(A008640(n))`
-/

namespace A311765.P16210718952644165206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A225099 (A008640 n).toNat

end

end A311765.P16210718952644165206

/-! ## A311765.P4549610591493334736

`A311764(n)+A055641(A283323(n))`
-/

namespace A311765.P4549610591493334736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A055641 (A283323 n).toNat

end

end A311765.P4549610591493334736

/-!
# A311766: Coordination sequence Gal.6.240.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311766, there is no canonical definition to state claims against.
-/

/-! ## A311766.P14429891337973366605

`A311767(n)-A185284(A310954(n))`
-/

namespace A311766.P14429891337973366605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311767 n - A185284 (A310954 n).toNat

end

end A311766.P14429891337973366605

/-! ## A311766.P8970312488371787820

`A311767(n)+A016389(A019538(n+1))`
-/

namespace A311766.P8970312488371787820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311767 n + A016389 (A019538 (n + 1)).toNat

end

end A311766.P8970312488371787820

/-! ## A311766.P5825585236713476399

`A311767(n)+A008683(A351801(n+1))`
-/

namespace A311766.P5825585236713476399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311767 n + A008683 (A351801 (n + 1)).toNat

end

end A311766.P5825585236713476399

/-! ## A311766.P15214437829522476622

`A311767(A062399(n))`
-/

namespace A311766.P15214437829522476622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311767 (A062399 n).toNat

end

end A311766.P15214437829522476622

/-! ## A311766.P976435080929189138

`A311767(A120126(n))`
-/

namespace A311766.P976435080929189138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311767 (A120126 n).toNat

end

end A311766.P976435080929189138

/-!
# A311767: Coordination sequence Gal.6.235.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311767, there is no canonical definition to state claims against.
-/

/-! ## A311767.P1567902686491362948

`A162641(A136772(n+5))+∏{e}[3^n, A311403(#)]`
-/

namespace A311767.P1567902686491362948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A136772 (n + 5)).toNat + ∏ p ∈ Nat.primeFactors (f1 n), A311403 (Nat.factorization (f1 n) p)

end

end A311767.P1567902686491362948

/-! ## A311767.P8443992453981605714

`A342019(A342002(2*(n+1)))+∏{e}[3^n, A311403(#)]`
-/

namespace A311767.P8443992453981605714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342019 (A342002 (2 * (n + 1))).toNat + ∏ p ∈ Nat.primeFactors (f1 n), A311403 (Nat.factorization (f1 n) p)

end

end A311767.P8443992453981605714

/-! ## A311767.P15360375374677639606

`A311766(n)+A185284(A310954(n))`
-/

namespace A311767.P15360375374677639606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311766 n + A185284 (A310954 n).toNat

end

end A311767.P15360375374677639606

/-! ## A311767.P193427123969699506

`A311766(n)-A008683(A351801(n+1))`
-/

namespace A311767.P193427123969699506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311766 n - A008683 (A351801 (n + 1)).toNat

end

end A311767.P193427123969699506

/-!
# A311768: Coordination sequence Gal.6.529.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311768, there is no canonical definition to state claims against.
-/

/-! ## A311768.P9448535621245187798

`A311769(n)-A006996(A204962(n+1))`
-/

namespace A311768.P9448535621245187798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 n - A006996 (A204962 (n + 1)).toNat

end

end A311768.P9448535621245187798

/-! ## A311768.P7256380422734157162

`A250120(n)-A331410(A218210(n+1))`
-/

namespace A311768.P7256380422734157162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A331410 (A218210 (n + 1)).toNat

end

end A311768.P7256380422734157162

/-! ## A311768.P15631591755215639105

`A311769(n^gcd(11, n))`
-/

namespace A311768.P15631591755215639105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 (n ^ Nat.gcd 11 n)

end

end A311768.P15631591755215639105

/-! ## A311768.P6152633115673880496

`A311769(A062399(n))`
-/

namespace A311768.P6152633115673880496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 (A062399 n).toNat

end

end A311768.P6152633115673880496

/-! ## A311768.P3757079082466250595

`A311769(A120126(n))`
-/

namespace A311768.P3757079082466250595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 (A120126 n).toNat

end

end A311768.P3757079082466250595

/-!
# A311769: Coordination sequence Gal.6.516.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311769, there is no canonical definition to state claims against.
-/

/-! ## A311769.P9069351284803522549

`or(A160086(A001006(n)), A311768(n))`
-/

namespace A311769.P9069351284803522549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160086 (A001006 n).toNat) (A311768 n)

end

end A311769.P9069351284803522549

/-! ## A311769.P7028463909122396510

`or(A185245(A128429(n)), A311768(n))`
-/

namespace A311769.P7028463909122396510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185245 (A128429 n).toNat) (A311768 n)

end

end A311769.P7028463909122396510

/-! ## A311769.P3054558346410060234

`A311768(n)+A185245(A128429(n)-1)`
-/

namespace A311769.P3054558346410060234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311768 n + A185245 (A128429 n - 1).toNat

end

end A311769.P3054558346410060234

/-!
# A311770: Coordination sequence Gal.6.459.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311770, there is no canonical definition to state claims against.
-/

/-! ## A311770.P11726832395543679207

`A323023(A347451(3*(n+1)))+A083031(n+1)`
-/

namespace A311770.P11726832395543679207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A347451 (3 * (n + 1))).toNat + A083031 (n + 1)

end

end A311770.P11726832395543679207

/-! ## A311770.P8660928700429454819

`xor(A185264(A314605(n)), A311772(n))`
-/

namespace A311770.P8660928700429454819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185264 (A314605 n).toNat) (A311772 n)

end

end A311770.P8660928700429454819

/-! ## A311770.P1780572978936673576

`A312341(n)-A289025(A007351(n+1))`
-/

namespace A311770.P1780572978936673576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312341 n - A289025 (A007351 (n + 1)).toNat

end

end A311770.P1780572978936673576

/-! ## A311770.P2758246404860227566

`A005117(2*n+1)+sqrt(A210709(3*n+1))+n`
-/

namespace A311770.P2758246404860227566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005117 (2 * n + 1) : ℝ) + Real.sqrt (A210709 (3 * n + 1) : ℝ) + (n : ℝ)

end

end A311770.P2758246404860227566

/-! ## A311770.P17858051839754364426

`A099822(n+1)+A087051(A087051(n))`
-/

namespace A311770.P17858051839754364426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099822 (n + 1) + A087051 (A087051 n).toNat

end

end A311770.P17858051839754364426

/-!
# A311771: Coordination sequence Gal.5.238.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311771, there is no canonical definition to state claims against.
-/

/-! ## A311771.P9934445617040908602

`A062977(A291731(n))+A008574(n)`
-/

namespace A311771.P9934445617040908602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A291731 n).toNat + A008574 n

end

end A311771.P9934445617040908602

/-! ## A311771.P2471325359198176175

`A250120(n)-A088722(A034386(n+2))`
-/

namespace A311771.P2471325359198176175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A088722 (A034386 (n + 2)).toNat

end

end A311771.P2471325359198176175

/-! ## A311771.P8305642615005624893

`A314268(n)+A286493(A175161(n))-A047486(n+1)`
-/

namespace A311771.P8305642615005624893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314268 n + A286493 (A175161 n).toNat - A047486 (n + 1)

end

end A311771.P8305642615005624893

/-! ## A311771.P6987848951580981942

`A102679(A032298(n))+A008574(n)`
-/

namespace A311771.P6987848951580981942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A032298 n).toNat + A008574 n

end

end A311771.P6987848951580981942

/-! ## A311771.P14714094407349802443

`A339690(2*n+1)-A088517(A320402(3*n+2))`
-/

namespace A311771.P14714094407349802443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339690 (2 * n + 1) - A088517 (A320402 (3 * n + 2)).toNat

end

end A311771.P14714094407349802443

/-!
# A311772: Coordination sequence Gal.5.244.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311772, there is no canonical definition to state claims against.
-/

/-! ## A311772.P15108876325167358955

`or(A035622(n), A311765(A062399(n)))`
-/

namespace A311772.P15108876325167358955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035622 n) (A311765 (A062399 n).toNat)

end

end A311772.P15108876325167358955

/-! ## A311772.P14226456548604493375

`xor(A185264(A314605(n)), A311770(n))`
-/

namespace A311772.P14226456548604493375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185264 (A314605 n).toNat) (A311770 n)

end

end A311772.P14226456548604493375

/-! ## A311772.P6278746455603937513

`or(A127322(A025275(n+1)), A311771(n))`
-/

namespace A311772.P6278746455603937513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127322 (A025275 (n + 1)).toNat) (A311771 n)

end

end A311772.P6278746455603937513

/-! ## A311772.P13362060510987988237

`or(A116374(3*n+4), A311171(A062399(n)))`
-/

namespace A311772.P13362060510987988237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116374 (3 * n + 4)) (A311171 (A062399 n).toNat)

end

end A311772.P13362060510987988237

/-! ## A311772.P6875053941954725293

`A311172(n)+A073089(A214914(n))`
-/

namespace A311772.P6875053941954725293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311172 n + A073089 (A214914 n).toNat

end

end A311772.P6875053941954725293

/-!
# A311773: Coordination sequence Gal.6.393.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311773, there is no canonical definition to state claims against.
-/

/-! ## A311773.P16618001185354859289

`A301672(n)+A085974(A000079(n))`
-/

namespace A311773.P16618001185354859289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A085974 (A000079 n).toNat

end

end A311773.P16618001185354859289

/-! ## A311773.P12954972087755484189

`A301672(n)+A178602(A008574(n))`
-/

namespace A311773.P12954972087755484189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A178602 (A008574 n).toNat

end

end A311773.P12954972087755484189

/-! ## A311773.P5569362696508514401

`A301672(n)+A015477(A174617(n))`
-/

namespace A311773.P5569362696508514401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A015477 (A174617 n).toNat

end

end A311773.P5569362696508514401

/-! ## A311773.P9103827364186011685

`A301672(n)+A185284(A006218(n))`
-/

namespace A311773.P9103827364186011685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A185284 (A006218 n).toNat

end

end A311773.P9103827364186011685

/-! ## A311773.P4089890261174535711

`A301672(n)+A076142(A022166(2*(n+2)))`
-/

namespace A311773.P4089890261174535711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A076142 (A022166 (2 * (n + 2))).toNat

end

end A311773.P4089890261174535711

/-!
# A311774: Coordination sequence Gal.5.159.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311774, there is no canonical definition to state claims against.
-/

/-! ## A311774.P9127506321507692561

`A301672(n)+A001222(A309864(n))`
-/

namespace A311774.P9127506321507692561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A001222 (A309864 n).toNat

end

end A311774.P9127506321507692561

/-! ## A311774.P5779437499121374569

`A017817(A120126(n))+4*n`
-/

namespace A311774.P5779437499121374569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (A120126 n).toNat + (4 * n : ℤ)

end

end A311774.P5779437499121374569

/-! ## A311774.P9997615774739909736

`or(A107846(n²²), A301672(n))`
-/

namespace A311774.P9997615774739909736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 ((n ^ 2) ^ 2)) (A301672 n)

end

end A311774.P9997615774739909736

/-! ## A311774.P10358423187313830475

`A301672(n)+∑{e}[A051924(n+1)+1, #-1]`
-/

namespace A311774.P10358423187313830475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A311774.P10358423187313830475

/-! ## A311774.P14511769330895127614

`A301672(n)+A086015(A007558(n))`
-/

namespace A311774.P14511769330895127614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A086015 (A007558 n).toNat

end

end A311774.P14511769330895127614

/-!
# A311775: Coordination sequence Gal.5.76.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311775, there is no canonical definition to state claims against.
-/

/-! ## A311775.P15144274265522988635

`or(A003849(A288808(n)), A311196(n))`
-/

namespace A311775.P15144274265522988635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A288808 n).toNat) (A311196 n)

end

end A311775.P15144274265522988635

/-! ## A311775.P17425078469326272685

`or(A003849(A288808(n)), A311197(n))`
-/

namespace A311775.P17425078469326272685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A288808 n).toNat) (A311197 n)

end

end A311775.P17425078469326272685

/-! ## A311775.P3794917539685746124

`A311816(n)-A107846(A000051(n))`
-/

namespace A311775.P3794917539685746124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n - A107846 (A000051 n).toNat

end

end A311775.P3794917539685746124

/-! ## A311775.P1581816984231047341

`A311816(n)-A316864(A000079(n))`
-/

namespace A311775.P1581816984231047341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n - A316864 (A000079 n).toNat

end

end A311775.P1581816984231047341

/-! ## A311775.P213291867568051831

`A301672(n)+A125117(A049939(n+1))`
-/

namespace A311775.P213291867568051831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A125117 (A049939 (n + 1)).toNat

end

end A311775.P213291867568051831

/-!
# A311776: Coordination sequence Gal.5.70.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311776, there is no canonical definition to state claims against.
-/

/-! ## A311776.P5301343017808003424

`A311189(n)+A011658(A286825(n))`
-/

namespace A311776.P5301343017808003424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311189 n + A011658 (A286825 n).toNat

end

end A311776.P5301343017808003424

/-! ## A311776.P15201836495179967089

`A311201(n)+A010051(A015440(n))`
-/

namespace A311776.P15201836495179967089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311201 n + A010051 (A015440 n).toNat

end

end A311776.P15201836495179967089

/-! ## A311776.P13362277668323516960

`A311687(n)+A082859(A176200(n))`
-/

namespace A311776.P13362277668323516960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311687 n + A082859 (A176200 n).toNat

end

end A311776.P13362277668323516960

/-! ## A311776.P9839674645390408714

`A311688(n)+A082859(A176200(n))`
-/

namespace A311776.P9839674645390408714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311688 n + A082859 (A176200 n).toNat

end

end A311776.P9839674645390408714

/-! ## A311776.P9058737895788116549

`A301293(n)-A001221(A086586(n))`
-/

namespace A311776.P9058737895788116549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A001221 (A086586 n).toNat

end

end A311776.P9058737895788116549

/-!
# A311777: Coordination sequence Gal.6.413.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311777, there is no canonical definition to state claims against.
-/

/-! ## A311777.P13468796870291646030

`A311778(n)%A046500(n)`
-/

namespace A311777.P13468796870291646030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311778 n) (A046500 n)

end

end A311777.P13468796870291646030

/-! ## A311777.P5879895310468329100

`record[A311778(n)]%A270929(3*n+4)`
-/

namespace A311777.P5879895310468329100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A270929 (3 * n + 4))

end

end A311777.P5879895310468329100

/-! ## A311777.P17964621804465249369

`A038500(A001127(n))*A311778(n)`
-/

namespace A311777.P17964621804465249369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A001127 n).toNat * A311778 n

end

end A311777.P17964621804465249369

/-! ## A311777.P11132852187847172056

`A000035(A048581(n))*A311778(n)`
-/

namespace A311777.P11132852187847172056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048581 n).toNat * A311778 n

end

end A311777.P11132852187847172056

/-! ## A311777.P6592065843723074391

`A311778(A062399(n))`
-/

namespace A311777.P6592065843723074391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311778 (A062399 n).toNat

end

end A311777.P6592065843723074391

/-!
# A311779: Coordination sequence Gal.6.393.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311779, there is no canonical definition to state claims against.
-/

/-! ## A311779.P2178883221093535448

`record[A311780(A163351(n))]`
-/

namespace A311779.P2178883221093535448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311780 (A163351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311779.P2178883221093535448

/-! ## A311779.P12069062163374957432

`A311780(sqrt(record[A343953(n)]))`
-/

namespace A311779.P12069062163374957432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311780 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A311779.P12069062163374957432

/-! ## A311779.P16749133072768095589

`∏{e}[A000244(n), A311780(#)]`
-/

namespace A311779.P16749133072768095589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311780 (Nat.factorization (f1 n).natAbs p)

end

end A311779.P16749133072768095589

/-! ## A311779.P13982599053169356498

`A311780(n)%A163792(n+1)`
-/

namespace A311779.P13982599053169356498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311780 n) (A163792 (n + 1))

end

end A311779.P13982599053169356498

/-! ## A311779.P12703723506564864022

`A311780(A062399(n))`
-/

namespace A311779.P12703723506564864022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311780 (A062399 n).toNat

end

end A311779.P12703723506564864022

/-!
# A311781: Coordination sequence Gal.6.85.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311781, there is no canonical definition to state claims against.
-/

/-! ## A311781.P14440193798437326382

`A301299(n)-A393531(A000051(n))`
-/

namespace A311781.P14440193798437326382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n - A393531 (A000051 n).toNat

end

end A311781.P14440193798437326382

/-! ## A311781.P8723089475480415729

`A311880(n)-A275851(A000244(n))`
-/

namespace A311781.P8723089475480415729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311880 n - A275851 (A000244 n).toNat

end

end A311781.P8723089475480415729

/-! ## A311781.P17623036248764640974

`A311782(n)-A102675(A055392(n+1))`
-/

namespace A311781.P17623036248764640974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311782 n - A102675 (A055392 (n + 1)).toNat

end

end A311781.P17623036248764640974

/-! ## A311781.P2741974440390427150

`A083031(n+1)+A038548(A028943(n+1))`
-/

namespace A311781.P2741974440390427150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1) + A038548 (A028943 (n + 1)).toNat

end

end A311781.P2741974440390427150

/-! ## A311781.P6987360989348175065

`A001481(2*n+3)-A108731(A199127(n+1))`
-/

namespace A311781.P6987360989348175065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (2 * n + 3) - A108731 (A199127 (n + 1)).toNat

end

end A311781.P6987360989348175065

/-!
# A311782: Coordination sequence Gal.6.187.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311782, there is no canonical definition to state claims against.
-/

/-! ## A311782.P8030540253385520336

`A311783(n)-A102683(A001317(n))`
-/

namespace A311782.P8030540253385520336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 n - A102683 (A001317 n).toNat

end

end A311782.P8030540253385520336

/-! ## A311782.P14290891068128897626

`A311783(n)-A102683(A238437(n))`
-/

namespace A311782.P14290891068128897626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 n - A102683 (A238437 n).toNat

end

end A311782.P14290891068128897626

/-! ## A311782.P4012804904300177806

`A311783(n)-A185284(A008578(n+1))`
-/

namespace A311782.P4012804904300177806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 n - A185284 (A008578 (n + 1)).toNat

end

end A311782.P4012804904300177806

/-! ## A311782.P17610701603521497626

`A311783(n^A061674(n))`
-/

namespace A311782.P17610701603521497626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A311782.P17610701603521497626

/-! ## A311782.P18219264129944821694

`A311783(n)+A003982(ceil(3^(n-1)))`
-/

namespace A311782.P18219264129944821694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 n + A003982 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A311782.P18219264129944821694

/-!
# A311783: Coordination sequence Gal.6.171.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311783, there is no canonical definition to state claims against.
-/

/-! ## A311783.P4405504776827652601

`A311782(n)+A102683(A001317(n))`
-/

namespace A311783.P4405504776827652601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311782 n + A102683 (A001317 n).toNat

end

end A311783.P4405504776827652601

/-! ## A311783.P17831459306778037372

`A311782(n)+A102683(A238437(n))`
-/

namespace A311783.P17831459306778037372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311782 n + A102683 (A238437 n).toNat

end

end A311783.P17831459306778037372

/-! ## A311783.P9964128281100073875

`A311782(n)+A185284(A008578(n+1))`
-/

namespace A311783.P9964128281100073875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311782 n + A185284 (A008578 (n + 1)).toNat

end

end A311783.P9964128281100073875

/-! ## A311783.P7668586311421594706

`or(A035211(A080546(n+4)), A311782(n))`
-/

namespace A311783.P7668586311421594706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035211 (A080546 (n + 4)).toNat) (A311782 n)

end

end A311783.P7668586311421594706

/-!
# A311784: Coordination sequence Gal.5.126.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311784, there is no canonical definition to state claims against.
-/

/-! ## A311784.P7891380298260613718

`xor(A064911(n+1), A311480(A351870(n)))`
-/

namespace A311784.P7891380298260613718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A064911 (n + 1)) (A311480 (A351870 n).toNat)

end

end A311784.P7891380298260613718

/-! ## A311784.P11400951709132678848

`A250120(n)-A328026(A001870(n))`
-/

namespace A311784.P11400951709132678848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A328026 (A001870 n).toNat

end

end A311784.P11400951709132678848

/-! ## A311784.P6514310429857240102

`A250120(n)-A304465(A064606(n+1))`
-/

namespace A311784.P6514310429857240102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A304465 (A064606 (n + 1)).toNat

end

end A311784.P6514310429857240102

/-! ## A311784.P7226979998307455631

`A250120(n)-A335428(A045770(n+1))`
-/

namespace A311784.P7226979998307455631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A335428 (A045770 (n + 1)).toNat

end

end A311784.P7226979998307455631

/-! ## A311784.P15980727773250679618

`A250120(n)-A358379(A004250(n+3))`
-/

namespace A311784.P15980727773250679618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A358379 (A004250 (n + 3)).toNat

end

end A311784.P15980727773250679618

/-!
# A311785: Coordination sequence Gal.6.144.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311785, there is no canonical definition to state claims against.
-/

/-! ## A311785.P15349136480215305825

`∑[A338482(A204520(n+2))+1]-1`
-/

namespace A311785.P15349136480215305825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338482 (A204520 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311785.P15349136480215305825

/-! ## A311785.P10867319195013941394

`∏{e}[3^n, A311786(#)]`
-/

namespace A311785.P10867319195013941394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A311786 (Nat.factorization (f1 n) p)

end

end A311785.P10867319195013941394

/-! ## A311785.P15661411339927464081

`record[A311786(A162350(n))]`
-/

namespace A311785.P15661411339927464081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311786 (A162350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311785.P15661411339927464081

/-! ## A311785.P2946668539528058659

`A355443(A101821(n))+A311786(n)`
-/

namespace A311785.P2946668539528058659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (A101821 n).toNat + A311786 n

end

end A311785.P2946668539528058659

/-! ## A311785.P12476064312206807815

`A311786(n)%A095747(A310207(n))`
-/

namespace A311785.P12476064312206807815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311786 n) (A095747 (A310207 n).toNat)

end

end A311785.P12476064312206807815

/-!
# A311786: Coordination sequence Gal.6.137.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311786, there is no canonical definition to state claims against.
-/

/-! ## A311786.P9023653102382570561

`A311785(n)+A055641(A079016(n+1))`
-/

namespace A311786.P9023653102382570561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311785 n + A055641 (A079016 (n + 1)).toNat

end

end A311786.P9023653102382570561

/-!
# A311787: Coordination sequence Gal.6.402.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311787, there is no canonical definition to state claims against.
-/

/-! ## A311787.P6993303482771905240

`A252736(A080039(n))+A008574(n)`
-/

namespace A311787.P6993303482771905240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A080039 n).toNat + A008574 n

end

end A311787.P6993303482771905240

/-! ## A311787.P7308782990011339047

`A037806(A152682(n+1))+A008574(n)`
-/

namespace A311787.P7308782990011339047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A152682 (n + 1)).toNat + A008574 n

end

end A311787.P7308782990011339047

/-! ## A311787.P10603006525667884102

`A263087(A297901(n+1)+1+n)+4*n`
-/

namespace A311787.P10603006525667884102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263087 (A297901 (n + 1) + 1 + (n : ℤ)).toNat + (4 * n : ℤ)

end

end A311787.P10603006525667884102

/-! ## A311787.P476486364434652249

`A083913(A014137(n))+A008574(n)`
-/

namespace A311787.P476486364434652249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (A014137 n).toNat + A008574 n

end

end A311787.P476486364434652249

/-! ## A311787.P721033734165302861

`A320655(A046058(n+1))+A008586(n)`
-/

namespace A311787.P721033734165302861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A046058 (n + 1)).toNat + A008586 n

end

end A311787.P721033734165302861

/-!
# A311788: Coordination sequence Gal.6.431.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311788, there is no canonical definition to state claims against.
-/

/-! ## A311788.P3008346203360989410

`A311147(n)+A011695(A192921(n))`
-/

namespace A311788.P3008346203360989410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A011695 (A192921 n).toNat

end

end A311788.P3008346203360989410

/-! ## A311788.P979964116938082089

`or(A000035(A137531(n)), A311150(n))`
-/

namespace A311788.P979964116938082089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A137531 n).toNat) (A311150 n)

end

end A311788.P979964116938082089

/-! ## A311788.P14136633783730146830

`or(A011695(A192921(n)), A311152(n))`
-/

namespace A311788.P14136633783730146830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011695 (A192921 n).toNat) (A311152 n)

end

end A311788.P14136633783730146830

/-! ## A311788.P15317636761703485251

`xor(A216501(A354910(n)), A311220(n))`
-/

namespace A311788.P15317636761703485251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A216501 (A354910 n).toNat) (A311220 n)

end

end A311788.P15317636761703485251

/-! ## A311788.P11584341061262925327

`A085516(A312171(n))`
-/

namespace A311788.P11584341061262925327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A312171 n).toNat

end

end A311788.P11584341061262925327

/-!
# A311789: Coordination sequence Gal.6.302.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311789, there is no canonical definition to state claims against.
-/

/-! ## A311789.P2105741631556938935

`A311807(n)-A016389(A129577(n))`
-/

namespace A311789.P2105741631556938935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n - A016389 (A129577 n).toNat

end

end A311789.P2105741631556938935

/-! ## A311789.P15095275359230374205

`xor(A025465(A244725(n)), A311807(n))`
-/

namespace A311789.P15095275359230374205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025465 (A244725 n).toNat) (A311807 n)

end

end A311789.P15095275359230374205

/-! ## A311789.P13227778085522425887

`xor(A216579(A241727(n)), A311807(n))`
-/

namespace A311789.P13227778085522425887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A216579 (A241727 (n + 45)).toNat) (A311807 n)

end

end A311789.P13227778085522425887

/-! ## A311789.P7334030755975762215

`A311816(n)-A124764(A210209(A338246(n)))`
-/

namespace A311789.P7334030755975762215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n - A124764 (A210209 (A338246 n).toNat).toNat

end

end A311789.P7334030755975762215

/-! ## A311789.P9133705464607119194

`A311816(n)-A024692(A000051(n))`
-/

namespace A311789.P9133705464607119194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n - A024692 (A000051 n).toNat

end

end A311789.P9133705464607119194

/-!
# A311790: Coordination sequence Gal.6.183.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311790, there is no canonical definition to state claims against.
-/

/-! ## A311790.P12487506890816480096

`A311791(n)+A178780(A160444(n+1))`
-/

namespace A311790.P12487506890816480096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A178780 (A160444 (n + 1)).toNat

end

end A311790.P12487506890816480096

/-! ## A311790.P15785198862272409899

`A311792(n)+A178780(A160444(n+1))`
-/

namespace A311790.P15785198862272409899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n + A178780 (A160444 (n + 1)).toNat

end

end A311790.P15785198862272409899

/-! ## A311790.P12697559808330362966

`A311791(A062399(n))`
-/

namespace A311790.P12697559808330362966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 (A062399 n).toNat

end

end A311790.P12697559808330362966

/-! ## A311790.P10679547566404563059

`A311791(A120126(n))`
-/

namespace A311790.P10679547566404563059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 (A120126 n).toNat

end

end A311790.P10679547566404563059

/-! ## A311790.P17243757418962301423

`A311791(A351870(n))`
-/

namespace A311790.P17243757418962301423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 (A351870 n).toNat

end

end A311790.P17243757418962301423

/-!
# A311791: Coordination sequence Gal.6.176.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311791, there is no canonical definition to state claims against.
-/

/-! ## A311791.P3015087749085732342

`record[A311792(A106486(n))]`
-/

namespace A311791.P3015087749085732342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 (A106486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311791.P3015087749085732342

/-! ## A311791.P3912376749461934482

`A311792(n)%A014956(2*(n+2))`
-/

namespace A311791.P3912376749461934482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311792 n) (A014956 (2 * (n + 2)))

end

end A311791.P3912376749461934482

/-! ## A311791.P18346336996410599194

`A038500(A001127(n))*A311792(n)`
-/

namespace A311791.P18346336996410599194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A001127 n).toNat * A311792 n

end

end A311791.P18346336996410599194

/-! ## A311791.P13264128706955993822

`A000035(A048581(n))*A311792(n)`
-/

namespace A311791.P13264128706955993822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048581 n).toNat * A311792 n

end

end A311791.P13264128706955993822

/-! ## A311791.P12899334007961292250

`A311792(n)*A329443(A001333(n))`
-/

namespace A311791.P12899334007961292250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n * A329443 (A001333 n).toNat

end

end A311791.P12899334007961292250

/-!
# A311792: Coordination sequence Gal.6.177.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311792, there is no canonical definition to state claims against.
-/

/-! ## A311792.P5833068197291021431

`A311401(n)+A007949(A031153(n+1))`
-/

namespace A311792.P5833068197291021431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311401 n + A007949 (A031153 (n + 1)).toNat

end

end A311792.P5833068197291021431

/-! ## A311792.P2138463045155321069

`A311401(n)+A292438(A337345(A257361(n+1)))`
-/

namespace A311792.P2138463045155321069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311401 n + A292438 (A337345 (A257361 (n + 1)).toNat).toNat

end

end A311792.P2138463045155321069

/-! ## A311792.P18005060659071506881

`xor(A185284(A001950(n+1)), A311791(n))`
-/

namespace A311792.P18005060659071506881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A001950 (n + 1)).toNat) (A311791 n)

end

end A311792.P18005060659071506881

/-! ## A311792.P7533377377195186029

`A311791(n)+A000122(A073305(n))`
-/

namespace A311792.P7533377377195186029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A000122 (A073305 n).toNat

end

end A311792.P7533377377195186029

/-!
# A311793: Coordination sequence Gal.5.162.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311793, there is no canonical definition to state claims against.
-/

/-! ## A311793.P333867399855082942

`A311790(A087051(n))+char[2*n+7]`
-/

namespace A311793.P333867399855082942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 (A087051 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311793.P333867399855082942

/-! ## A311793.P7306559897630927962

`A323077(A005453(n))+A008574(n)`
-/

namespace A311793.P7306559897630927962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (A005453 n).toNat + A008574 n

end

end A311793.P7306559897630927962

/-! ## A311793.P759967888606974792

`A311149(n)+A248639(A301730(3*n))`
-/

namespace A311793.P759967888606974792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311149 n + A248639 (A301730 (3 * n)).toNat

end

end A311793.P759967888606974792

/-! ## A311793.P5260216996398016581

`A311150(n)+A248639(A301730(3*n))`
-/

namespace A311793.P5260216996398016581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311150 n + A248639 (A301730 (3 * n)).toNat

end

end A311793.P5260216996398016581

/-! ## A311793.P12595682101019450341

`A085516(A312172(n))`
-/

namespace A311793.P12595682101019450341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A312172 n).toNat

end

end A311793.P12595682101019450341

/-!
# A311794: Coordination sequence Gal.6.23.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311794, there is no canonical definition to state claims against.
-/

/-! ## A311794.P933579854042720644

`record[and(n+1, A096892(n+2))]`
-/

namespace A311794.P933579854042720644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A096892 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311794.P933579854042720644

/-! ## A311794.P13692706550304303655

`record[and(A345531(n+1), A346129(n+1))]`
-/

namespace A311794.P13692706550304303655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345531 (n + 1)) (A346129 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311794.P13692706550304303655

/-! ## A311794.P9362916499332719626

`eq[1-and(2, n), A080305(A066040(n+5))]`
-/

namespace A311794.P9362916499332719626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (A066040 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311794.P9362916499332719626

/-! ## A311794.P6287837902743552776

`A311143(n)+A257992(A149601(n))`
-/

namespace A311794.P6287837902743552776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311143 n + A257992 (A149601 n).toNat

end

end A311794.P6287837902743552776

/-! ## A311794.P13742427941225192372

`A327222(A316411(n))+A310303(n)`
-/

namespace A311794.P13742427941225192372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (A316411 (n + 10)).toNat + A310303 n

end

end A311794.P13742427941225192372

/-!
# A311795: Coordination sequence Gal.6.117.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311795, there is no canonical definition to state claims against.
-/

/-! ## A311795.P86363434706467537

`A311801(n)-A010051(A147491(n+3))`
-/

namespace A311795.P86363434706467537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n - A010051 (A147491 (n + 3)).toNat

end

end A311795.P86363434706467537

/-! ## A311795.P4757431886813251495

`A311796(n)-A181838(∑[A248227(n+1)])`
-/

namespace A311795.P4757431886813251495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311796 n - A181838 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311795.P4757431886813251495

/-! ## A311795.P13260864856784024131

`A178798(3*n+4)+A311797(n)+A016389(A022166(n))`
-/

namespace A311795.P13260864856784024131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (3 * n + 4) + (A311797 n + A016389 (A022166 n).toNat)

end

end A311795.P13260864856784024131

/-! ## A311795.P17396765035019094865

`A178798(3*n+4)+A311797(n)+A178798(A008459(n))`
-/

namespace A311795.P17396765035019094865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (3 * n + 4) + (A311797 n + A178798 (A008459 n).toNat)

end

end A311795.P17396765035019094865

/-! ## A311795.P12635734087746640006

`or(A008574(n), A299203(A325108(n)))`
-/

namespace A311795.P12635734087746640006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A299203 (A325108 n).toNat)

end

end A311795.P12635734087746640006

/-!
# A311796: Coordination sequence Gal.6.218.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311796, there is no canonical definition to state claims against.
-/

/-! ## A311796.P14025489167927940817

`A003056(A291154(n+1)*A311799(n))`
-/

namespace A311796.P14025489167927940817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A291154 (n + 1) * A311799 n).toNat

end

end A311796.P14025489167927940817

/-! ## A311796.P13645551791341112135

`A311797(n)+A016389(A022166(n))`
-/

namespace A311796.P13645551791341112135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311797 n + A016389 (A022166 n).toNat

end

end A311796.P13645551791341112135

/-! ## A311796.P12117336489100049970

`A311797(n)+A178798(A008459(n))`
-/

namespace A311796.P12117336489100049970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311797 n + A178798 (A008459 n).toNat

end

end A311796.P12117336489100049970

/-! ## A311796.P12018388727198049520

`A311797(n)+A178798(A115292(n))`
-/

namespace A311796.P12018388727198049520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311797 n + A178798 (A115292 n).toNat

end

end A311796.P12018388727198049520

/-! ## A311796.P12021486287586956205

`A093697(A313889(n))`
-/

namespace A311796.P12021486287586956205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A313889 n).toNat

end

end A311796.P12021486287586956205

/-!
# A311797: Coordination sequence Gal.6.116.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311797, there is no canonical definition to state claims against.
-/

/-! ## A311797.P7700088580411249822

`A311796(n)-A014047(A134848(n+1))`
-/

namespace A311797.P7700088580411249822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311796 n - A014047 (A134848 (n + 1)).toNat

end

end A311797.P7700088580411249822

/-! ## A311797.P16486139737328549265

`A311799(n)-A121262(A008956(n))`
-/

namespace A311797.P16486139737328549265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311799 n - A121262 (A008956 n).toNat

end

end A311797.P16486139737328549265

/-! ## A311797.P10576950079064608493

`A003056(A291154(n+1)*A311802(n))`
-/

namespace A311797.P10576950079064608493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A291154 (n + 1) * A311802 n).toNat

end

end A311797.P10576950079064608493

/-! ## A311797.P14959603225266909219

`A311802(n)-A010051(A147491(n+3))`
-/

namespace A311797.P14959603225266909219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311802 n - A010051 (A147491 (n + 3)).toNat

end

end A311797.P14959603225266909219

/-! ## A311797.P15582604102836550330

`A311796(n)-A016389(A022166(n))`
-/

namespace A311797.P15582604102836550330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311796 n - A016389 (A022166 n).toNat

end

end A311797.P15582604102836550330

/-!
# A311798: Coordination sequence Gal.5.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311798, the canonical program `A311798.P17873321092687646606` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311798 has offset 0).

The definition of A311798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311798.P17873321092687646606

`A313026(n)+A313682(n)-A314088(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A311798

/-- `A313026(n)+A313682(n)-A314088(n)` -/
def P17873321092687646606.Spec : Prop :=
  ∀ n, P17873321092687646606.a n = A311798 n

theorem P17873321092687646606.correct : P17873321092687646606.Spec := by
  intro n
  simp only [A311798]

end A311798

/-! ## A311798.P942922869276917054

`A314668(n)-A102460(A000975(n))`
-/

namespace A311798.P942922869276917054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n - A102460 (A000975 n).toNat

end

end A311798.P942922869276917054

namespace A311798

/-- `A314668(n)-A102460(A000975(n))` -/
def P942922869276917054.Spec : Prop :=
  ∀ n, P942922869276917054.a n = A311798 n

end A311798

/-! ## A311798.P13263594205849954047

`A314668(n)-A091225(A027375(n))`
-/

namespace A311798.P13263594205849954047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n - A091225 (A027375 n).toNat

end

end A311798.P13263594205849954047

namespace A311798

/-- `A314668(n)-A091225(A027375(n))` -/
def P13263594205849954047.Spec : Prop :=
  ∀ n, P13263594205849954047.a n = A311798 n

end A311798

/-! ## A311798.P16343699524548695392

`A314668(n)-A010051(A287604(n))`
-/

namespace A311798.P16343699524548695392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n - A010051 (A287604 n).toNat

end

end A311798.P16343699524548695392

namespace A311798

/-- `A314668(n)-A010051(A287604(n))` -/
def P16343699524548695392.Spec : Prop :=
  ∀ n, P16343699524548695392.a n = A311798 n

end A311798

/-! ## A311798.P10474550719717172894

`A314668(n)-A010051(A287629(n))`
-/

namespace A311798.P10474550719717172894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n - A010051 (A287629 n).toNat

end

end A311798.P10474550719717172894

namespace A311798

/-- `A314668(n)-A010051(A287629(n))` -/
def P10474550719717172894.Spec : Prop :=
  ∀ n, P10474550719717172894.a n = A311798 n

end A311798

/-!
# A311799: Coordination sequence Gal.6.217.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311799, there is no canonical definition to state claims against.
-/

/-! ## A311799.P7695054358978346154

`A314669(n)-A204853(A320373(n+3))`
-/

namespace A311799.P7695054358978346154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A204853 (A320373 (n + 3)).toNat

end

end A311799.P7695054358978346154

/-! ## A311799.P10709096323622842136

`A008574(n)+A004216(A034856(A179309(n+1)))`
-/

namespace A311799.P10709096323622842136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004216 (A034856 (A179309 (n + 1)).toNat).toNat

end

end A311799.P10709096323622842136

/-! ## A311799.P8424913240880614676

`A004525(A137735(29*n²)+A008486(n))`
-/

namespace A311799.P8424913240880614676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A137735 (29 * n ^ 2) + A008486 n).toNat

end

end A311799.P8424913240880614676

/-! ## A311799.P13462082075355357005

`A004525(A008486(n)+A000196(29*n²+1))`
-/

namespace A311799.P13462082075355357005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008486 n + A000196 (29 * n ^ 2 + 1)).toNat

end

end A311799.P13462082075355357005

/-! ## A311799.P12093529888044574836

`A311797(n)+A121262(A008956(n))`
-/

namespace A311799.P12093529888044574836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311797 n + A121262 (A008956 n).toNat

end

end A311799.P12093529888044574836

